
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_error_t ;
struct TYPE_4__ {char* created_path; int has_mergeinfo; scalar_t__ mergeinfo_count; int is_fresh_txn_root; int * copyfrom_path; int copyfrom_rev; void* copyroot_path; int copyroot_rev; int id; int predecessor_id; int data_rep; int prop_rep; scalar_t__ predecessor_count; int kind; } ;
typedef TYPE_1__ node_revision_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int HEADER_COPYFROM ;
 int HEADER_COPYROOT ;
 int HEADER_COUNT ;
 int HEADER_CPATH ;
 int HEADER_FRESHTXNRT ;
 int HEADER_ID ;
 int HEADER_MINFO_CNT ;
 int HEADER_MINFO_HERE ;
 int HEADER_PRED ;
 int HEADER_PROPS ;
 int HEADER_TEXT ;
 int HEADER_TYPE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int SVN_FS_FS__KIND_DIR ;
 int SVN_FS_FS__KIND_FILE ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 void* apr_pstrdup (int *,char*) ;
 int parse_revnum (int *,char const**) ;
 int read_header_block (int **,int *,int *) ;
 int read_rep_offsets (int *,char*,int ,int *,int *) ;
 scalar_t__ strcmp (char*,int ) ;
 int svn_cstring_atoi (scalar_t__*,char*) ;
 int svn_cstring_atoi64 (scalar_t__*,char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_fs_fs__id_parse (int *,char*,int *) ;
 int svn_fs_fs__id_rev (int ) ;
 int svn_fspath__is_canonical (char*) ;
 char* svn_hash_gets (int *,int ) ;
 int svn_node_dir ;
 int svn_node_file ;
 int svn_stream_close (int *) ;

svn_error_t *
svn_fs_fs__read_noderev(node_revision_t **noderev_p,
                        svn_stream_t *stream,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  apr_hash_t *headers;
  node_revision_t *noderev;
  char *value;
  const char *noderev_id;

  SVN_ERR(read_header_block(&headers, stream, scratch_pool));

  noderev = apr_pcalloc(result_pool, sizeof(*noderev));


  value = svn_hash_gets(headers, HEADER_ID);
  if (value == ((void*)0))

      return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                              _("Missing id field in node-rev"));

  SVN_ERR(svn_stream_close(stream));

  SVN_ERR(svn_fs_fs__id_parse(&noderev->id, value, result_pool));
  noderev_id = value;


  value = svn_hash_gets(headers, HEADER_TYPE);

  if ((value == ((void*)0)) ||
      ( strcmp(value, SVN_FS_FS__KIND_FILE)
       && strcmp(value, SVN_FS_FS__KIND_DIR)))

    return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                             _("Missing kind field in node-rev '%s'"),
                             noderev_id);

  noderev->kind = (strcmp(value, SVN_FS_FS__KIND_FILE) == 0)
                ? svn_node_file
                : svn_node_dir;


  value = svn_hash_gets(headers, HEADER_COUNT);
  if (value)
    SVN_ERR(svn_cstring_atoi(&noderev->predecessor_count, value));
  else
    noderev->predecessor_count = 0;


  value = svn_hash_gets(headers, HEADER_PROPS);
  if (value)
    {
      SVN_ERR(read_rep_offsets(&noderev->prop_rep, value,
                               noderev->id, result_pool, scratch_pool));
    }


  value = svn_hash_gets(headers, HEADER_TEXT);
  if (value)
    {
      SVN_ERR(read_rep_offsets(&noderev->data_rep, value,
                               noderev->id, result_pool, scratch_pool));
    }


  value = svn_hash_gets(headers, HEADER_CPATH);
  if (value == ((void*)0))
    {
      return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                               _("Missing cpath field in node-rev '%s'"),
                               noderev_id);
    }
  else
    {
      if (!svn_fspath__is_canonical(value))
        return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("Non-canonical cpath field in node-rev '%s'"),
                            noderev_id);

      noderev->created_path = apr_pstrdup(result_pool, value);
    }


  value = svn_hash_gets(headers, HEADER_PRED);
  if (value)
    SVN_ERR(svn_fs_fs__id_parse(&noderev->predecessor_id, value,
                                result_pool));


  value = svn_hash_gets(headers, HEADER_COPYROOT);
  if (value == ((void*)0))
    {
      noderev->copyroot_path = apr_pstrdup(result_pool, noderev->created_path);
      noderev->copyroot_rev = svn_fs_fs__id_rev(noderev->id);
    }
  else
    {
      SVN_ERR(parse_revnum(&noderev->copyroot_rev, (const char **)&value));

      if (!svn_fspath__is_canonical(value))
        return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                                 _("Malformed copyroot line in node-rev '%s'"),
                                 noderev_id);
      noderev->copyroot_path = apr_pstrdup(result_pool, value);
    }


  value = svn_hash_gets(headers, HEADER_COPYFROM);
  if (value == ((void*)0))
    {
      noderev->copyfrom_path = ((void*)0);
      noderev->copyfrom_rev = SVN_INVALID_REVNUM;
    }
  else
    {
      SVN_ERR(parse_revnum(&noderev->copyfrom_rev, (const char **)&value));

      if (*value == 0)
        return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                                 _("Malformed copyfrom line in node-rev '%s'"),
                                 noderev_id);
      noderev->copyfrom_path = apr_pstrdup(result_pool, value);
    }


  value = svn_hash_gets(headers, HEADER_FRESHTXNRT);
  noderev->is_fresh_txn_root = (value != ((void*)0));


  value = svn_hash_gets(headers, HEADER_MINFO_CNT);
  if (value)
    SVN_ERR(svn_cstring_atoi64(&noderev->mergeinfo_count, value));
  else
    noderev->mergeinfo_count = 0;


  value = svn_hash_gets(headers, HEADER_MINFO_HERE);
  noderev->has_mergeinfo = (value != ((void*)0));

  *noderev_p = noderev;

  return SVN_NO_ERROR;
}

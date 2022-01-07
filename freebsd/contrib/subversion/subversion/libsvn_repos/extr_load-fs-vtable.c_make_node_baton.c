
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct revision_baton {TYPE_1__* pb; } ;
struct node_baton {char const* path; int action; char const* copyfrom_path; int copy_source_checksum; int base_checksum; int result_checksum; int copyfrom_rev; int kind; int * pool; struct revision_baton* rb; } ;
typedef enum svn_node_action { ____Placeholder_svn_node_action } svn_node_action ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_2__ {scalar_t__ parent_dir; } ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int SVN_REPOS_DUMPFILE_NODE_ACTION ;
 int SVN_REPOS_DUMPFILE_NODE_COPYFROM_PATH ;
 int SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV ;
 int SVN_REPOS_DUMPFILE_NODE_KIND ;
 int SVN_REPOS_DUMPFILE_NODE_PATH ;
 int SVN_REPOS_DUMPFILE_TEXT_CONTENT_CHECKSUM ;
 int SVN_REPOS_DUMPFILE_TEXT_COPY_SOURCE_CHECKSUM ;
 int SVN_REPOS_DUMPFILE_TEXT_DELTA_BASE_CHECKSUM ;
 int SVN_STR_TO_REV (char const*) ;
 struct node_baton* apr_pcalloc (int *,int) ;
 int strcmp (char const*,char*) ;
 int svn_checksum_md5 ;
 int svn_checksum_parse_hex (int *,int ,char const*,int *) ;
 char* svn_hash_gets (int *,int ) ;
 int svn_node_action_add ;
 int svn_node_action_change ;
 int svn_node_action_delete ;
 int svn_node_action_replace ;
 int svn_node_dir ;
 int svn_node_file ;
 int svn_node_unknown ;
 char* svn_relpath_canonicalize (char const*,int *) ;
 void* svn_relpath_join (scalar_t__,char const*,int *) ;

__attribute__((used)) static svn_error_t *
make_node_baton(struct node_baton **node_baton_p,
                apr_hash_t *headers,
                struct revision_baton *rb,
                apr_pool_t *pool)
{
  struct node_baton *nb = apr_pcalloc(pool, sizeof(*nb));
  const char *val;


  nb->rb = rb;
  nb->pool = pool;
  nb->kind = svn_node_unknown;


  if ((val = svn_hash_gets(headers, SVN_REPOS_DUMPFILE_NODE_PATH)))
  {
    val = svn_relpath_canonicalize(val, pool);
    if (rb->pb->parent_dir)
      nb->path = svn_relpath_join(rb->pb->parent_dir, val, pool);
    else
      nb->path = val;
  }

  if ((val = svn_hash_gets(headers, SVN_REPOS_DUMPFILE_NODE_KIND)))
    {
      if (! strcmp(val, "file"))
        nb->kind = svn_node_file;
      else if (! strcmp(val, "dir"))
        nb->kind = svn_node_dir;
    }

  nb->action = (enum svn_node_action)(-1);
  if ((val = svn_hash_gets(headers, SVN_REPOS_DUMPFILE_NODE_ACTION)))
    {
      if (! strcmp(val, "change"))
        nb->action = svn_node_action_change;
      else if (! strcmp(val, "add"))
        nb->action = svn_node_action_add;
      else if (! strcmp(val, "delete"))
        nb->action = svn_node_action_delete;
      else if (! strcmp(val, "replace"))
        nb->action = svn_node_action_replace;
    }

  nb->copyfrom_rev = SVN_INVALID_REVNUM;
  if ((val = svn_hash_gets(headers, SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV)))
    {
      nb->copyfrom_rev = SVN_STR_TO_REV(val);
    }
  if ((val = svn_hash_gets(headers, SVN_REPOS_DUMPFILE_NODE_COPYFROM_PATH)))
    {
      val = svn_relpath_canonicalize(val, pool);
      if (rb->pb->parent_dir)
        nb->copyfrom_path = svn_relpath_join(rb->pb->parent_dir, val, pool);
      else
        nb->copyfrom_path = val;
    }

  if ((val = svn_hash_gets(headers, SVN_REPOS_DUMPFILE_TEXT_CONTENT_CHECKSUM)))
    {
      SVN_ERR(svn_checksum_parse_hex(&nb->result_checksum, svn_checksum_md5,
                                     val, pool));
    }

  if ((val = svn_hash_gets(headers,
                           SVN_REPOS_DUMPFILE_TEXT_DELTA_BASE_CHECKSUM)))
    {
      SVN_ERR(svn_checksum_parse_hex(&nb->base_checksum, svn_checksum_md5, val,
                                     pool));
    }

  if ((val = svn_hash_gets(headers,
                           SVN_REPOS_DUMPFILE_TEXT_COPY_SOURCE_CHECKSUM)))
    {
      SVN_ERR(svn_checksum_parse_hex(&nb->copy_source_checksum,
                                     svn_checksum_md5, val, pool));
    }




  *node_baton_p = nb;
  return SVN_NO_ERROR;
}

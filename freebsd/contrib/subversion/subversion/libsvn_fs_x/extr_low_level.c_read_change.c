
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ len; char* data; } ;
typedef TYPE_2__ svn_stringbuf_t ;
typedef int svn_stream_t ;
struct TYPE_7__ {char* data; int len; } ;
struct TYPE_9__ {int * copyfrom_path; int copyfrom_rev; void* copyfrom_known; TYPE_1__ path; int mergeinfo_mod; void* prop_mod; void* text_mod; int change_kind; int node_kind; } ;
typedef TYPE_3__ svn_fs_x__change_t ;
typedef int svn_error_t ;
typedef void* svn_boolean_t ;
typedef int apr_pool_t ;


 int ACTION_ADD ;
 int ACTION_DELETE ;
 int ACTION_MODIFY ;
 int ACTION_REPLACE ;
 void* FALSE ;
 int FLAG_FALSE ;
 int FLAG_TRUE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int SVN_FS_X__KIND_DIR ;
 int SVN_FS_X__KIND_FILE ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int _ (char*) ;
 TYPE_3__* apr_pcalloc (int *,int) ;
 char* apr_pstrmemdup (int *,char*,int ) ;
 void* auto_unescape_path (char*,int *) ;
 int parse_revnum (int *,char const**) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlen (char*) ;
 char* svn_cstring_tokenize (char*,char**) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_path_change_add ;
 int svn_fs_path_change_delete ;
 int svn_fs_path_change_modify ;
 int svn_fs_path_change_replace ;
 int svn_fspath__is_canonical (char*) ;
 int svn_node_dir ;
 int svn_node_file ;
 int svn_node_unknown ;
 int svn_stream_readline (int *,TYPE_2__**,char*,void**,int *) ;
 int svn_tristate_false ;
 int svn_tristate_true ;

__attribute__((used)) static svn_error_t *
read_change(svn_fs_x__change_t **change_p,
            svn_stream_t *stream,
            apr_pool_t *result_pool,
            apr_pool_t *scratch_pool)
{
  svn_stringbuf_t *line;
  svn_boolean_t eof = TRUE;
  svn_fs_x__change_t *change;
  char *str, *last_str, *kind_str;


  *change_p = ((void*)0);

  SVN_ERR(svn_stream_readline(stream, &line, "\n", &eof, scratch_pool));


  if (eof || (line->len == 0))
    return SVN_NO_ERROR;

  change = apr_pcalloc(result_pool, sizeof(*change));
  last_str = line->data;


  str = svn_cstring_tokenize(" ", &last_str);
  if (str == ((void*)0))
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("Invalid changes line in rev-file"));



  change->node_kind = svn_node_unknown;
  kind_str = strchr(str, '-');
  if (kind_str)
    {

      *kind_str = '\0';
      kind_str++;
      if (strcmp(kind_str, SVN_FS_X__KIND_FILE) == 0)
        change->node_kind = svn_node_file;
      else if (strcmp(kind_str, SVN_FS_X__KIND_DIR) == 0)
        change->node_kind = svn_node_dir;
      else
        return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                                _("Invalid changes line in rev-file"));
    }

  if (strcmp(str, ACTION_MODIFY) == 0)
    {
      change->change_kind = svn_fs_path_change_modify;
    }
  else if (strcmp(str, ACTION_ADD) == 0)
    {
      change->change_kind = svn_fs_path_change_add;
    }
  else if (strcmp(str, ACTION_DELETE) == 0)
    {
      change->change_kind = svn_fs_path_change_delete;
    }
  else if (strcmp(str, ACTION_REPLACE) == 0)
    {
      change->change_kind = svn_fs_path_change_replace;
    }
  else
    {
      return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                              _("Invalid change kind in rev file"));
    }


  str = svn_cstring_tokenize(" ", &last_str);
  if (str == ((void*)0))
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("Invalid changes line in rev-file"));

  if (strcmp(str, FLAG_TRUE) == 0)
    {
      change->text_mod = TRUE;
    }
  else if (strcmp(str, FLAG_FALSE) == 0)
    {
      change->text_mod = FALSE;
    }
  else
    {
      return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                              _("Invalid text-mod flag in rev-file"));
    }


  str = svn_cstring_tokenize(" ", &last_str);
  if (str == ((void*)0))
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("Invalid changes line in rev-file"));

  if (strcmp(str, FLAG_TRUE) == 0)
    {
      change->prop_mod = TRUE;
    }
  else if (strcmp(str, FLAG_FALSE) == 0)
    {
      change->prop_mod = FALSE;
    }
  else
    {
      return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                              _("Invalid prop-mod flag in rev-file"));
    }


  str = svn_cstring_tokenize(" ", &last_str);
  if (str == ((void*)0))
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("Invalid changes line in rev-file"));

  if (strcmp(str, FLAG_TRUE) == 0)
    {
      change->mergeinfo_mod = svn_tristate_true;
    }
  else if (strcmp(str, FLAG_FALSE) == 0)
    {
      change->mergeinfo_mod = svn_tristate_false;
    }
  else
    {
      return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                              _("Invalid mergeinfo-mod flag in rev-file"));
    }


  if (!svn_fspath__is_canonical(last_str))
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("Invalid path in changes line"));

  change->path.data = auto_unescape_path(apr_pstrmemdup(result_pool,
                                                        last_str,
                                                        strlen(last_str)),
                                         result_pool);
  change->path.len = strlen(change->path.data);


  SVN_ERR(svn_stream_readline(stream, &line, "\n", &eof, result_pool));
  change->copyfrom_known = TRUE;
  if (eof || line->len == 0)
    {
      change->copyfrom_rev = SVN_INVALID_REVNUM;
      change->copyfrom_path = ((void*)0);
    }
  else
    {
      last_str = line->data;
      SVN_ERR(parse_revnum(&change->copyfrom_rev, (const char **)&last_str));

      if (!svn_fspath__is_canonical(last_str))
        return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                                _("Invalid copy-from path in changes line"));

      change->copyfrom_path = auto_unescape_path(last_str, result_pool);
    }

  *change_p = change;

  return SVN_NO_ERROR;
}

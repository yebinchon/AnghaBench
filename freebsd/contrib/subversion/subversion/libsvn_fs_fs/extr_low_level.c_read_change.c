
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ len; char* data; } ;
typedef TYPE_2__ svn_stringbuf_t ;
typedef int svn_stream_t ;
struct TYPE_10__ {int * copyfrom_path; int copyfrom_rev; void* copyfrom_known; int mergeinfo_mod; void* prop_mod; void* text_mod; int change_kind; int node_kind; int * node_rev_id; } ;
typedef TYPE_3__ svn_fs_path_change2_t ;
typedef int svn_error_t ;
typedef void* svn_boolean_t ;
struct TYPE_8__ {void* data; int len; } ;
struct TYPE_11__ {TYPE_1__ path; TYPE_3__ info; } ;
typedef TYPE_4__ change_t ;
typedef int apr_pool_t ;


 int ACTION_ADD ;
 int ACTION_DELETE ;
 int ACTION_MODIFY ;
 int ACTION_REPLACE ;
 int ACTION_RESET ;
 void* FALSE ;
 int FLAG_FALSE ;
 int FLAG_TRUE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int SVN_FS_FS__KIND_DIR ;
 int SVN_FS_FS__KIND_FILE ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int _ (char*) ;
 TYPE_4__* apr_pcalloc (int *,int) ;
 void* apr_pstrdup (int *,char*) ;
 int parse_revnum (int *,char const**) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlen (char*) ;
 char* svn_cstring_tokenize (char*,char**) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_fs__id_parse (int **,char*,int *) ;
 int svn_fs_path_change_add ;
 int svn_fs_path_change_delete ;
 int svn_fs_path_change_modify ;
 int svn_fs_path_change_replace ;
 int svn_fs_path_change_reset ;
 int svn_fspath__is_canonical (char*) ;
 int svn_node_dir ;
 int svn_node_file ;
 int svn_node_unknown ;
 int svn_stream_readline (int *,TYPE_2__**,char*,void**,int *) ;
 int svn_tristate_false ;
 int svn_tristate_true ;
 int svn_tristate_unknown ;

__attribute__((used)) static svn_error_t *
read_change(change_t **change_p,
            svn_stream_t *stream,
            apr_pool_t *result_pool,
            apr_pool_t *scratch_pool)
{
  svn_stringbuf_t *line;
  svn_boolean_t eof = TRUE;
  change_t *change;
  char *str, *last_str, *kind_str;
  svn_fs_path_change2_t *info;


  *change_p = ((void*)0);

  SVN_ERR(svn_stream_readline(stream, &line, "\n", &eof, scratch_pool));


  if (eof || (line->len == 0))
    return SVN_NO_ERROR;

  change = apr_pcalloc(result_pool, sizeof(*change));
  info = &change->info;
  last_str = line->data;


  str = svn_cstring_tokenize(" ", &last_str);
  if (str == ((void*)0))
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("Invalid changes line in rev-file"));

  SVN_ERR(svn_fs_fs__id_parse(&info->node_rev_id, str, result_pool));
  if (info->node_rev_id == ((void*)0))
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("Invalid changes line in rev-file"));


  str = svn_cstring_tokenize(" ", &last_str);
  if (str == ((void*)0))
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("Invalid changes line in rev-file"));



  info->node_kind = svn_node_unknown;
  kind_str = strchr(str, '-');
  if (kind_str)
    {

      *kind_str = '\0';
      kind_str++;
      if (strcmp(kind_str, SVN_FS_FS__KIND_FILE) == 0)
        info->node_kind = svn_node_file;
      else if (strcmp(kind_str, SVN_FS_FS__KIND_DIR) == 0)
        info->node_kind = svn_node_dir;
      else
        return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                                _("Invalid changes line in rev-file"));
    }

  if (strcmp(str, ACTION_MODIFY) == 0)
    {
      info->change_kind = svn_fs_path_change_modify;
    }
  else if (strcmp(str, ACTION_ADD) == 0)
    {
      info->change_kind = svn_fs_path_change_add;
    }
  else if (strcmp(str, ACTION_DELETE) == 0)
    {
      info->change_kind = svn_fs_path_change_delete;
    }
  else if (strcmp(str, ACTION_REPLACE) == 0)
    {
      info->change_kind = svn_fs_path_change_replace;
    }
  else if (strcmp(str, ACTION_RESET) == 0)
    {
      info->change_kind = svn_fs_path_change_reset;
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
      info->text_mod = TRUE;
    }
  else if (strcmp(str, FLAG_FALSE) == 0)
    {
      info->text_mod = FALSE;
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
      info->prop_mod = TRUE;
    }
  else if (strcmp(str, FLAG_FALSE) == 0)
    {
      info->prop_mod = FALSE;
    }
  else
    {
      return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                              _("Invalid prop-mod flag in rev-file"));
    }




  info->mergeinfo_mod = svn_tristate_unknown;
  if (*last_str != '/')
    {
      str = svn_cstring_tokenize(" ", &last_str);
      if (str == ((void*)0))
        return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                                _("Invalid changes line in rev-file"));

      if (strcmp(str, FLAG_TRUE) == 0)
        {
          info->mergeinfo_mod = svn_tristate_true;
        }
      else if (strcmp(str, FLAG_FALSE) == 0)
        {
          info->mergeinfo_mod = svn_tristate_false;
        }
      else
        {
          return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                              _("Invalid mergeinfo-mod flag in rev-file"));
        }
    }


  if (!svn_fspath__is_canonical(last_str))
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("Invalid path in changes line"));

  change->path.len = strlen(last_str);
  change->path.data = apr_pstrdup(result_pool, last_str);


  SVN_ERR(svn_stream_readline(stream, &line, "\n", &eof, scratch_pool));
  info->copyfrom_known = TRUE;
  if (eof || line->len == 0)
    {
      info->copyfrom_rev = SVN_INVALID_REVNUM;
      info->copyfrom_path = ((void*)0);
    }
  else
    {
      last_str = line->data;
      SVN_ERR(parse_revnum(&info->copyfrom_rev, (const char **)&last_str));

      if (!svn_fspath__is_canonical(last_str))
        return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                                _("Invalid copy-from path in changes line"));

      info->copyfrom_path = apr_pstrdup(result_pool, last_str);
    }

  *change_p = change;

  return SVN_NO_ERROR;
}

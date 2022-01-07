
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int current_line; int write_baton; int write; TYPE_2__* read_baton; int seek; int tell; int readline; int existed; int keywords; void* hunks; void* lines; int eol_style; } ;
typedef TYPE_1__ target_content_t ;
typedef int svn_wc_context_t ;
typedef int svn_string_t ;
typedef int svn_error_t ;
typedef int svn_diff_operation_kind_t ;
struct TYPE_8__ {scalar_t__ offset; int const* value; } ;
typedef TYPE_2__ prop_read_baton_t ;
struct TYPE_9__ {int patched_value; int const* value; TYPE_1__* content; int operation; int name; } ;
typedef TYPE_3__ prop_patch_target_t ;
struct TYPE_10__ {scalar_t__ db_kind; scalar_t__ deleted; } ;
typedef TYPE_4__ patch_target_t ;
typedef int hunk_info_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 void* apr_array_make (int *,int ,int) ;
 int apr_hash_make (int *) ;
 void* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int readline_prop ;
 int seek_prop ;
 scalar_t__ svn_node_none ;
 int svn_stringbuf_create_empty (int *) ;
 int svn_subst_eol_style_none ;
 int svn_wc_prop_get2 (int const**,int *,char const*,char const*,int *,int *) ;
 int tell_prop ;
 int write_prop ;

__attribute__((used)) static svn_error_t *
init_prop_target(prop_patch_target_t **prop_target,
                 const patch_target_t *target,
                 const char *prop_name,
                 svn_diff_operation_kind_t operation,
                 svn_wc_context_t *wc_ctx,
                 const char *local_abspath,
                 apr_pool_t *result_pool, apr_pool_t *scratch_pool)
{
  prop_patch_target_t *new_prop_target;
  target_content_t *content;
  const svn_string_t *value;
  prop_read_baton_t *prop_read_baton;

  content = apr_pcalloc(result_pool, sizeof(*content));


  content->current_line = 1;
  content->eol_style = svn_subst_eol_style_none;
  content->lines = apr_array_make(result_pool, 0, sizeof(apr_off_t));
  content->hunks = apr_array_make(result_pool, 0, sizeof(hunk_info_t *));
  content->keywords = apr_hash_make(result_pool);

  new_prop_target = apr_pcalloc(result_pool, sizeof(*new_prop_target));
  new_prop_target->name = apr_pstrdup(result_pool, prop_name);
  new_prop_target->operation = operation;
  new_prop_target->content = content;

  if (!(target->deleted || target->db_kind == svn_node_none))
    SVN_ERR(svn_wc_prop_get2(&value, wc_ctx, local_abspath, prop_name,
                             result_pool, scratch_pool));
  else
    value = ((void*)0);

  content->existed = (value != ((void*)0));
  new_prop_target->value = value;
  new_prop_target->patched_value = svn_stringbuf_create_empty(result_pool);



  prop_read_baton = apr_pcalloc(result_pool, sizeof(*prop_read_baton));
  prop_read_baton->value = value;
  prop_read_baton->offset = 0;
  content->readline = readline_prop;
  content->tell = tell_prop;
  content->seek = seek_prop;
  content->read_baton = prop_read_baton;
  content->write = write_prop;
  content->write_baton = new_prop_target->patched_value;

  *prop_target = new_prop_target;

  return SVN_NO_ERROR;
}

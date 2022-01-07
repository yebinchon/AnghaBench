
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct path_driver_cb_baton {TYPE_1__* editor; scalar_t__ is_move; int action_hash; } ;
struct TYPE_5__ {scalar_t__ src_kind; scalar_t__ externals; scalar_t__ mergeinfo; int src_revnum; int * src_url; int only_pin_externals; int src_path; scalar_t__ resurrection; scalar_t__ dir_add; } ;
typedef TYPE_2__ path_driver_info_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {int * (* change_dir_prop ) (void*,int ,scalar_t__,int *) ;int * (* open_directory ) (char const*,void*,int ,int *,void**) ;int * (* add_directory ) (char const*,void*,int *,int ,int *,void**) ;int * (* close_file ) (void*,int *,int *) ;int * (* change_file_prop ) (void*,int ,scalar_t__,int *) ;int * (* add_file ) (char const*,void*,int *,int ,int *,void**) ;int * (* delete_entry ) (char const*,int ,void*,int *) ;} ;


 int FALSE ;
 int SVN_ERR (int *) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_EXTERNALS ;
 int SVN_PROP_MERGEINFO ;
 int TRUE ;
 scalar_t__ strcmp (int ,char const*) ;
 int * stub1 (char const*,void*,int *,int ,int *,void**) ;
 int * stub2 (char const*,int ,void*,int *) ;
 int * stub3 (char const*,void*,int *,int ,int *,void**) ;
 int * stub4 (void*,int ,scalar_t__,int *) ;
 int * stub5 (void*,int *,int *) ;
 int * stub6 (char const*,void*,int *,int ,int *,void**) ;
 int * stub7 (void*,int ,scalar_t__,int *) ;
 int * stub8 (char const*,void*,int ,int *,void**) ;
 int * stub9 (void*,int ,scalar_t__,int *) ;
 TYPE_2__* svn_hash_gets (int ,char const*) ;
 scalar_t__ svn_node_file ;
 int * svn_path_check_valid (char const*,int *) ;
 int svn_path_is_empty (char const*) ;

__attribute__((used)) static svn_error_t *
path_driver_cb_func(void **dir_baton,
                    void *parent_baton,
                    void *callback_baton,
                    const char *path,
                    apr_pool_t *pool)
{
  struct path_driver_cb_baton *cb_baton = callback_baton;
  svn_boolean_t do_delete = FALSE, do_add = FALSE;
  path_driver_info_t *path_info = svn_hash_gets(cb_baton->action_hash, path);


  *dir_baton = ((void*)0);




  SVN_ERR_ASSERT(! svn_path_is_empty(path));


  if (path_info->dir_add)
    {
      return cb_baton->editor->add_directory(path, parent_baton, ((void*)0),
                                             SVN_INVALID_REVNUM, pool,
                                             dir_baton);
    }



  if (path_info->resurrection)
    {

      if (! cb_baton->is_move)
        do_add = TRUE;
    }

  else
    {


      if (cb_baton->is_move)
        {
          if (strcmp(path_info->src_path, path) == 0)
            do_delete = TRUE;
          else
            do_add = TRUE;
        }

      else
        {
          do_add = !path_info->only_pin_externals;
        }
    }

  if (do_delete)
    {
      SVN_ERR(cb_baton->editor->delete_entry(path, SVN_INVALID_REVNUM,
                                             parent_baton, pool));
    }
  if (do_add)
    {
      SVN_ERR(svn_path_check_valid(path, pool));

      if (path_info->src_kind == svn_node_file)
        {
          void *file_baton;
          SVN_ERR(cb_baton->editor->add_file(path, parent_baton,
                                             path_info->src_url,
                                             path_info->src_revnum,
                                             pool, &file_baton));
          if (path_info->mergeinfo)
            SVN_ERR(cb_baton->editor->change_file_prop(file_baton,
                                                       SVN_PROP_MERGEINFO,
                                                       path_info->mergeinfo,
                                                       pool));
          SVN_ERR(cb_baton->editor->close_file(file_baton, ((void*)0), pool));
        }
      else
        {
          SVN_ERR(cb_baton->editor->add_directory(path, parent_baton,
                                                  path_info->src_url,
                                                  path_info->src_revnum,
                                                  pool, dir_baton));
          if (path_info->mergeinfo)
            SVN_ERR(cb_baton->editor->change_dir_prop(*dir_baton,
                                                      SVN_PROP_MERGEINFO,
                                                      path_info->mergeinfo,
                                                      pool));
        }
    }

  if (path_info->externals)
    {
      if (*dir_baton == ((void*)0))
        SVN_ERR(cb_baton->editor->open_directory(path, parent_baton,
                                                 SVN_INVALID_REVNUM,
                                                 pool, dir_baton));

      SVN_ERR(cb_baton->editor->change_dir_prop(*dir_baton, SVN_PROP_EXTERNALS,
                                                path_info->externals, pool));
    }

  return SVN_NO_ERROR;
}

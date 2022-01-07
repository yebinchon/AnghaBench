
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_node_kind_t ;
typedef int svn_magic__cookie_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int notify_baton2; int notify_func2; int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_BOOLEAN_TRUE ;
 int SVN_PROP_SPECIAL ;
 int * apr_hash_make (int *) ;
 int svn_client__get_all_auto_props (int **,int ,TYPE_1__*,int *,int *) ;
 int svn_client__get_paths_auto_props (int **,char const**,char const*,int *,int *,TYPE_1__*,int *,int *) ;
 int svn_dirent_dirname (char const*,int *) ;
 int svn_hash_sets (int *,int ,int ) ;
 int svn_io_check_special_path (char const*,int *,scalar_t__*,int *) ;
 int svn_string_create (int ,int *) ;
 int svn_wc_add_from_disk3 (int ,char const*,int *,int ,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
add_file(const char *local_abspath,
         svn_magic__cookie_t *magic_cookie,
         apr_hash_t *autoprops,
         svn_boolean_t no_autoprops,
         svn_client_ctx_t *ctx,
         apr_pool_t *pool)
{
  apr_hash_t *properties;
  const char *mimetype;
  svn_node_kind_t kind;
  svn_boolean_t is_special;


  SVN_ERR(svn_io_check_special_path(local_abspath, &kind, &is_special, pool));


  if (is_special)
    {
      mimetype = ((void*)0);
      properties = apr_hash_make(pool);
      svn_hash_sets(properties, SVN_PROP_SPECIAL,
                    svn_string_create(SVN_PROP_BOOLEAN_TRUE, pool));
    }
  else
    {
      apr_hash_t *file_autoprops = ((void*)0);





      if (!no_autoprops)
        {
          if (autoprops == ((void*)0))
            SVN_ERR(svn_client__get_all_auto_props(
              &file_autoprops, svn_dirent_dirname(local_abspath,pool),
              ctx, pool, pool));
          else
            file_autoprops = autoprops;
        }



      SVN_ERR(svn_client__get_paths_auto_props(&properties, &mimetype,
                                               local_abspath, magic_cookie,
                                               file_autoprops, ctx, pool,
                                               pool));
    }


  SVN_ERR(svn_wc_add_from_disk3(ctx->wc_ctx, local_abspath, properties,
                                FALSE ,
                                ctx->notify_func2, ctx->notify_baton2, pool));

  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
struct TYPE_4__ {char** (* get_schemes ) (int *) ;int (* get_description ) (int *) ;int (* get_version ) () ;} ;
typedef TYPE_1__ svn_ra__vtable_t ;
typedef int (* svn_ra__init_func_t ) (int ,TYPE_1__ const**,int *) ;
typedef int svn_error_t ;
struct ra_lib_defn {int * ra_name; int (* initfunc ) (int ,TYPE_1__ const**,int *) ;} ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* apr_psprintf (int *,char*,char const* const,...) ;
 int check_ra_version (int ,int *) ;
 int load_ra_module (int (*) (int ,TYPE_1__ const**,int *),int *,int *,int *) ;
 struct ra_lib_defn* ra_libraries ;
 int stub1 () ;
 int stub2 (int *) ;
 char** stub3 (int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_ra_version () ;
 int svn_stringbuf_appendcstr (int *,char*) ;

svn_error_t *
svn_ra_print_modules(svn_stringbuf_t *output,
                     apr_pool_t *pool)
{
  const struct ra_lib_defn *defn;
  const char * const *schemes;
  svn_ra__init_func_t initfunc;
  const svn_ra__vtable_t *vtable;
  apr_pool_t *iterpool = svn_pool_create(pool);

  for (defn = ra_libraries; defn->ra_name != ((void*)0); ++defn)
    {
      char *line;

      svn_pool_clear(iterpool);

      initfunc = defn->initfunc;
      if (! initfunc)
        SVN_ERR(load_ra_module(&initfunc, ((void*)0), defn->ra_name,
                               iterpool));

      if (initfunc)
        {
          SVN_ERR(initfunc(svn_ra_version(), &vtable, iterpool));

          SVN_ERR(check_ra_version(vtable->get_version(), defn->ra_name));




          line = apr_psprintf(iterpool, "* ra_%s : %s\n",
                              defn->ra_name,
                              vtable->get_description(iterpool));
          svn_stringbuf_appendcstr(output, line);

          for (schemes = vtable->get_schemes(iterpool); *schemes != ((void*)0);
               ++schemes)
            {
              line = apr_psprintf(iterpool, _("  - handles '%s' scheme\n"),
                                  *schemes);
              svn_stringbuf_appendcstr(output, line);
            }
        }
    }

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}

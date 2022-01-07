
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* get_version ) () ;} ;
typedef TYPE_1__ svn_ra_plugin_t ;
typedef int (* svn_ra_init_func_t ) (int ,int *,int *) ;
typedef int svn_error_t ;
struct ra_lib_defn {int * ra_name; int (* compat_initfunc ) (int ,int *,int *) ;int schemes; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_RA_ILLEGAL_URL ;
 int SVN_RA_ABI_VERSION ;
 int _ (char*) ;
 int * apr_hash_make (int *) ;
 int * check_ra_version (int ,char const*) ;
 char* has_scheme_of (int ,char const*) ;
 int load_ra_module (int *,int (*) (int ,int *,int *),int *,int *) ;
 struct ra_lib_defn* ra_libraries ;
 int stub1 () ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 TYPE_1__* svn_hash_gets (int *,char const*) ;

svn_error_t *
svn_ra_get_ra_library(svn_ra_plugin_t **library,
                      void *ra_baton,
                      const char *url,
                      apr_pool_t *pool)
{
  const struct ra_lib_defn *defn;
  apr_pool_t *load_pool = ra_baton;
  apr_hash_t *ht = apr_hash_make(pool);


  for (defn = ra_libraries; defn->ra_name != ((void*)0); ++defn)
    {
      const char *scheme;
      if ((scheme = has_scheme_of(defn->schemes, url)))
        {
          svn_ra_init_func_t compat_initfunc = defn->compat_initfunc;

          if (! compat_initfunc)
            {
              SVN_ERR(load_ra_module
                      (((void*)0), &compat_initfunc, defn->ra_name, load_pool));
            }
          if (! compat_initfunc)
            {
              continue;
            }

          SVN_ERR(compat_initfunc(SVN_RA_ABI_VERSION, load_pool, ht));

          *library = svn_hash_gets(ht, scheme);



          if (! *library)
            break;

          return check_ra_version((*library)->get_version(), scheme);
        }
    }


  *library = ((void*)0);
  return svn_error_createf(SVN_ERR_RA_ILLEGAL_URL, ((void*)0),
                           _("Unrecognized URL scheme '%s'"), url);
}

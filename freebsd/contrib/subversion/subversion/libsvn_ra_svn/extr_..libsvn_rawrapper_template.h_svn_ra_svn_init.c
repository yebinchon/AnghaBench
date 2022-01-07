
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_ra__vtable_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_2__ {char** (* get_schemes ) (int *) ;int (* get_version ) () ;} ;


 int APR_HASH_KEY_STRING ;
 int INITFUNC (int ,int const**,int *) ;
 int NAME ;
 int SVN_ERR (int ) ;
 int SVN_ERR_RA_UNSUPPORTED_ABI_VERSION ;
 int * SVN_NO_ERROR ;
 int SVN_RA_ABI_VERSION ;
 TYPE_1__ VTBL ;
 int _ (char*) ;
 int apr_hash_set (int *,char const* const,int ,int *) ;
 int compat_plugin ;
 int stub1 () ;
 char** stub2 (int *) ;
 int * svn_error_createf (int ,int *,int ,int,int ) ;

svn_error_t *
COMPAT_INITFUNC(int abi_version,
                apr_pool_t *pool,
                apr_hash_t *hash)
{
  const svn_ra__vtable_t *vtable;
  const char * const * schemes;

  if (abi_version < 1
      || abi_version > SVN_RA_ABI_VERSION)
    return svn_error_createf(SVN_ERR_RA_UNSUPPORTED_ABI_VERSION, ((void*)0),
                             _("Unsupported RA plugin ABI version (%d) "
                               "for %s"), abi_version, NAME);




  SVN_ERR(INITFUNC(VTBL.get_version(), &vtable, pool));

  schemes = VTBL.get_schemes(pool);

  for (; *schemes != ((void*)0); ++schemes)
    apr_hash_set(hash, *schemes, APR_HASH_KEY_STRING, &compat_plugin);

  return SVN_NO_ERROR;
}

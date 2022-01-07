
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int RA_SERF_DESCRIPTION_VER ;
 int SERF_MAJOR_VERSION ;
 int SERF_MINOR_VERSION ;
 int SERF_PATCH_VERSION ;
 int _ (int ) ;
 char const* apr_psprintf (int *,int ,int,int,int,int ,int ,int ) ;
 int serf_lib_version (int*,int*,int*) ;

__attribute__((used)) static const char *
ra_serf_get_description(apr_pool_t *pool)
{
  int major, minor, patch;

  serf_lib_version(&major, &minor, &patch);
  return apr_psprintf(pool, _(RA_SERF_DESCRIPTION_VER),
                      major, minor, patch,
                      SERF_MAJOR_VERSION,
                      SERF_MINOR_VERSION,
                      SERF_PATCH_VERSION
                      );
}

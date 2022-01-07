
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ major; } ;
typedef TYPE_1__ svn_version_t ;
struct TYPE_6__ {char* member_0; int * member_1; } ;
typedef TYPE_2__ svn_version_checklist_t ;
typedef int svn_ra__vtable_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SERF_MAJOR_VERSION ;
 int SERF_MINOR_VERSION ;
 int SERF_PATCH_VERSION ;
 int SVN_ERR (int ) ;
 int SVN_ERR_VERSION_MISMATCH ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN_VER_MAJOR ;
 int _ (char*) ;
 int ra_serf_version () ;
 int serf_lib_version (int*,int*,int*) ;
 int serf_vtable ;

 int * svn_error_createf (int ,int *,int ,int,...) ;

 int svn_ver_check_list2 (int ,TYPE_2__ const*,int ) ;
 int svn_ver_equal ;

svn_error_t *
svn_ra_serf__init(const svn_version_t *loader_version,
                  const svn_ra__vtable_t **vtable,
                  apr_pool_t *pool)
{
  static const svn_version_checklist_t checklist[] =
    {
      { "svn_subr", 128 },
      { "svn_delta", 129 },
      { ((void*)0), ((void*)0) }
    };
  int serf_major;
  int serf_minor;
  int serf_patch;

  SVN_ERR(svn_ver_check_list2(ra_serf_version(), checklist, svn_ver_equal));



  if (loader_version->major != SVN_VER_MAJOR)
    {
      return svn_error_createf(
         SVN_ERR_VERSION_MISMATCH, ((void*)0),
         _("Unsupported RA loader version (%d) for ra_serf"),
         loader_version->major);
    }




  serf_lib_version(&serf_major, &serf_minor, &serf_patch);
  if (serf_major != SERF_MAJOR_VERSION
      || serf_minor < SERF_MINOR_VERSION)
    {
      return svn_error_createf(

         SVN_ERR_VERSION_MISMATCH, ((void*)0),
         _("ra_serf was compiled for serf %d.%d.%d but loaded "
           "an incompatible %d.%d.%d library"),
         SERF_MAJOR_VERSION, SERF_MINOR_VERSION, SERF_PATCH_VERSION,
         serf_major, serf_minor, serf_patch);
    }

  *vtable = &serf_vtable;

  return SVN_NO_ERROR;
}

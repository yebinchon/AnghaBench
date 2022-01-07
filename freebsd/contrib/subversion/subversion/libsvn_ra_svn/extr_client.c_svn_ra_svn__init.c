
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


 int SVN_ERR (int ) ;
 int SVN_ERR_VERSION_MISMATCH ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN_VER_MAJOR ;
 int _ (char*) ;
 int ra_svn_vtable ;

 int * svn_error_createf (int ,int *,int ,scalar_t__) ;
 int svn_ra_svn__sasl_init () ;
 int svn_ra_svn_version () ;

 int svn_ver_check_list2 (int ,TYPE_2__ const*,int ) ;
 int svn_ver_equal ;

svn_error_t *
svn_ra_svn__init(const svn_version_t *loader_version,
                 const svn_ra__vtable_t **vtable,
                 apr_pool_t *pool)
{
  static const svn_version_checklist_t checklist[] =
    {
      { "svn_subr", 128 },
      { "svn_delta", 129 },
      { ((void*)0), ((void*)0) }
    };

  SVN_ERR(svn_ver_check_list2(svn_ra_svn_version(), checklist, svn_ver_equal));



  if (loader_version->major != SVN_VER_MAJOR)
    {
      return svn_error_createf
        (SVN_ERR_VERSION_MISMATCH, ((void*)0),
         _("Unsupported RA loader version (%d) for ra_svn"),
         loader_version->major);
    }

  *vtable = &ra_svn_vtable;





  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_version_t ;
typedef int svn_version_checklist_t ;
typedef int svn_error_t ;


 int * svn_ver_check_list2 (int const*,int const*,int ) ;
 int svn_ver_compatible ;

svn_error_t *
svn_ver_check_list(const svn_version_t *my_version,
                   const svn_version_checklist_t *checklist)
{
  return svn_ver_check_list2(my_version, checklist, svn_ver_compatible);
}

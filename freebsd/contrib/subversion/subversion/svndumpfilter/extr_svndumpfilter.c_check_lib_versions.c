
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; int * member_1; } ;
typedef TYPE_1__ svn_version_checklist_t ;
typedef int svn_error_t ;


 int SVN_VERSION_DEFINE (int ) ;
 int my_version ;



 int * svn_ver_check_list2 (int *,TYPE_1__ const*,int ) ;
 int svn_ver_equal ;

__attribute__((used)) static svn_error_t *
check_lib_versions(void)
{
  static const svn_version_checklist_t checklist[] =
    {
      { "svn_subr", 128 },
      { "svn_repos", 129 },
      { "svn_delta", 130 },
      { ((void*)0), ((void*)0) }
    };
  SVN_VERSION_DEFINE(my_version);

  return svn_ver_check_list2(&my_version, checklist, svn_ver_equal);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ major; scalar_t__ minor; scalar_t__ patch; int tag; } ;
typedef TYPE_1__ svn_version_t ;
typedef int svn_boolean_t ;


 scalar_t__ strcmp (int ,int ) ;

svn_boolean_t svn_ver_equal(const svn_version_t *my_version,
                            const svn_version_t *lib_version)
{
  return (my_version->major == lib_version->major
          && my_version->minor == lib_version->minor
          && my_version->patch == lib_version->patch
          && 0 == strcmp(my_version->tag, lib_version->tag));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* tag; scalar_t__ major; scalar_t__ minor; scalar_t__ patch; } ;
typedef TYPE_1__ svn_version_t ;
typedef int svn_boolean_t ;


 int svn_ver_equal (TYPE_1__ const*,TYPE_1__ const*) ;

svn_boolean_t svn_ver_compatible(const svn_version_t *my_version,
                                 const svn_version_t *lib_version)
{
  if (lib_version->tag[0] != '\0')

    return svn_ver_equal(my_version, lib_version);
  else if (my_version->tag[0] != '\0')


    return (my_version->major == lib_version->major
            && my_version->minor == lib_version->minor
            && my_version->patch > lib_version->patch);



  return (my_version->major == lib_version->major
          && my_version->minor <= lib_version->minor);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int major; int minor; } ;
typedef TYPE_1__ svn_version_t ;



__attribute__((used)) static void
add_compatility(svn_version_t *version,
                int compat_major,
                int compat_minor)
{
  if ( version->major > compat_major
      || (version->major == compat_major && version->minor > compat_minor))
    {
      version->major = compat_major;
      version->minor = compat_minor;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_version_t ;
struct TYPE_2__ {int const* (* get_version ) () ;} ;


 TYPE_1__ VTBL ;
 int const* stub1 () ;

__attribute__((used)) static const svn_version_t *compat_get_version(void)
{
  return VTBL.get_version();
}

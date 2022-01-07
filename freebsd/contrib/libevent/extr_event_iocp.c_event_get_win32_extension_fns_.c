
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct win32_extension_fns {int dummy; } ;


 struct win32_extension_fns const the_extension_fns ;

const struct win32_extension_fns *
event_get_win32_extension_fns_(void)
{
 return &the_extension_fns;
}

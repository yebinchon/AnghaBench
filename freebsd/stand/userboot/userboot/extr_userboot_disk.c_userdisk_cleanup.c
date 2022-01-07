
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int ) ;
 int ud_info ;
 scalar_t__ userdisk_maxunit ;

__attribute__((used)) static void
userdisk_cleanup(void)
{

 if (userdisk_maxunit > 0)
  free(ud_info);
}

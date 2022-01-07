
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;


 scalar_t__ PLATFORM_SYS_DIR_UID ;

int
platform_sys_dir_uid(uid_t uid)
{
 if (uid == 0)
  return 1;




 return 0;
}

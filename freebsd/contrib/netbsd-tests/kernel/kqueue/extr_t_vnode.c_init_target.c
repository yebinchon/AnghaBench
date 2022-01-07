
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int S_IRWXU ;
 int dir_target ;
 scalar_t__ mkdir (int ,int ) ;
 int open (int ,int ,int ) ;
 int target ;

int
init_target(void)
{
 if (mkdir(dir_target, S_IRWXU) < 0) {
  return -1;
 }
 target = open(dir_target, O_RDONLY, 0);
 return target;
}

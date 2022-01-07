
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gid_t ;


 int EINVAL ;
 int errno ;

int
getgroups(int gidsetlen, gid_t *gidset)
{
 if (gidsetlen < 2) {
  errno = EINVAL;
  return -1;
 }

 gidset[0] = 100;
 gidset[1] = 0;
 return 2;
}

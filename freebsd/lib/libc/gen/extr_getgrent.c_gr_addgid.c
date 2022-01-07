
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gid_t ;


 int MIN (int,int) ;

__attribute__((used)) static int
gr_addgid(gid_t gid, gid_t *groups, int maxgrp, int *grpcnt)
{
 int ret, dupc;

 for (dupc = 1; dupc < MIN(maxgrp, *grpcnt); dupc++) {
  if (groups[dupc] == gid)
   return 1;
 }

 ret = 1;
 if (*grpcnt < maxgrp)
  groups[*grpcnt] = gid;
 else
  ret = 0;

 (*grpcnt)++;

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ibv_gid {int* raw; } ;



__attribute__((used)) static int null_gid(union ibv_gid *gid)
{
 return !(gid->raw[8] | gid->raw[9] | gid->raw[10] | gid->raw[11] |
   gid->raw[12] | gid->raw[13] | gid->raw[14] | gid->raw[15]);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ibv_gid {int* raw; } ;



__attribute__((used)) static int is_multicast_gid(const union ibv_gid *gid)
{
 return gid->raw[0] == 0xff;
}

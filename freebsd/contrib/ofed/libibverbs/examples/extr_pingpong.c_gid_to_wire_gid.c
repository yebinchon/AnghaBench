
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ibv_gid {int dummy; } ibv_gid ;
typedef int uint32_t ;
typedef int tmp_gid ;


 int htobe32 (int ) ;
 int memcpy (int *,union ibv_gid const*,int) ;
 int sprintf (char*,char*,int) ;

void gid_to_wire_gid(const union ibv_gid *gid, char wgid[])
{
 uint32_t tmp_gid[4];
 int i;

 memcpy(tmp_gid, gid, sizeof(tmp_gid));
 for (i = 0; i < 4; ++i)
  sprintf(&wgid[i * 8], "%08x", htobe32(tmp_gid[i]));
}

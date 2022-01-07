
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ibv_gid {int* raw; } ;
typedef int uint16_t ;



__attribute__((used)) static uint16_t get_vlan_id(union ibv_gid *gid)
{
 uint16_t vid;
 vid = gid->raw[11] << 8 | gid->raw[12];
 return vid < 0x1000 ? vid : 0xffff;
}

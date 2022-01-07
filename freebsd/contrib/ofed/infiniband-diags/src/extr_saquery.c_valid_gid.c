
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ib_gid_t ;


 int memcmp (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static unsigned valid_gid(ib_gid_t * gid)
{
 ib_gid_t zero_gid;
 memset(&zero_gid, 0, sizeof zero_gid);
 return memcmp(&zero_gid, gid, sizeof(*gid));
}

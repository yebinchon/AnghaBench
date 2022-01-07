
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ib_gid_t ;


 int memcmp (void const*,void const*,int) ;

__attribute__((used)) static int compare_ipv6_snm_mgids(const void *m1, const void *m2)
{
 return memcmp(m1, m2, sizeof(ib_gid_t) - 3);
}

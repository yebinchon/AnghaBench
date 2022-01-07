
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_packed_rrset_key {int dummy; } ;
struct resp_addr {struct ub_packed_rrset_key* data; } ;



struct ub_packed_rrset_key*
resp_addr_get_rrset(struct resp_addr* addr)
{
 return addr ? addr->data : ((void*)0);
}

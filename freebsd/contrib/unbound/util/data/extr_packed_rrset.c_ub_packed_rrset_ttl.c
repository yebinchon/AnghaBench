
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_2__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct packed_rrset_data {int ttl; } ;



time_t
ub_packed_rrset_ttl(struct ub_packed_rrset_key* key)
{
 struct packed_rrset_data* d = (struct packed_rrset_data*)key->
  entry.data;
 return d->ttl;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct packed_rrset_data {int ttl; } ;



__attribute__((used)) static uint32_t
rrset_get_ttl(struct ub_packed_rrset_key* k)
{
 struct packed_rrset_data* d = (struct packed_rrset_data*)k->entry.data;
 return d->ttl;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct packed_rrset_data {size_t count; } ;



__attribute__((used)) static size_t
rrset_get_count(struct ub_packed_rrset_key* rrset)
{
        struct packed_rrset_data* d = (struct packed_rrset_data*)
         rrset->entry.data;
        if(!d) return 0;
        return d->count;
}

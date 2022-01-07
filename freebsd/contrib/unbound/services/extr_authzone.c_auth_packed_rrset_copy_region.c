
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_4__ {void* rrset_class; void* type; int dname_len; int dname; } ;
struct TYPE_3__ {int hash; int data; struct ub_packed_rrset_key* key; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; TYPE_1__ entry; } ;
struct regional {int dummy; } ;
struct auth_zone {int dclass; } ;
struct auth_rrset {int type; int data; } ;
struct auth_data {int namelen; int name; } ;
typedef int key ;


 void* htons (int ) ;
 int memset (struct ub_packed_rrset_key*,int ,int) ;
 struct ub_packed_rrset_key* packed_rrset_copy_region (struct ub_packed_rrset_key*,struct regional*,int ) ;
 int rrset_key_hash (TYPE_2__*) ;

__attribute__((used)) static struct ub_packed_rrset_key*
auth_packed_rrset_copy_region(struct auth_zone* z, struct auth_data* node,
 struct auth_rrset* rrset, struct regional* region, time_t adjust)
{
 struct ub_packed_rrset_key key;
 memset(&key, 0, sizeof(key));
 key.entry.key = &key;
 key.entry.data = rrset->data;
 key.rk.dname = node->name;
 key.rk.dname_len = node->namelen;
 key.rk.type = htons(rrset->type);
 key.rk.rrset_class = htons(z->dclass);
 key.entry.hash = rrset_key_hash(&key.rk);
 return packed_rrset_copy_region(&key, region, adjust);
}

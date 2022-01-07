
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_ht_hash {int dummy; } ;
struct ck_ht {int dummy; } ;
typedef int key ;


 int ck_ht_hash (struct ck_ht_hash*,struct ck_ht*,uintptr_t*,int) ;

void
ck_ht_hash_direct(struct ck_ht_hash *h,
    struct ck_ht *table,
    uintptr_t key)
{

 ck_ht_hash(h, table, &key, sizeof(key));
 return;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ck_ht_hash {int dummy; } ;
struct ck_ht {int seed; int (* h ) (struct ck_ht_hash*,void const*,int ,int ) ;} ;


 int stub1 (struct ck_ht_hash*,void const*,int ,int ) ;

void
ck_ht_hash(struct ck_ht_hash *h,
    struct ck_ht *table,
    const void *key,
    uint16_t key_length)
{

 table->h(h, key, key_length, table->seed);
 return;
}

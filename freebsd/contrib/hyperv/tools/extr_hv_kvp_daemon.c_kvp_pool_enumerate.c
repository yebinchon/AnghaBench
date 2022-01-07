
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvp_record {int value; int key; } ;
typedef int __u8 ;
struct TYPE_2__ {int num_records; struct kvp_record* records; } ;


 int KVP_LOG (int ,char*,int,int) ;
 int LOG_DEBUG ;
 TYPE_1__* kvp_pools ;
 int kvp_update_mem_state (int) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static int
kvp_pool_enumerate(int pool, int idx, __u8 *key, int key_size,
    __u8 *value, int value_size)
{
 struct kvp_record *record;

 KVP_LOG(LOG_DEBUG, "kvp_pool_enumerate: pool = %d, index = %d\n,",
     pool, idx);


 kvp_update_mem_state(pool);
 record = kvp_pools[pool].records;


 if (idx >= kvp_pools[pool].num_records) {
  return (1);
 }

 memcpy(key, record[idx].key, key_size);
 memcpy(value, record[idx].value, value_size);
 return (0);
}

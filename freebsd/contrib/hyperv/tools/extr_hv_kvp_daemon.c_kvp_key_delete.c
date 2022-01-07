
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvp_record {int value; int key; } ;
typedef int __u8 ;
struct TYPE_2__ {int num_records; struct kvp_record* records; } ;


 int KVP_LOG (int ,char*,int,...) ;
 int LOG_DEBUG ;
 TYPE_1__* kvp_pools ;
 int kvp_update_file (int) ;
 int kvp_update_mem_state (int) ;
 scalar_t__ memcmp (int *,int ,int) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int
kvp_key_delete(int pool, __u8 *key, int key_size)
{
 int i;
 int j, k;
 int num_records;
 struct kvp_record *record;

 KVP_LOG(LOG_DEBUG, "kvp_key_delete: pool =  %d, "
     "key = %s\n", pool, key);


 kvp_update_mem_state(pool);

 num_records = kvp_pools[pool].num_records;
 record = kvp_pools[pool].records;

 for (i = 0; i < num_records; i++)
 {
  if (memcmp(key, record[i].key, key_size)) {
   continue;
  }

  KVP_LOG(LOG_DEBUG, "Found delete key in pool %d.\n",
      pool);




  if (i == num_records) {
   kvp_pools[pool].num_records--;
   kvp_update_file(pool);
   return (0);
  }





  j = i;
  k = j + 1;
  for ( ; k < num_records; k++)
  {
   strcpy(record[j].key, record[k].key);
   strcpy(record[j].value, record[k].value);
   j++;
  }
  kvp_pools[pool].num_records--;
  kvp_update_file(pool);
  return (0);
 }
 KVP_LOG(LOG_DEBUG, "Not found delete key in pool %d.\n",
     pool);
 return (1);
}

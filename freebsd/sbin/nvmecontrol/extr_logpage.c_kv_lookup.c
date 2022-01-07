
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kv_name {int key; char const* name; } ;
typedef int bad ;


 int snprintf (char*,int,char*,int) ;

const char *
kv_lookup(const struct kv_name *kv, size_t kv_count, uint32_t key)
{
 static char bad[32];
 size_t i;

 for (i = 0; i < kv_count; i++, kv++)
  if (kv->key == key)
   return kv->name;
 snprintf(bad, sizeof(bad), "Attribute %#x", key);
 return bad;
}

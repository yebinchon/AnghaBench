
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sense_key_table_entry {int sense_key; } ;



__attribute__((used)) static int
senseentrycomp(const void *key, const void *member)
{
 int sense_key;
 const struct sense_key_table_entry *table_entry;

 sense_key = *((const int *)key);
 table_entry = (const struct sense_key_table_entry *)member;

 if (sense_key >= table_entry->sense_key) {
  if (sense_key == table_entry->sense_key)
   return (0);
  return (1);
 }
 return (-1);
}

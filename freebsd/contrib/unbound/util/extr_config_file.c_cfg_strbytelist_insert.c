
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct config_strbytelist {char* str; size_t str2len; struct config_strbytelist* next; int * str2; } ;


 scalar_t__ calloc (int,int) ;

int
cfg_strbytelist_insert(struct config_strbytelist** head, char* item,
 uint8_t* i2, size_t i2len)
{
 struct config_strbytelist* s;
 if(!item || !i2 || !head)
  return 0;
 s = (struct config_strbytelist*)calloc(1, sizeof(*s));
 if(!s)
  return 0;
 s->str = item;
 s->str2 = i2;
 s->str2len = i2len;
 s->next = *head;
 *head = s;
 return 1;
}

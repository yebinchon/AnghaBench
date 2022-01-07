
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dictionary {size_t end; size_t pos; size_t limit; } ;



__attribute__((used)) static void dict_limit(struct dictionary *dict, size_t out_max)
{
 if (dict->end - dict->pos <= out_max)
  dict->limit = dict->end;
 else
  dict->limit = dict->pos + out_max;
}

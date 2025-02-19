
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct msrmap {scalar_t__ num; } ;
struct TYPE_6__ {int start; } ;
typedef TYPE_1__ jsmntok_t ;


 int cut_comma (char*,TYPE_1__*) ;
 int json_len (TYPE_1__*) ;
 scalar_t__ json_streq (char*,TYPE_1__*,scalar_t__) ;
 struct msrmap* msrmap ;
 int pr_err (char*,int ,int ,char*) ;
 int prog ;

__attribute__((used)) static struct msrmap *lookup_msr(char *map, jsmntok_t *val)
{
 jsmntok_t newval = *val;
 static bool warned;
 int i;

 cut_comma(map, &newval);
 for (i = 0; msrmap[i].num; i++)
  if (json_streq(map, &newval, msrmap[i].num))
   return &msrmap[i];
 if (!warned) {
  warned = 1;
  pr_err("%s: Unknown MSR in event file %.*s\n", prog,
   json_len(val), map + val->start);
 }
 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int end; int start; } ;
typedef TYPE_1__ jsmntok_t ;



int json_len(jsmntok_t *t)
{
 return t->end - t->start;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ jsmntok_t ;


 char const* LOOKUP (int ,int ) ;
 int jsmn_types ;

const char *json_name(jsmntok_t *t)
{
 return LOOKUP(jsmn_types, t->type);
}

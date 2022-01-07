
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int s; } ;
struct TYPE_6__ {int attr; int type; TYPE_1__ value; } ;
typedef TYPE_2__ attr_val ;


 int T_String ;
 int _UC (char const*) ;
 TYPE_2__* emalloc_zero (int) ;
 char* estrdup (char*) ;

attr_val *
create_attr_sval(
 int attr,
 const char *s
 )
{
 attr_val *my_val;

 my_val = emalloc_zero(sizeof(*my_val));
 my_val->attr = attr;
 if (((void*)0) == s)
  s = estrdup("");
 my_val->value.s = _UC(s);
 my_val->type = T_String;

 return my_val;
}

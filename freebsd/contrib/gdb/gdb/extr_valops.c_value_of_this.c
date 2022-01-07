
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct TYPE_2__ {scalar_t__ la_language; } ;


 TYPE_1__* current_language ;
 scalar_t__ language_objc ;
 struct value* value_of_local (char*,int) ;

struct value *
value_of_this (int complain)
{
  if (current_language->la_language == language_objc)
    return value_of_local ("self", complain);
  else
    return value_of_local ("this", complain);
}

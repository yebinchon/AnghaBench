
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prologue_value {int kind; } ;


 int pv_unknown ;

__attribute__((used)) static void
pv_set_to_unknown (struct prologue_value *v)
{
  v->kind = pv_unknown;
}

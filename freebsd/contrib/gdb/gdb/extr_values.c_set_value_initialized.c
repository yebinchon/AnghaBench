
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int initialized; } ;



void
set_value_initialized (struct value *val, int status)
{
  val->initialized = status;
}

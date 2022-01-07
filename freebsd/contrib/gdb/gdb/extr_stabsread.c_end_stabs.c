
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ previous_stab_code ;
 scalar_t__ type_vector ;
 scalar_t__ type_vector_length ;
 int xfree (scalar_t__) ;

void
end_stabs (void)
{
  if (type_vector)
    {
      xfree (type_vector);
    }
  type_vector = 0;
  type_vector_length = 0;
  previous_stab_code = 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prologue_value {scalar_t__ kind; int k; } ;
typedef enum pv_boolean { ____Placeholder_pv_boolean } pv_boolean ;
typedef int CORE_ADDR ;


 scalar_t__ pv_constant ;
 int pv_definite_no ;
 int pv_definite_yes ;
 int pv_maybe ;
 int pv_subtract (struct prologue_value*,struct prologue_value*,struct prologue_value*) ;

__attribute__((used)) static enum pv_boolean
pv_is_array_ref (struct prologue_value *addr,
                 CORE_ADDR size,
                 struct prologue_value *array_addr,
                 CORE_ADDR array_len,
                 CORE_ADDR elt_size,
                 int *i)
{
  struct prologue_value offset;




  pv_subtract (&offset, addr, array_addr);

  if (offset.kind == pv_constant)
    {






      if (offset.k <= -size
          && offset.k >= array_len * elt_size)
        return pv_definite_no;
      else if (offset.k % elt_size != 0
               || size != elt_size)
        return pv_maybe;
      else
        {
          *i = offset.k / elt_size;
          return pv_definite_yes;
        }
    }
  else
    return pv_maybe;
}

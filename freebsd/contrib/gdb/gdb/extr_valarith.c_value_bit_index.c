
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef int LONGEST ;


 scalar_t__ BITS_BIG_ENDIAN ;
 unsigned int TARGET_CHAR_BIT ;
 struct type* TYPE_FIELD_TYPE (struct type*,int ) ;
 int builtin_type_unsigned_char ;
 scalar_t__ get_discrete_bounds (struct type*,int*,int*) ;
 int unpack_long (int ,char*) ;

int
value_bit_index (struct type *type, char *valaddr, int index)
{
  LONGEST low_bound, high_bound;
  LONGEST word;
  unsigned rel_index;
  struct type *range = TYPE_FIELD_TYPE (type, 0);
  if (get_discrete_bounds (range, &low_bound, &high_bound) < 0)
    return -2;
  if (index < low_bound || index > high_bound)
    return -1;
  rel_index = index - low_bound;
  word = unpack_long (builtin_type_unsigned_char,
        valaddr + (rel_index / TARGET_CHAR_BIT));
  rel_index %= TARGET_CHAR_BIT;
  if (BITS_BIG_ENDIAN)
    rel_index = TARGET_CHAR_BIT - 1 - rel_index;
  return (word >> rel_index) & 1;
}

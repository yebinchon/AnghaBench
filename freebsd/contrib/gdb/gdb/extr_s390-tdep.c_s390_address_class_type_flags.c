
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TYPE_FLAG_ADDRESS_CLASS_1 ;

__attribute__((used)) static int
s390_address_class_type_flags (int byte_size, int dwarf2_addr_class)
{
  if (byte_size == 4)
    return TYPE_FLAG_ADDRESS_CLASS_1;
  else
    return 0;
}

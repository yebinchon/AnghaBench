
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int TARGET_PTR_BIT ;
 int extract_unsigned_integer (int *,int) ;
 scalar_t__ target_read_memory (int ,char*,int) ;

__attribute__((used)) static CORE_ADDR
read_pointer (CORE_ADDR address)
{
 CORE_ADDR value;

 if (target_read_memory(address, (char *)&value, TARGET_PTR_BIT / 8) !=
     0)
  return (0);
 return (extract_unsigned_integer(&value, TARGET_PTR_BIT / 8));
}

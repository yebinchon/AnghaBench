
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int forced_memzero_val ;
 int memset_func (void*,int ,size_t) ;

void forced_memzero(void *ptr, size_t len)
{
 memset_func(ptr, 0, len);
 if (len)
  forced_memzero_val = ((u8 *) ptr)[0];
}

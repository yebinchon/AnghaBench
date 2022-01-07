
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef int CORE_ADDR ;


 int unpack_long (struct type*,char const*) ;

CORE_ADDR
unpack_pointer (struct type *type, const char *valaddr)
{


  return unpack_long (type, valaddr);
}

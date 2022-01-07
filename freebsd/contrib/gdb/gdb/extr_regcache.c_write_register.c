
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONGEST ;


 int DEPRECATED_REGISTER_RAW_SIZE (int) ;
 void* alloca (int) ;
 int deprecated_write_register_gen (int,void*) ;
 int store_signed_integer (void*,int,scalar_t__) ;

void
write_register (int regnum, LONGEST val)
{
  void *buf;
  int size;
  size = DEPRECATED_REGISTER_RAW_SIZE (regnum);
  buf = alloca (size);
  store_signed_integer (buf, size, (LONGEST) val);
  deprecated_write_register_gen (regnum, buf);
}

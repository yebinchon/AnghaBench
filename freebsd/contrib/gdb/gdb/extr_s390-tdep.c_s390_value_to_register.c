
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct frame_info {int dummy; } ;


 int TYPE_LENGTH (struct type*) ;
 int gdb_assert (int) ;
 int memcpy (char*,void const*,int) ;
 int memset (char*,int ,int) ;
 int put_frame_register (struct frame_info*,int,char*) ;

__attribute__((used)) static void
s390_value_to_register (struct frame_info *frame, int regnum,
                        struct type *valtype, const void *in)
{
  char out[8];
  int len = TYPE_LENGTH (valtype);
  gdb_assert (len < 8);

  memset (out, 0, 8);
  memcpy (out, in, len);
  put_frame_register (frame, regnum, out);
}

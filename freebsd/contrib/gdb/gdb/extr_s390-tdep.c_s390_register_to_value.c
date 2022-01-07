
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct frame_info {int dummy; } ;


 int TYPE_LENGTH (struct type*) ;
 int gdb_assert (int) ;
 int get_frame_register (struct frame_info*,int,char*) ;
 int memcpy (void*,char*,int) ;

__attribute__((used)) static void
s390_register_to_value (struct frame_info *frame, int regnum,
                        struct type *valtype, void *out)
{
  char in[8];
  int len = TYPE_LENGTH (valtype);
  gdb_assert (len < 8);

  get_frame_register (frame, regnum, in);
  memcpy (out, in, len);
}

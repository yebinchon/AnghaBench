
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 int get_frame_register (struct frame_info*,int,int *) ;

__attribute__((used)) static CORE_ADDR
rs6000_fetch_pointer_argument (struct frame_info *frame, int argi,
          struct type *type)
{
  CORE_ADDR addr;
  get_frame_register (frame, 3 + argi, &addr);
  return addr;
}

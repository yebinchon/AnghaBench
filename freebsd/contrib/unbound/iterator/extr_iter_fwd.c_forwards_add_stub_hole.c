
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct iter_forwards {int dummy; } ;


 int fwd_add_stub_hole (struct iter_forwards*,int ,int *) ;
 int fwd_init_parents (struct iter_forwards*) ;

int
forwards_add_stub_hole(struct iter_forwards* fwd, uint16_t c, uint8_t* nm)
{
 if(!fwd_add_stub_hole(fwd, c, nm)) {
  return 0;
 }
 fwd_init_parents(fwd);
 return 1;
}

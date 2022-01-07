
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*) ;

void
generic_bs_unimplemented(void)
{

 panic("unimplemented bus_space function called");
}

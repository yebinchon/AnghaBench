
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int load_dr0 (int ) ;
 int load_dr1 (int ) ;
 int load_dr2 (int ) ;
 int load_dr3 (int ) ;
 int load_dr6 (int ) ;
 int load_dr7 (int ) ;

void
reset_dbregs(void)
{

 load_dr7(0);
 load_dr0(0);
 load_dr1(0);
 load_dr2(0);
 load_dr3(0);
 load_dr6(0);
}

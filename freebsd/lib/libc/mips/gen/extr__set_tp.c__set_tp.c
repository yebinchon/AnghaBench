
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MIPS_SET_TLS ;
 int sysarch (int ,void*) ;

void
_set_tp(void *tp)
{

 sysarch(MIPS_SET_TLS, tp);
}

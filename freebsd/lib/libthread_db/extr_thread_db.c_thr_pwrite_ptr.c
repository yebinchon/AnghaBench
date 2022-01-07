
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct td_thragent {int ph; } ;
typedef int psaddr_t ;


 int BYTE_ORDER ;
 int thr_pwrite (int ,int ,int ,int,int ) ;

int
thr_pwrite_ptr(const struct td_thragent *ta, psaddr_t addr, psaddr_t val)
{

 return (thr_pwrite(ta->ph, addr, val, sizeof(void *), BYTE_ORDER));
}

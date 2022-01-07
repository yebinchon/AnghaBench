
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct td_thragent {int ph; } ;
typedef int psaddr_t ;


 int BYTE_ORDER ;
 int thr_pread (int ,int ,int *,int,int ) ;

int
thr_pread_long(const struct td_thragent *ta, psaddr_t addr, uint64_t *val)
{

 return (thr_pread(ta->ph, addr, val, sizeof(long), BYTE_ORDER));
}


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
thr_pread_ptr(const struct td_thragent *ta, psaddr_t addr, psaddr_t *val)
{
 uint64_t tmp;
 int error;

 error = thr_pread(ta->ph, addr, &tmp, sizeof(void *), BYTE_ORDER);
 if (!error)
  *val = tmp;

 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 int OF_release (void*,scalar_t__) ;
 int openfirmware ;

void
OF_chain(void *virt, u_int size, void (*entry)(), void *arg, u_int len)
{







 entry(0, 0, openfirmware, arg, len);
}

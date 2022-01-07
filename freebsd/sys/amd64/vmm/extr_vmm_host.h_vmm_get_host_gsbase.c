
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ get_pcpu () ;

__attribute__((used)) static __inline uint64_t
vmm_get_host_gsbase(void)
{

 return ((uint64_t)get_pcpu());
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int isc_uint32_t ;
struct TYPE_4__ {int state; } ;
typedef TYPE_1__ isc_lfsr_t ;


 int lfsr_generate (TYPE_1__*) ;

__attribute__((used)) static inline isc_uint32_t
lfsr_skipgenerate(isc_lfsr_t *lfsr, unsigned int skip)
{
 while (skip--)
  (void)lfsr_generate(lfsr);

 (void)lfsr_generate(lfsr);

 return (lfsr->state);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MPIC_CPU_READ (int ,int ) ;
 int MPIC_IIACK ;
 int mv_mpic_sc ;

uint32_t
mv_mpic_get_cause(void)
{

 return (MPIC_CPU_READ(mv_mpic_sc, MPIC_IIACK));
}

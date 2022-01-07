
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;
typedef int cpuset_t ;


 scalar_t__ CPU_ISSET (int,int *) ;
 int MAXCPU ;
 int MPIC_SOFT_INT ;
 int MPIC_WRITE (int ,int ,int) ;
 int mv_mpic_sc ;

void
mpic_ipi_send(device_t dev, struct intr_irqsrc *isrc, cpuset_t cpus, u_int ipi)
{
 uint32_t val, i;

 val = 0x00000000;
 for (i = 0; i < MAXCPU; i++)
  if (CPU_ISSET(i, &cpus))
   val |= (1 << (8 + i));
 val |= ipi;
 MPIC_WRITE(mv_mpic_sc, MPIC_SOFT_INT, val);
}

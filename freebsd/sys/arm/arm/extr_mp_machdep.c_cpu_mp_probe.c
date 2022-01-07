
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_SETOF (int ,int *) ;
 int KASSERT (int,char*) ;
 int all_cpus ;
 int mp_ncpus ;

int
cpu_mp_probe(void)
{

 KASSERT(mp_ncpus != 0, ("cpu_mp_probe: mp_ncpus is unset"));

 CPU_SETOF(0, &all_cpus);

 return (mp_ncpus > 1);
}

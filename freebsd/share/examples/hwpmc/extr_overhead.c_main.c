
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int pmc_value_t ;
typedef int pmc_id_t ;


 int EX_OSERR ;
 int EX_USAGE ;
 int PMC_MODE_SC ;
 int err (int ,char*,...) ;
 scalar_t__ pmc_allocate (char*,int ,int ,int ,int *,int) ;
 scalar_t__ pmc_init () ;
 scalar_t__ pmc_read (int ,int *) ;
 scalar_t__ pmc_release (int ) ;
 scalar_t__ pmc_rw (int ,int ,int *) ;
 scalar_t__ pmc_start (int ) ;
 scalar_t__ pmc_stop (int ) ;
 scalar_t__ pmc_write (int ,int ) ;
 int printf (char*,char*,scalar_t__,scalar_t__,...) ;
 scalar_t__ rdtsc () ;

int
main(int argc, char **argv)
{
 pmc_id_t pmcid;
 pmc_value_t read_value;
 pmc_value_t read_clear_value;
 uint64_t tsc1, write_cyc, start_cyc, read_cyc, stop_cyc;
 char *counter_name;

 if (argc != 2)
  err(EX_USAGE, "counter-name required");

 counter_name = argv[1];

 if (pmc_init() != 0)
  err(EX_OSERR, "hwpmc(4) not loaded, kldload or update your kernel");

 if (pmc_allocate(counter_name, PMC_MODE_SC, 0, 0, &pmcid, 64*1024) < 0)
  err(EX_OSERR, "failed to allocate %s as a system counter in counting mode",
      counter_name);

 tsc1 = rdtsc();
 if (pmc_write(pmcid, 0) < 0)
  err(EX_OSERR, "failed to zero counter %s", counter_name);
 write_cyc = rdtsc() - tsc1;

 tsc1 = rdtsc();
 if (pmc_start(pmcid) < 0)
  err(EX_OSERR, "failed to start counter %s", counter_name);
 start_cyc = rdtsc() - tsc1;

 tsc1 = rdtsc();
 if (pmc_read(pmcid, &read_value) < 0)
  err(EX_OSERR, "failed to read counter %s", counter_name);
 read_cyc = rdtsc() - tsc1;

 tsc1 = rdtsc();
 if (pmc_stop(pmcid) < 0)
  err(EX_OSERR, "failed to stop counter %s", counter_name);
 stop_cyc = rdtsc() - tsc1;

 if (pmc_rw(pmcid, 0, &read_clear_value))
  err(EX_OSERR, "failed to read and zero %s", counter_name);

 if (pmc_release(pmcid) < 0)
  err(EX_OSERR, "failed to release %s as a system counter in counting mode",
      counter_name);

 printf("Counter %s, read value %ld, read/clear value %ld\n",
     counter_name, read_value, read_clear_value);
 printf("Cycles to start: %ld\tstop: %ld\tread: %ld\twrite: %ld\n",
     start_cyc, stop_cyc, read_cyc, stop_cyc);

 return(0);
}

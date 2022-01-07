
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct format_opts {scalar_t__ first; scalar_t__ last; int show_counters; int show_time; int flags; } ;
typedef int sfo ;
typedef int ipfw_cfg_lheader ;
struct TYPE_4__ {int do_time; int do_dynamic; scalar_t__ do_pipe; scalar_t__ test_only; } ;


 int EX_OK ;
 int EX_OSERR ;
 int IPFW_CFG_GET_COUNTERS ;
 int IPFW_CFG_GET_STATES ;
 int IPFW_CFG_GET_STATIC ;
 TYPE_1__ co ;
 int dummynet_list (int,char**,int) ;
 int err (int ,char*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int free (int *) ;
 scalar_t__ ipfw_get_config (TYPE_1__*,struct format_opts*,int **,size_t*) ;
 int ipfw_show_config (TYPE_1__*,struct format_opts*,int *,size_t,int,char**) ;
 int memset (struct format_opts*,int ,int) ;
 int stderr ;
 scalar_t__ strtoul (char*,char**,int) ;

void
ipfw_list(int ac, char *av[], int show_counters)
{
 ipfw_cfg_lheader *cfg;
 struct format_opts sfo;
 size_t sz;
 int error;
 int lac;
 char **lav;
 uint32_t rnum;
 char *endptr;

 if (co.test_only) {
  fprintf(stderr, "Testing only, list disabled\n");
  return;
 }
 if (co.do_pipe) {
  dummynet_list(ac, av, show_counters);
  return;
 }

 ac--;
 av++;
 memset(&sfo, 0, sizeof(sfo));


 if (ac > 0) {
  for (lac = ac, lav = av; lac != 0; lac--) {
   rnum = strtoul(*lav++, &endptr, 10);
   if (sfo.first == 0 || rnum < sfo.first)
    sfo.first = rnum;

   if (*endptr == '-')
    rnum = strtoul(endptr + 1, &endptr, 10);
   if (sfo.last == 0 || rnum > sfo.last)
    sfo.last = rnum;
  }
 }


 cfg = ((void*)0);
 sfo.show_counters = show_counters;
 sfo.show_time = co.do_time;
 if (co.do_dynamic != 2)
  sfo.flags |= IPFW_CFG_GET_STATIC;
 if (co.do_dynamic != 0)
  sfo.flags |= IPFW_CFG_GET_STATES;
 if ((sfo.show_counters | sfo.show_time) != 0)
  sfo.flags |= IPFW_CFG_GET_COUNTERS;
 if (ipfw_get_config(&co, &sfo, &cfg, &sz) != 0)
  err(EX_OSERR, "retrieving config failed");

 error = ipfw_show_config(&co, &sfo, cfg, sz, ac, av);

 free(cfg);

 if (error != EX_OK)
  exit(error);
}

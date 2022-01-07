
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct worker {int dummy; } ;
struct daemon {int num; struct worker** workers; TYPE_1__* cfg; int dtenv; scalar_t__ num_ports; scalar_t__ reuseport; int rand; } ;
struct TYPE_2__ {int num_threads; int dnstap_socket_path; scalar_t__ dnstap; } ;


 int VERB_ALGO ;
 scalar_t__ calloc (size_t,int) ;
 int daemon_get_shufport (struct daemon*,int*) ;
 int dt_apply_cfg (int ,TYPE_1__*) ;
 int dt_create (int ,unsigned int) ;
 int fatal_exit (char*) ;
 int free (int*) ;
 scalar_t__ getpid () ;
 int hash_set_raninit (int ) ;
 int log_assert (int) ;
 int log_warn (char*,int,int) ;
 scalar_t__ time (int *) ;
 int ub_initstate (unsigned int,int *) ;
 scalar_t__ ub_random (int ) ;
 int verbose (int ,char*,int) ;
 struct worker* worker_create (struct daemon*,int,int*,int) ;

__attribute__((used)) static void
daemon_create_workers(struct daemon* daemon)
{
 int i, numport;
 int* shufport;
 log_assert(daemon && daemon->cfg);
 if(!daemon->rand) {
  unsigned int seed = (unsigned int)time(((void*)0)) ^
   (unsigned int)getpid() ^ 0x438;
  daemon->rand = ub_initstate(seed, ((void*)0));
  if(!daemon->rand)
   fatal_exit("could not init random generator");
  hash_set_raninit((uint32_t)ub_random(daemon->rand));
 }
 shufport = (int*)calloc(65536, sizeof(int));
 if(!shufport)
  fatal_exit("out of memory during daemon init");
 numport = daemon_get_shufport(daemon, shufport);
 verbose(VERB_ALGO, "total of %d outgoing ports available", numport);

 daemon->num = (daemon->cfg->num_threads?daemon->cfg->num_threads:1);
 if(daemon->reuseport && (int)daemon->num < (int)daemon->num_ports) {
  log_warn("cannot reduce num-threads to %d because so-reuseport "
   "so continuing with %d threads.", (int)daemon->num,
   (int)daemon->num_ports);
  daemon->num = (int)daemon->num_ports;
 }
 daemon->workers = (struct worker**)calloc((size_t)daemon->num,
  sizeof(struct worker*));
 if(!daemon->workers)
  fatal_exit("out of memory during daemon init");
 if(daemon->cfg->dnstap) {







  fatal_exit("dnstap enabled in config but not built with dnstap support");

 }
 for(i=0; i<daemon->num; i++) {
  if(!(daemon->workers[i] = worker_create(daemon, i,
   shufport+numport*i/daemon->num,
   numport*(i+1)/daemon->num - numport*i/daemon->num)))

   fatal_exit("could not create worker");
 }
 free(shufport);
}

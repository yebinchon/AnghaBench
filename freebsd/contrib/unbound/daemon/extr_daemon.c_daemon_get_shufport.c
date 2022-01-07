
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct daemon {int rand; TYPE_1__* cfg; } ;
struct TYPE_2__ {int* outgoing_avail_ports; } ;


 int fatal_exit (char*) ;
 int ub_random_max (int ,int) ;

__attribute__((used)) static int daemon_get_shufport(struct daemon* daemon, int* shufport)
{
 int i, n, k, temp;
 int avail = 0;
 for(i=0; i<65536; i++) {
  if(daemon->cfg->outgoing_avail_ports[i]) {
   shufport[avail++] = daemon->cfg->
    outgoing_avail_ports[i];
  }
 }
 if(avail == 0)
  fatal_exit("no ports are permitted for UDP, add "
   "with outgoing-port-permit");

 n = avail;
 while(--n > 0) {
  k = ub_random_max(daemon->rand, n+1);
  temp = shufport[k];
  shufport[k] = shufport[n];
  shufport[n] = temp;
 }
 return avail;
}

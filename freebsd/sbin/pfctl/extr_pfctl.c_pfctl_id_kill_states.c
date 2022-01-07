
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ id; scalar_t__ creatorid; } ;
struct pfioc_state_kill {int psk_killed; TYPE_1__ psk_pfcmp; } ;
typedef int psk ;


 int DIOCKILLSTATES ;
 int HTONL (scalar_t__) ;
 int PF_OPT_QUIET ;
 int err (int,char*) ;
 int fprintf (int ,char*,int) ;
 scalar_t__ htobe64 (scalar_t__) ;
 scalar_t__ ioctl (int,int ,struct pfioc_state_kill*) ;
 int memset (struct pfioc_state_kill*,int ,int) ;
 int sscanf (int ,char*,scalar_t__*,...) ;
 int * state_kill ;
 int state_killers ;
 int stderr ;
 scalar_t__ strlen (int ) ;
 int usage () ;
 int warnx (char*) ;

int
pfctl_id_kill_states(int dev, const char *iface, int opts)
{
 struct pfioc_state_kill psk;

 if (state_killers != 2 || (strlen(state_kill[1]) == 0)) {
  warnx("no id specified");
  usage();
 }

 memset(&psk, 0, sizeof(psk));
 if ((sscanf(state_kill[1], "%jx/%x",
     &psk.psk_pfcmp.id, &psk.psk_pfcmp.creatorid)) == 2)
  HTONL(psk.psk_pfcmp.creatorid);
 else if ((sscanf(state_kill[1], "%jx", &psk.psk_pfcmp.id)) == 1) {
  psk.psk_pfcmp.creatorid = 0;
 } else {
  warnx("wrong id format specified");
  usage();
 }
 if (psk.psk_pfcmp.id == 0) {
  warnx("cannot kill id 0");
  usage();
 }

 psk.psk_pfcmp.id = htobe64(psk.psk_pfcmp.id);
 if (ioctl(dev, DIOCKILLSTATES, &psk))
  err(1, "DIOCKILLSTATES");

 if ((opts & PF_OPT_QUIET) == 0)
  fprintf(stderr, "killed %d states\n", psk.psk_killed);

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfioc_state_kill {int psk_killed; int psk_label; int psk_ifname; } ;
typedef int psk ;


 int DIOCKILLSTATES ;
 int PF_OPT_QUIET ;
 int err (int,char*) ;
 int errx (int,char*,char const*) ;
 int fprintf (int ,char*,int) ;
 scalar_t__ ioctl (int,int ,struct pfioc_state_kill*) ;
 int memset (struct pfioc_state_kill*,int ,int) ;
 char const** state_kill ;
 int state_killers ;
 int stderr ;
 int strlcpy (int ,char const*,int) ;
 scalar_t__ strlen (char const*) ;
 int usage () ;
 int warnx (char*) ;

int
pfctl_label_kill_states(int dev, const char *iface, int opts)
{
 struct pfioc_state_kill psk;

 if (state_killers != 2 || (strlen(state_kill[1]) == 0)) {
  warnx("no label specified");
  usage();
 }
 memset(&psk, 0, sizeof(psk));
 if (iface != ((void*)0) && strlcpy(psk.psk_ifname, iface,
     sizeof(psk.psk_ifname)) >= sizeof(psk.psk_ifname))
  errx(1, "invalid interface: %s", iface);

 if (strlcpy(psk.psk_label, state_kill[1], sizeof(psk.psk_label)) >=
     sizeof(psk.psk_label))
  errx(1, "label too long: %s", state_kill[1]);

 if (ioctl(dev, DIOCKILLSTATES, &psk))
  err(1, "DIOCKILLSTATES");

 if ((opts & PF_OPT_QUIET) == 0)
  fprintf(stderr, "killed %d states\n", psk.psk_killed);

 return (0);
}

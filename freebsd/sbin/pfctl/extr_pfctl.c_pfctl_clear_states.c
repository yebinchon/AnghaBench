
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfioc_state_kill {int psk_killed; int psk_ifname; } ;
typedef int psk ;


 int DIOCCLRSTATES ;
 int PF_OPT_QUIET ;
 int err (int,char*) ;
 int errx (int,char*,char const*) ;
 int fprintf (int ,char*,int) ;
 scalar_t__ ioctl (int,int ,struct pfioc_state_kill*) ;
 int memset (struct pfioc_state_kill*,int ,int) ;
 int stderr ;
 int strlcpy (int ,char const*,int) ;

int
pfctl_clear_states(int dev, const char *iface, int opts)
{
 struct pfioc_state_kill psk;

 memset(&psk, 0, sizeof(psk));
 if (iface != ((void*)0) && strlcpy(psk.psk_ifname, iface,
     sizeof(psk.psk_ifname)) >= sizeof(psk.psk_ifname))
  errx(1, "invalid interface: %s", iface);

 if (ioctl(dev, DIOCCLRSTATES, &psk))
  err(1, "DIOCCLRSTATES");
 if ((opts & PF_OPT_QUIET) == 0)
  fprintf(stderr, "%d states cleared\n", psk.psk_killed);
 return (0);
}

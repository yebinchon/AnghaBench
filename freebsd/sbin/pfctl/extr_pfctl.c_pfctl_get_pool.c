
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct pfioc_pooladdr {int r_action; scalar_t__ nr; int addr; scalar_t__ ticket; scalar_t__ r_num; int anchor; } ;
struct pf_pooladdr {int dummy; } ;
struct pf_pool {int list; } ;
typedef int pp ;


 int DIOCGETADDR ;
 int DIOCGETADDRS ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct pf_pooladdr*,int ) ;
 int bcopy (int *,struct pf_pooladdr*,int) ;
 struct pf_pooladdr* calloc (int,int) ;
 int entries ;
 int err (int,char*) ;
 scalar_t__ ioctl (int,int ,struct pfioc_pooladdr*) ;
 int memcpy (int ,char*,int) ;
 int memset (struct pfioc_pooladdr*,int ,int) ;
 int warn (char*) ;

int
pfctl_get_pool(int dev, struct pf_pool *pool, u_int32_t nr,
    u_int32_t ticket, int r_action, char *anchorname)
{
 struct pfioc_pooladdr pp;
 struct pf_pooladdr *pa;
 u_int32_t pnr, mpnr;

 memset(&pp, 0, sizeof(pp));
 memcpy(pp.anchor, anchorname, sizeof(pp.anchor));
 pp.r_action = r_action;
 pp.r_num = nr;
 pp.ticket = ticket;
 if (ioctl(dev, DIOCGETADDRS, &pp)) {
  warn("DIOCGETADDRS");
  return (-1);
 }
 mpnr = pp.nr;
 TAILQ_INIT(&pool->list);
 for (pnr = 0; pnr < mpnr; ++pnr) {
  pp.nr = pnr;
  if (ioctl(dev, DIOCGETADDR, &pp)) {
   warn("DIOCGETADDR");
   return (-1);
  }
  pa = calloc(1, sizeof(struct pf_pooladdr));
  if (pa == ((void*)0))
   err(1, "calloc");
  bcopy(&pp.addr, pa, sizeof(struct pf_pooladdr));
  TAILQ_INSERT_TAIL(&pool->list, pa, entries);
 }

 return (0);
}

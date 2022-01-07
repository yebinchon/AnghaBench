
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct pfr_buffer {int pfrb_type; } ;


 int DIOCXBEGIN ;
 int DIOCXCOMMIT ;
 int PFRB_TRANS ;
 int PF_OPT_QUIET ;
 int PF_RULESET_ALTQ ;
 int altqsupport ;
 int err (int,char*) ;
 int fprintf (int ,char*) ;
 int memset (struct pfr_buffer*,int ,int) ;
 scalar_t__ pfctl_add_trans (struct pfr_buffer*,int ,char*) ;
 scalar_t__ pfctl_trans (int,struct pfr_buffer*,int ,int ) ;
 int stderr ;

int
pfctl_clear_altq(int dev, int opts)
{
 struct pfr_buffer t;

 if (!altqsupport)
  return (-1);
 memset(&t, 0, sizeof(t));
 t.pfrb_type = PFRB_TRANS;
 if (pfctl_add_trans(&t, PF_RULESET_ALTQ, "") ||
     pfctl_trans(dev, &t, DIOCXBEGIN, 0) ||
     pfctl_trans(dev, &t, DIOCXCOMMIT, 0))
  err(1, "pfctl_clear_altq");
 if ((opts & PF_OPT_QUIET) == 0)
  fprintf(stderr, "altq cleared\n");
 return (0);
}

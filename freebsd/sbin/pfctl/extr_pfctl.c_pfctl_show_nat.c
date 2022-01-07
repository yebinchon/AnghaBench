
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct TYPE_3__ {int action; int rpool; } ;
struct pfioc_rule {scalar_t__ nr; TYPE_1__ rule; int anchor_call; int ticket; int anchor; } ;
typedef int pr ;


 int DIOCGETRULE ;
 int DIOCGETRULES ;


 int PF_OPT_NUMERIC ;
 int PF_OPT_SHOWALL ;
 int PF_OPT_VERBOSE2 ;

 scalar_t__ ioctl (int,int ,struct pfioc_rule*) ;
 int memcpy (int ,char*,int) ;
 int memset (struct pfioc_rule*,int ,int) ;
 int pfctl_clear_pool (int *) ;
 scalar_t__ pfctl_get_pool (int,int *,scalar_t__,int ,int,char*) ;
 int pfctl_print_rule_counters (TYPE_1__*,int) ;
 int pfctl_print_title (char*) ;
 int print_rule (TYPE_1__*,int ,int,int) ;
 int printf (char*) ;
 int warn (char*) ;

int
pfctl_show_nat(int dev, int opts, char *anchorname)
{
 struct pfioc_rule pr;
 u_int32_t mnr, nr;
 static int nattype[3] = { 129, 128, 130 };
 int i, dotitle = opts & PF_OPT_SHOWALL;

 memset(&pr, 0, sizeof(pr));
 memcpy(pr.anchor, anchorname, sizeof(pr.anchor));
 for (i = 0; i < 3; i++) {
  pr.rule.action = nattype[i];
  if (ioctl(dev, DIOCGETRULES, &pr)) {
   warn("DIOCGETRULES");
   return (-1);
  }
  mnr = pr.nr;
  for (nr = 0; nr < mnr; ++nr) {
   pr.nr = nr;
   if (ioctl(dev, DIOCGETRULE, &pr)) {
    warn("DIOCGETRULE");
    return (-1);
   }
   if (pfctl_get_pool(dev, &pr.rule.rpool, nr,
       pr.ticket, nattype[i], anchorname) != 0)
    return (-1);
   if (dotitle) {
    pfctl_print_title("TRANSLATION RULES:");
    dotitle = 0;
   }
   print_rule(&pr.rule, pr.anchor_call,
       opts & PF_OPT_VERBOSE2, opts & PF_OPT_NUMERIC);
   printf("\n");
   pfctl_print_rule_counters(&pr.rule, opts);
   pfctl_clear_pool(&pr.rule.rpool);
  }
 }
 return (0);
}

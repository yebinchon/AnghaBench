
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef int sub ;
struct pfioc_ruleset {char* path; scalar_t__ nr; char* name; } ;
typedef int pr ;


 int DIOCGETRULESET ;
 int DIOCGETRULESETS ;
 scalar_t__ EINVAL ;
 int MAXPATHLEN ;
 int PF_OPT_VERBOSE ;
 int PF_RESERVED_ANCHOR ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ ioctl (int,int ,struct pfioc_ruleset*) ;
 int memcpy (char*,char*,int) ;
 int memset (struct pfioc_ruleset*,int ,int) ;
 int printf (char*,char*) ;
 int stderr ;
 int strcmp (char*,int ) ;
 int strlcat (char*,char*,int) ;

int
pfctl_show_anchors(int dev, int opts, char *anchorname)
{
 struct pfioc_ruleset pr;
 u_int32_t mnr, nr;

 memset(&pr, 0, sizeof(pr));
 memcpy(pr.path, anchorname, sizeof(pr.path));
 if (ioctl(dev, DIOCGETRULESETS, &pr)) {
  if (errno == EINVAL)
   fprintf(stderr, "Anchor '%s' not found.\n",
       anchorname);
  else
   err(1, "DIOCGETRULESETS");
  return (-1);
 }
 mnr = pr.nr;
 for (nr = 0; nr < mnr; ++nr) {
  char sub[MAXPATHLEN];

  pr.nr = nr;
  if (ioctl(dev, DIOCGETRULESET, &pr))
   err(1, "DIOCGETRULESET");
  if (!strcmp(pr.name, PF_RESERVED_ANCHOR))
   continue;
  sub[0] = 0;
  if (pr.path[0]) {
   strlcat(sub, pr.path, sizeof(sub));
   strlcat(sub, "/", sizeof(sub));
  }
  strlcat(sub, pr.name, sizeof(sub));
  if (sub[0] != '_' || (opts & PF_OPT_VERBOSE))
   printf("  %s\n", sub);
  if ((opts & PF_OPT_VERBOSE) && pfctl_show_anchors(dev, opts, sub))
   return (-1);
 }
 return (0);
}

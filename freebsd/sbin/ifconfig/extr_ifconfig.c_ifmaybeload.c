
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_stat {int version; char* name; } ;
struct module_map_entry {char* ifname; char* kldname; } ;
typedef int ifname ;
typedef int ifkind ;


 int IFNAMSIZ ;
 int MOD_PREFIX_LEN ;
 scalar_t__ isdigit (char) ;
 int kldfirstmod (int) ;
 int kldload (char*) ;
 int kldnext (int) ;
 int modfnext (int) ;
 scalar_t__ modstat (int,struct module_stat*) ;
 struct module_map_entry* module_map ;
 int nitems (struct module_map_entry*) ;
 scalar_t__ noload ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char const*,int) ;

void
ifmaybeload(const char *name)
{

 struct module_stat mstat;
 int i, fileid, modid;
 char ifkind[IFNAMSIZ + 3], ifname[IFNAMSIZ], *dp;
 const char *cp;
 struct module_map_entry *mme;
 bool found;


 if (noload)
  return;


 strlcpy(ifname, name, sizeof(ifname));
 for (dp = ifname; *dp != 0; dp++)
  if (isdigit(*dp)) {
   *dp = 0;
   break;
  }


 *ifkind = '\0';
 found = 0;
 for (i = 0; i < nitems(module_map); ++i) {
  mme = &module_map[i];
  if (strcmp(mme->ifname, ifname) == 0) {
   strlcpy(ifkind, mme->kldname, sizeof(ifkind));
   found = 1;
   break;
  }
 }


 if (!found) {

     strlcpy(ifkind, "if_", sizeof(ifkind));
     strlcat(ifkind, ifname, sizeof(ifkind));
 }


 mstat.version = sizeof(struct module_stat);
 for (fileid = kldnext(0); fileid > 0; fileid = kldnext(fileid)) {

  for (modid = kldfirstmod(fileid); modid > 0;
       modid = modfnext(modid)) {
   if (modstat(modid, &mstat) < 0)
    continue;

   if ((cp = strchr(mstat.name, '/')) != ((void*)0)) {
    cp++;
   } else {
    cp = mstat.name;
   }





   if ((!found && strcmp(ifname, cp) == 0) ||
       strcmp(ifkind, cp) == 0)
    return;
  }
 }





 (void) kldload(ifkind);
}

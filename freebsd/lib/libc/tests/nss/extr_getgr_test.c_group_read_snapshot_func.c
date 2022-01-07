
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct group {int gr_mem; TYPE_1__* gr_passwd; TYPE_1__* gr_name; int gr_gid; } ;
typedef int gid_t ;
struct TYPE_5__ {int sl_str; } ;
typedef TYPE_1__ StringList ;


 int ATF_REQUIRE (int ) ;
 int free (TYPE_1__*) ;
 int memset (struct group*,int ,int) ;
 int printf (char*,char*) ;
 int sl_add (TYPE_1__*,char*) ;
 TYPE_1__* sl_init () ;
 int strcmp (char*,char*) ;
 void* strdup (char*) ;
 char* strsep (char**,char const*) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static int
group_read_snapshot_func(struct group *grp, char *line)
{
 StringList *sl;
 char *s, *ps, *ts;
 const char *sep;
 int i;

 printf("1 line read from snapshot:\n%s\n", line);

 i = 0;
 sl = ((void*)0);
 ps = line;
 sep = ":";
 memset(grp, 0, sizeof(struct group));
 while ((s = strsep(&ps, sep)) != ((void*)0)) {
  switch (i) {
  case 0:
   grp->gr_name = strdup(s);
   ATF_REQUIRE(grp->gr_name != ((void*)0));
   break;

  case 1:
   grp->gr_passwd = strdup(s);
   ATF_REQUIRE(grp->gr_passwd != ((void*)0));
   break;

  case 2:
   grp->gr_gid = (gid_t)strtol(s, &ts, 10);
   if (*ts != '\0') {
    free(grp->gr_name);
    free(grp->gr_passwd);
    grp->gr_name = ((void*)0);
    grp->gr_passwd = ((void*)0);
    return (-1);
   }

   sep = ",";
   break;

  default:
   if (sl == ((void*)0)) {
    if (strcmp(s, "(null)") == 0)
     return (0);

    sl = sl_init();
    ATF_REQUIRE(sl != ((void*)0));

    if (strcmp(s, "nomem") != 0) {
     ts = strdup(s);
     ATF_REQUIRE(ts != ((void*)0));
     sl_add(sl, ts);
    }
   } else {
    ts = strdup(s);
    ATF_REQUIRE(ts != ((void*)0));
    sl_add(sl, ts);
   }
   break;
  }
  ++i;
 }

 if (i < 3) {
  free(grp->gr_name);
  free(grp->gr_passwd);
  memset(grp, 0, sizeof(struct group));
  return (-1);
 }

 sl_add(sl, ((void*)0));
 grp->gr_mem = sl->sl_str;


 free(sl);
 return (0);
}

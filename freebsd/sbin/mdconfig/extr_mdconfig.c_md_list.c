
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gconf {int dummy; } ;
struct gprovider {char* lg_name; struct gconf lg_config; struct ggeom* lg_geom; } ;
struct gmesh {int dummy; } ;
struct gident {scalar_t__ lg_what; struct gprovider* lg_ptr; } ;
struct ggeom {struct gclass* lg_class; } ;
struct gclass {char const* lg_name; } ;
struct devstat {int id; } ;


 char const* CLASS_NAME_MD ;
 scalar_t__ ISPROVIDER ;
 int MD_NAME ;
 int OPT_DONE ;
 int OPT_LIST ;
 int OPT_UNIT ;
 int OPT_VERBOSE ;
 void* geom_config_get (struct gconf*,char*) ;
 int geom_gettree (struct gmesh*) ;
 struct gident* geom_lookupid (struct gmesh*,int ) ;
 int geom_stats_open () ;
 int geom_stats_snapshot_free (void*) ;
 void* geom_stats_snapshot_get () ;
 struct devstat* geom_stats_snapshot_next (void*) ;
 int md_find (char const*,char*) ;
 int md_prthumanval (char*) ;
 scalar_t__ nflag ;
 int printf (char*,...) ;
 scalar_t__ strcmp (char const*,char const*) ;
 scalar_t__ strncmp (char*,int ,int) ;

__attribute__((used)) static int
md_list(const char *units, int opt, const char *fflag)
{
 struct gmesh gm;
 struct gprovider *pp;
 struct gconf *gc;
 struct gident *gid;
 struct devstat *gsp;
 struct ggeom *gg;
 struct gclass *gcl;
 void *sq;
 int retcode, ffound, ufound;
 char *length;
 const char *type, *file, *label;

 type = file = length = ((void*)0);

 retcode = geom_gettree(&gm);
 if (retcode != 0)
  return (-1);
 retcode = geom_stats_open();
 if (retcode != 0)
  return (-1);
 sq = geom_stats_snapshot_get();
 if (sq == ((void*)0))
  return (-1);

 ffound = ufound = 0;
 while ((gsp = geom_stats_snapshot_next(sq)) != ((void*)0)) {
  gid = geom_lookupid(&gm, gsp->id);
  if (gid == ((void*)0))
   continue;
  if (gid->lg_what == ISPROVIDER) {
   pp = gid->lg_ptr;
   gg = pp->lg_geom;
   gcl = gg->lg_class;
   if (strcmp(gcl->lg_name, CLASS_NAME_MD) != 0)
    continue;
   if ((opt & OPT_UNIT) && (units != ((void*)0))) {
    retcode = md_find(units, pp->lg_name);
    if (retcode != 1)
     continue;
    else
     ufound = 1;
   }
   gc = &pp->lg_config;
   type = geom_config_get(gc, "type");
   if (type != ((void*)0) && (strcmp(type, "vnode") == 0 ||
       strcmp(type, "preload") == 0)) {
    file = geom_config_get(gc, "file");
    if (fflag != ((void*)0) &&
        strcmp(fflag, file) != 0)
     continue;
    else
     ffound = 1;
   } else if (fflag != ((void*)0))
     continue;
   if (nflag && strncmp(pp->lg_name, MD_NAME, 2) == 0)
    printf("%s", pp->lg_name + 2);
   else
    printf("%s", pp->lg_name);

   if (opt & OPT_VERBOSE ||
       ((opt & OPT_UNIT) && fflag == ((void*)0))) {
    length = geom_config_get(gc, "length");
    printf("\t%s\t", type);
    if (length != ((void*)0))
     md_prthumanval(length);
    if (file == ((void*)0))
     file = "-";
    printf("\t%s", file);
    file = ((void*)0);
    label = geom_config_get(gc, "label");
    if (label == ((void*)0))
     label = "";
    printf("\t%s", label);
   }
   opt |= OPT_DONE;
   if ((opt & OPT_LIST) && !(opt & OPT_VERBOSE))
    printf(" ");
   else
    printf("\n");
  }
 }
 if ((opt & OPT_LIST) && (opt & OPT_DONE) && !(opt & OPT_VERBOSE))
  printf("\n");

 geom_stats_snapshot_free(sq);
 if (opt & OPT_UNIT) {
  if (((fflag == ((void*)0)) && ufound) ||
      ((fflag == ((void*)0)) && (units != ((void*)0)) && ufound) ||
      ((fflag != ((void*)0)) && ffound) ||
      ((fflag != ((void*)0)) && (units != ((void*)0)) && ufound && ffound))
   return (0);
 } else if (opt & OPT_LIST) {
  if ((fflag == ((void*)0)) ||
      ((fflag != ((void*)0)) && ffound))
   return (0);
 }
 return (-1);
}

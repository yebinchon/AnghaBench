
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
typedef int off_t ;


 int gctl_free (struct gctl_req*) ;
 struct gctl_req* gctl_get_handle () ;
 char* gctl_issue (struct gctl_req*) ;
 int gctl_ro_param (struct gctl_req*,char*,int,...) ;
 int strcmp (char* const,char*) ;
 int strtol (char* const,int *,int ) ;
 int warnx (char*,...) ;

__attribute__((used)) static void
gvinum_attach(int argc, char * const *argv)
{
 struct gctl_req *req;
 const char *errstr;
 int rename;
 off_t offset;

 rename = 0;
 offset = -1;
 if (argc < 3) {
  warnx("usage:\tattach <subdisk> <plex> [rename] "
      "[<plexoffset>]\n"
      "\tattach <plex> <volume> [rename]");
  return;
 }
 if (argc > 3) {
  if (!strcmp(argv[3], "rename")) {
   rename = 1;
   if (argc == 5)
    offset = strtol(argv[4], ((void*)0), 0);
  } else
   offset = strtol(argv[3], ((void*)0), 0);
 }
 req = gctl_get_handle();
 gctl_ro_param(req, "class", -1, "VINUM");
 gctl_ro_param(req, "verb", -1, "attach");
 gctl_ro_param(req, "child", -1, argv[1]);
 gctl_ro_param(req, "parent", -1, argv[2]);
 gctl_ro_param(req, "offset", sizeof(off_t), &offset);
 gctl_ro_param(req, "rename", sizeof(int), &rename);
 errstr = gctl_issue(req);
 if (errstr != ((void*)0))
  warnx("attach failed: %s", errstr);
 gctl_free(req);
}

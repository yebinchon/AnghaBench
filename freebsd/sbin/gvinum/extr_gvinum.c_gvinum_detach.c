
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;


 int GV_FLAG_F ;
 int gctl_free (struct gctl_req*) ;
 struct gctl_req* gctl_get_handle () ;
 char* gctl_issue (struct gctl_req*) ;
 int gctl_ro_param (struct gctl_req*,char*,int,...) ;
 int getopt (int,char* const*,char*) ;
 int optind ;
 int optreset ;
 int warn (char*,int) ;
 int warnx (char*,...) ;

__attribute__((used)) static void
gvinum_detach(int argc, char * const *argv)
{
 const char *errstr;
 struct gctl_req *req;
 int flags, i;

 flags = 0;
 optreset = 1;
 optind = 1;
 while ((i = getopt(argc, argv, "f")) != -1) {
  switch (i) {
  case 'f':
   flags |= GV_FLAG_F;
   break;
  default:
   warn("invalid flag: %c", i);
   return;
  }
 }
 argc -= optind;
 argv += optind;
 if (argc != 1) {
  warnx("usage: detach [-f] <subdisk> | <plex>");
  return;
 }

 req = gctl_get_handle();
 gctl_ro_param(req, "class", -1, "VINUM");
 gctl_ro_param(req, "verb", -1, "detach");
 gctl_ro_param(req, "object", -1, argv[0]);
 gctl_ro_param(req, "flags", sizeof(int), &flags);

 errstr = gctl_issue(req);
 if (errstr != ((void*)0))
  warnx("detach failed: %s", errstr);
 gctl_free(req);
}

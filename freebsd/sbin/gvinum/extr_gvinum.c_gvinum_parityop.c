
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;


 int GV_FLAG_F ;
 int GV_FLAG_V ;
 int gctl_free (struct gctl_req*) ;
 struct gctl_req* gctl_get_handle () ;
 char* gctl_issue (struct gctl_req*) ;
 int gctl_ro_param (struct gctl_req*,char*,int,...) ;
 int getopt (int,char* const*,char*) ;
 int optind ;
 int optreset ;
 int warn (char*,char const*) ;
 int warnx (char*,...) ;

__attribute__((used)) static void
gvinum_parityop(int argc, char * const *argv, int rebuild)
{
 struct gctl_req *req;
 int flags, i;
 const char *errstr;
 const char *op;

 if (rebuild) {
  op = "rebuildparity";
 } else {
  op = "checkparity";
 }

 optreset = 1;
 optind = 1;
 flags = 0;
 while ((i = getopt(argc, argv, "fv")) != -1) {
  switch (i) {
  case 'f':
   flags |= GV_FLAG_F;
   break;
  case 'v':
   flags |= GV_FLAG_V;
   break;
  default:
   warnx("invalid flag '%c'", i);
   return;
  }
 }
 argc -= optind;
 argv += optind;

 if (argc != 1) {
  warn("usage: %s [-f] [-v] <plex>", op);
  return;
 }

 req = gctl_get_handle();
 gctl_ro_param(req, "class", -1, "VINUM");
 gctl_ro_param(req, "verb", -1, op);
 gctl_ro_param(req, "rebuild", sizeof(int), &rebuild);
 gctl_ro_param(req, "flags", sizeof(int), &flags);
 gctl_ro_param(req, "plex", -1, argv[0]);

 errstr = gctl_issue(req);
 if (errstr)
  warnx("%s\n", errstr);
 gctl_free(req);
}

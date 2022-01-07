
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
typedef int config ;
typedef int buf ;


 int GV_CFG_LEN ;
 int GV_FLAG_R ;
 int GV_FLAG_S ;
 int GV_FLAG_V ;
 int GV_FLAG_VV ;
 int gctl_free (struct gctl_req*) ;
 struct gctl_req* gctl_get_handle () ;
 char* gctl_issue (struct gctl_req*) ;
 int gctl_ro_param (struct gctl_req*,char*,int,...) ;
 int gctl_rw_param (struct gctl_req*,char*,int,char*) ;
 int getopt (int,char* const*,char*) ;
 int optind ;
 int optreset ;
 int printf (char*,char*) ;
 int snprintf (char*,int,char*,int) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static void
gvinum_list(int argc, char * const *argv)
{
 struct gctl_req *req;
 int flags, i, j;
 const char *errstr;
 char buf[20], config[GV_CFG_LEN + 1];
 const char *cmd;

 flags = 0;
 cmd = "list";

 if (argc) {
  optreset = 1;
  optind = 1;
  cmd = argv[0];
  while ((j = getopt(argc, argv, "rsvV")) != -1) {
   switch (j) {
   case 'r':
    flags |= GV_FLAG_R;
    break;
   case 's':
    flags |= GV_FLAG_S;
    break;
   case 'v':
    flags |= GV_FLAG_V;
    break;
   case 'V':
    flags |= GV_FLAG_V;
    flags |= GV_FLAG_VV;
    break;
   case '?':
   default:
    return;
   }
  }
  argc -= optind;
  argv += optind;

 }

 req = gctl_get_handle();
 gctl_ro_param(req, "class", -1, "VINUM");
 gctl_ro_param(req, "verb", -1, "list");
 gctl_ro_param(req, "cmd", -1, cmd);
 gctl_ro_param(req, "argc", sizeof(int), &argc);
 gctl_ro_param(req, "flags", sizeof(int), &flags);
 gctl_rw_param(req, "config", sizeof(config), config);
 if (argc) {
  for (i = 0; i < argc; i++) {
   snprintf(buf, sizeof(buf), "argv%d", i);
   gctl_ro_param(req, buf, -1, argv[i]);
  }
 }
 errstr = gctl_issue(req);
 if (errstr != ((void*)0)) {
  warnx("can't get configuration: %s", errstr);
  gctl_free(req);
  return;
 }

 printf("%s", config);
 gctl_free(req);
}

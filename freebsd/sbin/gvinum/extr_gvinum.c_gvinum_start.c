
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
typedef int buf ;


 int atoi (int ) ;
 int gctl_free (struct gctl_req*) ;
 struct gctl_req* gctl_get_handle () ;
 char* gctl_issue (struct gctl_req*) ;
 int gctl_ro_param (struct gctl_req*,char*,int,...) ;
 int getopt (int,char* const*,char*) ;
 int optarg ;
 int optind ;
 int optreset ;
 int snprintf (char*,int,char*,int) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static void
gvinum_start(int argc, char * const *argv)
{
 struct gctl_req *req;
 int i, initsize, j;
 const char *errstr;
 char buf[20];


 if (argc == 1)
  return;

 initsize = 0;

 optreset = 1;
 optind = 1;
 while ((j = getopt(argc, argv, "S")) != -1) {
  switch (j) {
  case 'S':
   initsize = atoi(optarg);
   break;
  default:
   return;
  }
 }
 argc -= optind;
 argv += optind;

 if (!initsize)
  initsize = 512;

 req = gctl_get_handle();
 gctl_ro_param(req, "class", -1, "VINUM");
 gctl_ro_param(req, "verb", -1, "start");
 gctl_ro_param(req, "argc", sizeof(int), &argc);
 gctl_ro_param(req, "initsize", sizeof(int), &initsize);
 if (argc) {
  for (i = 0; i < argc; i++) {
   snprintf(buf, sizeof(buf), "argv%d", i);
   gctl_ro_param(req, buf, -1, argv[i]);
  }
 }
 errstr = gctl_issue(req);
 if (errstr != ((void*)0)) {
  warnx("can't start: %s", errstr);
  gctl_free(req);
  return;
 }

 gctl_free(req);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
typedef char off_t ;
typedef int buf ;


 int BUFSIZ ;
 int GV_FLAG_F ;
 int GV_FLAG_S ;
 int GV_FLAG_V ;
 int GV_MAXVOLNAME ;
 int GV_TYPE_VOL ;
 char* create_drive (char* const) ;
 char* find_name (char*,int ,int ) ;
 int gctl_free (struct gctl_req*) ;
 struct gctl_req* gctl_get_handle () ;
 char* gctl_issue (struct gctl_req*) ;
 int gctl_ro_param (struct gctl_req*,char*,int,...) ;
 char gv_sizespec (char* const) ;
 int snprintf (char*,int,char*,int ) ;
 int strcmp (char const*,char*) ;
 int warnx (char*,char const*,char const*) ;

__attribute__((used)) static void
create_volume(int argc, char * const *argv, const char *verb)
{
 struct gctl_req *req;
 const char *errstr;
 char buf[BUFSIZ], *drivename, *volname;
 int drives, flags, i;
 off_t stripesize;

 flags = 0;
 drives = 0;
 volname = ((void*)0);
 stripesize = 262144;



 req = gctl_get_handle();
 gctl_ro_param(req, "class", -1, "VINUM");

 for (i = 1; i < argc; i++) {
  if (!strcmp(argv[i], "-f")) {
   flags |= GV_FLAG_F;
  } else if (!strcmp(argv[i], "-n")) {
   volname = argv[++i];
  } else if (!strcmp(argv[i], "-v")) {
   flags |= GV_FLAG_V;
  } else if (!strcmp(argv[i], "-s")) {
   flags |= GV_FLAG_S;
   if (!strcmp(verb, "raid5"))
    stripesize = gv_sizespec(argv[++i]);
  } else {

   snprintf(buf, sizeof(buf), "drive%d", drives++);


   drivename = create_drive(argv[i]);
   if (drivename == ((void*)0))
    goto bad;

   gctl_ro_param(req, buf, -1, drivename);
  }
 }

 gctl_ro_param(req, "stripesize", sizeof(off_t), &stripesize);


 if (volname == ((void*)0))
  volname = find_name("gvinumvolume", GV_TYPE_VOL, GV_MAXVOLNAME);


 gctl_ro_param(req, "verb", -1, verb);
 gctl_ro_param(req, "flags", sizeof(int), &flags);
 gctl_ro_param(req, "drives", sizeof(int), &drives);
 gctl_ro_param(req, "name", -1, volname);
 errstr = gctl_issue(req);
 if (errstr != ((void*)0))
  warnx("creating %s volume failed: %s", verb, errstr);
bad:
 gctl_free(req);
}

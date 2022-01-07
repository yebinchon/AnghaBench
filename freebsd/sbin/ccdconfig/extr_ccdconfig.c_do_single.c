
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
typedef int ileave ;
typedef int ccd ;
typedef int buf1 ;
typedef int argc ;


 int BUFSIZ ;
 int CCDF_LINUX ;
 int CCDF_MIRROR ;
 int CCDF_NO_OFFSET ;
 int CCDF_UNIFORM ;
 int CCD_CONFIGALL ;
 int CCD_UNCONFIG ;
 int CCD_UNCONFIGALL ;
 scalar_t__ ERANGE ;
 int _PATH_DEV ;
 int ccdconf ;
 scalar_t__ errno ;
 int flags_to_val (char*) ;
 int gctl_free (struct gctl_req*) ;
 struct gctl_req* gctl_get_handle () ;
 char* gctl_issue (struct gctl_req*) ;
 int gctl_ro_param (struct gctl_req*,char*,int,...) ;
 int gctl_rw_param (struct gctl_req*,char*,int,char*) ;
 int lineno ;
 int printf (char*,char*) ;
 int resolve_ccdname (char*) ;
 int sprintf (char*,char*,int) ;
 int strlen (int ) ;
 int strncmp (char*,int ,int ) ;
 scalar_t__ strtol (char*,char**,int) ;
 int usage () ;
 scalar_t__ verbose ;
 int warnx (char*,char const*,...) ;

__attribute__((used)) static int
do_single(int argc, char **argv, int action)
{
 char *cp, *cp2;
 int ccd, noflags = 0, i, ileave, flags = 0;
 struct gctl_req *grq;
 char const *errstr;
 char buf1[BUFSIZ];
 int ex;




 if (action == CCD_UNCONFIG || action == CCD_UNCONFIGALL) {
  ex = 0;
  for (; argc != 0;) {
   cp = *argv++; --argc;
   if ((ccd = resolve_ccdname(cp)) < 0) {
    warnx("invalid ccd name: %s", cp);
    continue;
   }
   grq = gctl_get_handle();
   gctl_ro_param(grq, "verb", -1, "destroy geom");
   gctl_ro_param(grq, "class", -1, "CCD");
   sprintf(buf1, "ccd%d", ccd);
   gctl_ro_param(grq, "geom", -1, buf1);
   errstr = gctl_issue(grq);
   if (errstr == ((void*)0)) {
    if (verbose)
     printf("%s unconfigured\n", cp);
    gctl_free(grq);
    continue;
   }
   warnx(
       "%s\nor possibly kernel and ccdconfig out of sync",
       errstr);
   ex = 1;
  }
  return (ex);
 }


 if (argc < 4) {
  if (argc == 3) {

   noflags = 1;
  } else {
   if (action == CCD_CONFIGALL) {
    warnx("%s: bad line: %d", ccdconf, lineno);
    return (1);
   } else
    usage();
  }
 }


 cp = *argv++; --argc;
 if ((ccd = resolve_ccdname(cp)) < 0) {
  warnx("invalid ccd name: %s", cp);
  return (1);
 }


 cp = *argv++; --argc;
 errno = 0;
 ileave = (int)strtol(cp, &cp2, 10);
 if ((errno == ERANGE) || (ileave < 0) || (*cp2 != '\0')) {
  warnx("invalid interleave factor: %s", cp);
  return (1);
 }

 if (noflags == 0) {

  cp = *argv++; --argc;
  if ((flags = flags_to_val(cp)) < 0) {
   warnx("invalid flags argument: %s", cp);
   return (1);
  }
 }
 grq = gctl_get_handle();
 gctl_ro_param(grq, "verb", -1, "create geom");
 gctl_ro_param(grq, "class", -1, "CCD");
 gctl_ro_param(grq, "unit", sizeof(ccd), &ccd);
 gctl_ro_param(grq, "ileave", sizeof(ileave), &ileave);
 if (flags & CCDF_UNIFORM)
  gctl_ro_param(grq, "uniform", -1, "");
 if (flags & CCDF_MIRROR)
  gctl_ro_param(grq, "mirror", -1, "");
 if (flags & CCDF_NO_OFFSET)
  gctl_ro_param(grq, "no_offset", -1, "");
 if (flags & CCDF_LINUX)
  gctl_ro_param(grq, "linux", -1, "");
 gctl_ro_param(grq, "nprovider", sizeof(argc), &argc);
 for (i = 0; i < argc; i++) {
  sprintf(buf1, "provider%d", i);
  cp = argv[i];
  if (!strncmp(cp, _PATH_DEV, strlen(_PATH_DEV)))
   cp += strlen(_PATH_DEV);
  gctl_ro_param(grq, buf1, -1, cp);
 }
 gctl_rw_param(grq, "output", sizeof(buf1), buf1);
 errstr = gctl_issue(grq);
 if (errstr == ((void*)0)) {
  if (verbose) {
   printf("%s", buf1);
  }
  gctl_free(grq);
  return (0);
 }
 warnx(
     "%s\nor possibly kernel and ccdconfig out of sync",
     errstr);
 return (1);
}

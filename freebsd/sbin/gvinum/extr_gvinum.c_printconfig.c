
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct utsname {char* nodename; } ;
struct gctl_req {int dummy; } ;
typedef int buf ;
typedef int FILE ;


 int GV_CFG_LEN ;
 char* ctime (int *) ;
 int fprintf (int *,char*,...) ;
 int gctl_free (struct gctl_req*) ;
 struct gctl_req* gctl_get_handle () ;
 char* gctl_issue (struct gctl_req*) ;
 int gctl_ro_param (struct gctl_req*,char*,int,char const*) ;
 int gctl_rw_param (struct gctl_req*,char*,int,char*) ;
 int time (int *) ;
 int uname (struct utsname*) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static void
printconfig(FILE *of, const char *comment)
{
 struct gctl_req *req;
 struct utsname uname_s;
 const char *errstr;
 time_t now;
 char buf[GV_CFG_LEN + 1];

 uname(&uname_s);
 time(&now);

 req = gctl_get_handle();
 gctl_ro_param(req, "class", -1, "VINUM");
 gctl_ro_param(req, "verb", -1, "getconfig");
 gctl_ro_param(req, "comment", -1, comment);
 gctl_rw_param(req, "config", sizeof(buf), buf);
 errstr = gctl_issue(req);
 if (errstr != ((void*)0)) {
  warnx("can't get configuration: %s", errstr);
  return;
 }
 gctl_free(req);

 fprintf(of, "# Vinum configuration of %s, saved at %s",
     uname_s.nodename,
     ctime(&now));

 if (*comment != '\0')
     fprintf(of, "# Current configuration:\n");

 fprintf(of, "%s", buf);
}

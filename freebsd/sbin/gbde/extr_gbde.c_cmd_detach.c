
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;


 int BUFSIZ ;
 int errx (int,char*,char const*,char const*) ;
 int exit (int ) ;
 struct gctl_req* gctl_get_handle () ;
 char* gctl_issue (struct gctl_req*) ;
 int gctl_ro_param (struct gctl_req*,char*,int,char*) ;
 int sprintf (char*,char*,char const*) ;

__attribute__((used)) static void
cmd_detach(const char *dest)
{
 struct gctl_req *r;
 const char *errstr;
 char buf[BUFSIZ];

 r = gctl_get_handle();
 gctl_ro_param(r, "verb", -1, "destroy geom");
 gctl_ro_param(r, "class", -1, "BDE");
 sprintf(buf, "%s.bde", dest);
 gctl_ro_param(r, "geom", -1, buf);

 errstr = gctl_issue(r);
 if (errstr != ((void*)0))
  errx(1, "Detach of %s failed: %s", dest, errstr);
 exit (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;


 int gctl_free (struct gctl_req*) ;
 struct gctl_req* gctl_get_handle () ;
 char* gctl_issue (struct gctl_req*) ;
 int gctl_ro_param (struct gctl_req*,char*,int,char*) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static void
gvinum_saveconfig(void)
{
 struct gctl_req *req;
 const char *errstr;

 req = gctl_get_handle();
 gctl_ro_param(req, "class", -1, "VINUM");
 gctl_ro_param(req, "verb", -1, "saveconfig");
 errstr = gctl_issue(req);
 if (errstr != ((void*)0))
  warnx("can't save configuration: %s", errstr);
 gctl_free(req);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;


 unsigned int G_FLAG_VERBOSE ;
 int eli_attach (struct gctl_req*) ;
 int eli_backup (struct gctl_req*) ;
 int eli_clear (struct gctl_req*) ;
 int eli_configure (struct gctl_req*) ;
 int eli_delkey (struct gctl_req*) ;
 int eli_dump (struct gctl_req*) ;
 int eli_init (struct gctl_req*) ;
 int eli_kill (struct gctl_req*) ;
 int eli_protect (struct gctl_req*) ;
 int eli_resize (struct gctl_req*) ;
 int eli_restore (struct gctl_req*) ;
 int eli_resume (struct gctl_req*) ;
 int eli_setkey (struct gctl_req*) ;
 int eli_version (struct gctl_req*) ;
 int gctl_error (struct gctl_req*,char*,char const*) ;
 char* gctl_get_ascii (struct gctl_req*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int verbose ;

__attribute__((used)) static void
eli_main(struct gctl_req *req, unsigned int flags)
{
 const char *name;

 if (eli_protect(req) == -1)
  return;

 if ((flags & G_FLAG_VERBOSE) != 0)
  verbose = 1;

 name = gctl_get_ascii(req, "verb");
 if (name == ((void*)0)) {
  gctl_error(req, "No '%s' argument.", "verb");
  return;
 }
 if (strcmp(name, "init") == 0 || strcmp(name, "label") == 0)
  eli_init(req);
 else if (strcmp(name, "attach") == 0)
  eli_attach(req);
 else if (strcmp(name, "configure") == 0)
  eli_configure(req);
 else if (strcmp(name, "setkey") == 0)
  eli_setkey(req);
 else if (strcmp(name, "delkey") == 0)
  eli_delkey(req);
 else if (strcmp(name, "resume") == 0)
  eli_resume(req);
 else if (strcmp(name, "kill") == 0)
  eli_kill(req);
 else if (strcmp(name, "backup") == 0)
  eli_backup(req);
 else if (strcmp(name, "restore") == 0)
  eli_restore(req);
 else if (strcmp(name, "resize") == 0)
  eli_resize(req);
 else if (strcmp(name, "version") == 0)
  eli_version(req);
 else if (strcmp(name, "dump") == 0)
  eli_dump(req);
 else if (strcmp(name, "clear") == 0)
  eli_clear(req);
 else
  gctl_error(req, "Unknown command: %s.", name);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;


 unsigned int G_FLAG_VERBOSE ;
 int gctl_error (struct gctl_req*,char*,char const*) ;
 char* gctl_get_ascii (struct gctl_req*,char*) ;
 int raid3_clear (struct gctl_req*) ;
 int raid3_dump (struct gctl_req*) ;
 int raid3_label (struct gctl_req*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int verbose ;

__attribute__((used)) static void
raid3_main(struct gctl_req *req, unsigned flags)
{
 const char *name;

 if ((flags & G_FLAG_VERBOSE) != 0)
  verbose = 1;

 name = gctl_get_ascii(req, "verb");
 if (name == ((void*)0)) {
  gctl_error(req, "No '%s' argument.", "verb");
  return;
 }
 if (strcmp(name, "label") == 0)
  raid3_label(req);
 else if (strcmp(name, "clear") == 0)
  raid3_clear(req);
 else if (strcmp(name, "dump") == 0)
  raid3_dump(req);
 else
  gctl_error(req, "Unknown command: %s.", name);
}

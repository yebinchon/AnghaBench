
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;


 unsigned int G_FLAG_VERBOSE ;
 int gctl_error (struct gctl_req*,char*,char const*) ;
 char* gctl_get_ascii (struct gctl_req*,char*) ;
 int label_clear (struct gctl_req*) ;
 int label_dump (struct gctl_req*) ;
 int label_label (struct gctl_req*) ;
 int label_refresh (struct gctl_req*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int verbose ;

__attribute__((used)) static void
label_main(struct gctl_req *req, unsigned flags)
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
  label_label(req);
 else if (strcmp(name, "clear") == 0)
  label_clear(req);
 else if (strcmp(name, "dump") == 0)
  label_dump(req);
 else if (strcmp(name, "refresh") == 0)
  label_refresh(req);
 else
  gctl_error(req, "Unknown command: %s.", name);
}

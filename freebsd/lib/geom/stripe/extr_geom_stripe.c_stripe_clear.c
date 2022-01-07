
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;


 int G_STRIPE_MAGIC ;
 int fprintf (int ,char*,char const*,char*) ;
 int g_metadata_clear (char const*,int ) ;
 int gctl_error (struct gctl_req*,char*) ;
 char* gctl_get_ascii (struct gctl_req*,char*,int) ;
 int gctl_get_int (struct gctl_req*,char*) ;
 int printf (char*,char const*) ;
 int stderr ;
 char* strerror (int) ;
 scalar_t__ verbose ;

__attribute__((used)) static void
stripe_clear(struct gctl_req *req)
{
 const char *name;
 int error, i, nargs;

 nargs = gctl_get_int(req, "nargs");
 if (nargs < 1) {
  gctl_error(req, "Too few arguments.");
  return;
 }

 for (i = 0; i < nargs; i++) {
  name = gctl_get_ascii(req, "arg%d", i);
  error = g_metadata_clear(name, G_STRIPE_MAGIC);
  if (error != 0) {
   fprintf(stderr, "Can't clear metadata on %s: %s.\n",
       name, strerror(error));
   gctl_error(req, "Not fully done.");
   continue;
  }
  if (verbose)
   printf("Metadata cleared on %s.\n", name);
 }
}

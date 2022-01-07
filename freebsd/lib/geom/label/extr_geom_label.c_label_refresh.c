
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;


 int errno ;
 int g_close (int) ;
 int g_open (char const*,int) ;
 int gctl_error (struct gctl_req*,char*) ;
 char* gctl_get_ascii (struct gctl_req*,char*,int) ;
 int gctl_get_int (struct gctl_req*,char*) ;
 int printf (char*,char const*,...) ;
 char* strerror (int ) ;

__attribute__((used)) static void
label_refresh(struct gctl_req *req)
{
 const char *name;
 int i, nargs, fd;

 nargs = gctl_get_int(req, "nargs");
 if (nargs < 1) {
  gctl_error(req, "Too few arguments.");
  return;
 }

 for (i = 0; i < nargs; i++) {
  name = gctl_get_ascii(req, "arg%d", i);
  fd = g_open(name, 1);
  if (fd == -1) {
   printf("Can't refresh metadata from %s: %s.\n",
       name, strerror(errno));
  } else {
   printf("Metadata from %s refreshed.\n", name);
   (void)g_close(fd);
  }
 }
}

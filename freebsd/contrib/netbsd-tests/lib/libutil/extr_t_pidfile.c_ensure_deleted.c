
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int R_OK ;
 int access (char const*,int ) ;
 int atf_tc_fail (char*,char const*) ;
 int errx (int ,char*,char const*) ;
 scalar_t__ in_child ;
 int printf (char*,char const*) ;
 int unlink (char const*) ;

__attribute__((used)) static void
ensure_deleted(const char *path)
{
 printf("Ensuring pidfile %s does not exist any more\n", path);
 if (access(path, R_OK) != -1) {
  unlink(path);
  if (in_child)
   errx(EXIT_FAILURE, "The pidfile %s was not deleted",
       path);
  else
   atf_tc_fail("The pidfile %s was not deleted", path);
 }
}

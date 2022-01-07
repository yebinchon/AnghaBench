
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int _PATH_VARRUN ;
 int asprintf (char**,char*,int ,char const*) ;
 int atf_tc_fail (char*) ;
 int errx (int ,char*) ;
 char const* getprogname () ;
 scalar_t__ in_child ;

__attribute__((used)) static char *
generate_varrun_pidfile(const char *basename)
{
 char *path;

 if (asprintf(&path, "%s%s.pid", _PATH_VARRUN,
     basename == ((void*)0) ? getprogname() : basename) == -1) {
  if (in_child)
   errx(EXIT_FAILURE, "Cannot allocate memory for path");
  else
   atf_tc_fail("Cannot allocate memory for path");
 }

 return path;
}

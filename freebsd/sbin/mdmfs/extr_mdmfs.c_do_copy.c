
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chdir (char const*) ;
 int err (int,char*,char const*) ;
 int errx (int,char*) ;
 int run (int *,char*,char const*) ;

__attribute__((used)) static void
do_copy(const char *mtpoint, const char *skel)
{
 int rv;

 rv = chdir(skel);
 if (rv != 0)
  err(1, "chdir to %s", skel);
 rv = run(((void*)0), "/bin/pax -rw -pe . %s", mtpoint);
 if (rv != 0)
  errx(1, "skel copy failed");
}

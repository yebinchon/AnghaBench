
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int errx (int ,char*) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static void
usage(const char *cp)
{
 if (cp != ((void*)0))
  warnx("bad keyword: %s", cp);
 errx(EX_USAGE, "usage: route [-46dnqtv] command [[modifiers] args]");

}

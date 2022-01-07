
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* lafe_progname ;
 char const* strrchr (char const*,char) ;

void
lafe_setprogname(const char *name, const char *defaultname)
{

 if (name == ((void*)0))
  name = defaultname;




 lafe_progname = strrchr(name, '/');
 if (lafe_progname != ((void*)0))
  lafe_progname++;
 else
  lafe_progname = name;
}

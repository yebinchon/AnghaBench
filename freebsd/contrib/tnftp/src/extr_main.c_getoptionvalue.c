
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* value; } ;


 int errx (int,char*,...) ;
 struct option* getoption (char const*) ;

char *
getoptionvalue(const char *name)
{
 struct option *c;

 if (name == ((void*)0))
  errx(1, "getoptionvalue: invoked with NULL name");
 c = getoption(name);
 if (c != ((void*)0))
  return (c->value);
 errx(1, "getoptionvalue: invoked with unknown option `%s'", name);

}

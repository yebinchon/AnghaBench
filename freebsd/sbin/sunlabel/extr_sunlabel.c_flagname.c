
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tags {unsigned int id; char const* name; } ;


 struct tags* knownflags ;
 size_t nitems (struct tags*) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static const char *
flagname(unsigned int flag)
{
 static char buf[32];
 size_t i;
 struct tags *tp;

 for (i = 0, tp = knownflags; i < nitems(knownflags); i++, tp++)
  if (tp->id == flag)
   return (tp->name);

 sprintf(buf, "%u", flag);

 return (buf);
}

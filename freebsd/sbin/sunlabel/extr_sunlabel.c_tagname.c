
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tags {unsigned int id; char const* name; } ;


 struct tags* knowntags ;
 size_t nitems (struct tags*) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static const char *
tagname(unsigned int tag)
{
 static char buf[32];
 size_t i;
 struct tags *tp;

 for (i = 0, tp = knowntags; i < nitems(knowntags); i++, tp++)
  if (tp->id == tag)
   return (tp->name);

 sprintf(buf, "%u", tag);

 return (buf);
}

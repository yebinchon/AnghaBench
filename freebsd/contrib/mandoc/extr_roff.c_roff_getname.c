
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff {int dummy; } ;


 int MANDOCERR_NAMESC ;
 int mandoc_escape (char const**,int *,int *) ;
 int mandoc_msg (int ,int,int,char*,int,char*) ;

__attribute__((used)) static size_t
roff_getname(struct roff *r, char **cpp, int ln, int pos)
{
 char *name, *cp;
 size_t namesz;

 name = *cpp;
 if (*name == '\0')
  return 0;



 for (cp = name; 1; cp++) {
  namesz = cp - name;
  if (*cp == '\0')
   break;
  if (*cp == ' ' || *cp == '\t') {
   cp++;
   break;
  }
  if (*cp != '\\')
   continue;
  if (cp[1] == '{' || cp[1] == '}')
   break;
  if (*++cp == '\\')
   continue;
  mandoc_msg(MANDOCERR_NAMESC, ln, pos,
      "%.*s", (int)(cp - name + 1), name);
  mandoc_escape((const char **)&cp, ((void*)0), ((void*)0));
  break;
 }



 while (*cp == ' ')
  cp++;

 *cpp = cp;
 return namesz;
}

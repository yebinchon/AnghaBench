
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cleanchr (char**,unsigned char const) ;
 unsigned char* realloc (unsigned char*,int) ;

__attribute__((used)) static const char *
cleanstr(const unsigned char *s, int l)
{
 static unsigned char * tmp = ((void*)0);
 static int tmplen = 0;

 if (tmplen < l * 4 + 1)
  tmp = realloc(tmp, tmplen = l * 4 + 1);

 if (tmp == ((void*)0)) {
  tmplen = 0;
  return "(mem alloc error)";
 } else {
  int i = 0;
  char * p = tmp;

  while (i < l)
   cleanchr(&p, s[i++]);
  *p = '\0';
 }

 return tmp;
}

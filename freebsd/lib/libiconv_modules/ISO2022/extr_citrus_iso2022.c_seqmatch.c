
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seqtable {int* chars; int len; } ;







 int isecma (char const) ;
 int isinterm (char const) ;
 int strchr (char*,char const) ;

__attribute__((used)) static int
seqmatch(const char * __restrict s, size_t n,
    const struct seqtable * __restrict sp)
{
 const int *p;

 p = sp->chars;
 while ((size_t)(p - sp->chars) < n && p - sp->chars < sp->len) {
  switch (*p) {
  case 130:
   if (!isecma(*s))
    goto terminate;
   break;
  case 128:
   if (*s && strchr("@AB", *s))
    break;
   else
    goto terminate;
  case 129:
   if (!isinterm(*s))
    goto terminate;
   break;
  case 132:
   if (*s && strchr("()*+", *s))
    break;
   else
    goto terminate;
  case 131:
   if (*s && strchr(",-./", *s))
    break;
   else
    goto terminate;
  default:
   if (*s != *p)
    goto terminate;
   break;
  }

  p++;
  s++;
 }

terminate:
 return (p - sp->chars);
}

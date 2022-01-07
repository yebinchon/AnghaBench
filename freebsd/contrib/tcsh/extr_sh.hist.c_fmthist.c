
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Hist {int Hlex; int histline; int Hnum; } ;
typedef struct Hist* ptr_t ;
typedef char Char ;


 int HistLit ;
 int MB_LEN_MAX ;
 int Strlen (char*) ;
 int one_wctomb (char*,char) ;
 char* sprlex (int *) ;
 char* xasprintf (char*,int ) ;
 int xfree (char*) ;
 char* xmalloc (int) ;

char *
fmthist(int fmt, ptr_t ptr)
{
    struct Hist *hp = ptr;
    char *buf;

    switch (fmt) {
    case 'h':
 return xasprintf("%6d", hp->Hnum);
    case 'R':
 if (HistLit && hp->histline)
     return xasprintf("%S", hp->histline);
 else {
     Char *istr, *ip;
     char *p;

     istr = sprlex(&hp->Hlex);
     buf = xmalloc(Strlen(istr) * MB_LEN_MAX + 1);

     for (p = buf, ip = istr; *ip != '\0'; ip++)
  p += one_wctomb(p, *ip);

     *p = '\0';
     xfree(istr);
     return buf;
 }
    default:
 buf = xmalloc(1);
 buf[0] = '\0';
 return buf;
    }
}

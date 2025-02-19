
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_BACKR ;
 int REG_EXTENDED ;
 int REG_ICASE ;
 int REG_LARGE ;
 int REG_NEWLINE ;
 int REG_NOSPEC ;
 int REG_NOSUB ;
 int REG_NOTBOL ;
 int REG_NOTEOL ;
 int REG_PEND ;
 int REG_STARTEND ;
 int REG_TRACE ;
 int copts ;
 int eopts ;
 int * strchr (char*,char) ;

int
options(int type, char *s)
{
 char *p;
 int o = (type == 'c') ? copts : eopts;
 char *legal = (type == 'c') ? "bisnmp" : "^$#tl";

 for (p = s; *p != '\0'; p++)
  if (strchr(legal, *p) != ((void*)0))
   switch (*p) {
   case 'b':
    o &= ~REG_EXTENDED;
    break;
   case 'i':
    o |= REG_ICASE;
    break;
   case 's':
    o |= REG_NOSUB;
    break;
   case 'n':
    o |= REG_NEWLINE;
    break;
   case 'm':
    o &= ~REG_EXTENDED;
    o |= REG_NOSPEC;
    break;
   case 'p':
    o |= REG_PEND;
    break;
   case '^':
    o |= REG_NOTBOL;
    break;
   case '$':
    o |= REG_NOTEOL;
    break;
   case '#':
    o |= REG_STARTEND;
    break;
   case 't':
    o |= REG_TRACE;
    break;
   case 'l':
    o |= REG_LARGE;
    break;
   case 'r':
    o |= REG_BACKR;
    break;
   }
 return(o);
}

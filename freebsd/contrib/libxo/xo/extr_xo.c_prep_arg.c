
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
prep_arg (char *fmt)
{
    char *cp, *fp;

    for (cp = fp = fmt; *cp; cp++, fp++) {
 if (*cp != '\\') {
     if (cp != fp)
  *fp = *cp;
     continue;
 }

 switch (*++cp) {
 case 'n':
     *fp = '\n';
     break;

 case 'r':
     *fp = '\r';
     break;

 case 'b':
     *fp = '\b';
     break;

 case 'e':
     *fp = '\e';
     break;

 default:
     *fp = *cp;
 }
    }

    *fp = '\0';
}

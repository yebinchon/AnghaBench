
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PERIOD ;
 int borderchar (int) ;
 int middlechar (int) ;
 scalar_t__ periodchar (int) ;
 int strlen (char const*) ;
 scalar_t__ whitechar (int) ;

int
check_search(const char *srch)
{
        int pch = PERIOD, ch = *srch++;
 int domains = 1;


 if (strlen(srch) > 256)
  return (0);

 while (whitechar(ch))
  ch = *srch++;

        while (ch != '\0') {
                int nch = *srch++;

                if (periodchar(ch) || whitechar(ch)) {
                        ;
                } else if (periodchar(pch)) {
                        if (!borderchar(ch))
                                return (0);
                } else if (periodchar(nch) || nch == '\0') {
                        if (!borderchar(ch))
                                return (0);
                } else {
                        if (!middlechar(ch))
                                return (0);
                }
  if (!whitechar(ch)) {
   pch = ch;
  } else {
   while (whitechar(nch)) {
    nch = *srch++;
   }
   if (nch != '\0')
    domains++;
   pch = PERIOD;
  }
  ch = nch;
        }

 if (domains > 6)
  return (0);
        return (1);
}

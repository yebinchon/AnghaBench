
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FPARSELN_UNESCALL ;
 int FPARSELN_UNESCCOMM ;
 int FPARSELN_UNESCCONT ;
 int FPARSELN_UNESCESC ;
 int FPARSELN_UNESCREST ;
 int _DIAGASSERT (int ) ;
 char* fgetln (int *,size_t*) ;
 int free (char*) ;
 int isescaped (char*,char*,char) ;
 int memcpy (char*,char*,size_t) ;
 char* realloc (char*,size_t) ;
 int * strchr (char*,char) ;
 size_t strlen (char*) ;

char *
fparseln(FILE *fp, size_t *size, size_t *lineno, const char str[3], int flags)
{
 static const char dstr[3] = { '\\', '\\', '#' };

 size_t s, len;
 char *buf;
 char *ptr, *cp;
 int cnt;
 char esc, con, nl, com;





 len = 0;
 buf = ((void*)0);
 cnt = 1;

 if (str == ((void*)0))
  str = dstr;

 esc = str[0];
 con = str[1];
 com = str[2];




 nl = '\n';

 while (cnt) {
  cnt = 0;

  if (lineno)
   (*lineno)++;

  if ((ptr = fgetln(fp, &s)) == ((void*)0))
   break;

  if (s && com) {
   for (cp = ptr; cp < ptr + s; cp++)
    if (*cp == com && !isescaped(ptr, cp, esc)) {
     s = cp - ptr;
     cnt = s == 0 && buf == ((void*)0);
     break;
    }
  }

  if (s && nl) {
   cp = &ptr[s - 1];

   if (*cp == nl)
    s--;
  }

  if (s && con) {
   cp = &ptr[s - 1];

   if (*cp == con && !isescaped(ptr, cp, esc)) {
    s--;
    cnt = 1;
   }
  }

  if (s == 0) {




   if (cnt || buf != ((void*)0))
    continue;
  }

  if ((cp = realloc(buf, len + s + 1)) == ((void*)0)) {
   free(buf);
   return ((void*)0);
  }
  buf = cp;

  (void) memcpy(buf + len, ptr, s);
  len += s;
  buf[len] = '\0';
 }

 if ((flags & FPARSELN_UNESCALL) != 0 && esc && buf != ((void*)0) &&
     strchr(buf, esc) != ((void*)0)) {
  ptr = cp = buf;
  while (cp[0] != '\0') {
   int skipesc;

   while (cp[0] != '\0' && cp[0] != esc)
    *ptr++ = *cp++;
   if (cp[0] == '\0' || cp[1] == '\0')
    break;

   skipesc = 0;
   if (cp[1] == com)
    skipesc += (flags & FPARSELN_UNESCCOMM);
   if (cp[1] == con)
    skipesc += (flags & FPARSELN_UNESCCONT);
   if (cp[1] == esc)
    skipesc += (flags & FPARSELN_UNESCESC);
   if (cp[1] != com && cp[1] != con && cp[1] != esc)
    skipesc = (flags & FPARSELN_UNESCREST);

   if (skipesc)
    cp++;
   else
    *ptr++ = *cp++;
   *ptr++ = *cp++;
  }
  *ptr = '\0';
  len = strlen(buf);
 }

 if (size)
  *size = len;
 return buf;
}

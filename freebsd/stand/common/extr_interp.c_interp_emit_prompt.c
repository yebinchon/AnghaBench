
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* getenv (char*) ;
 int printf (char*,char*) ;
 int putchar (char) ;
 char* strdup (char*) ;

void
interp_emit_prompt(void)
{
 char *pr, *p, *cp, *ev;

 if ((cp = getenv("prompt")) == ((void*)0))
  cp = ">";
 pr = p = strdup(cp);

 while (*p != 0) {
  if ((*p == '$') && (*(p+1) == '{')) {
   for (cp = p + 2; (*cp != 0) && (*cp != '}'); cp++)
    ;
   *cp = 0;
   ev = getenv(p + 2);

   if (ev != ((void*)0))
    printf("%s", ev);
   p = cp + 1;
   continue;
  }
  putchar(*p++);
 }
 putchar(' ');
 free(pr);
}

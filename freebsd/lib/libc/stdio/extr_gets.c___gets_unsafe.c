
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int w ;


 int EOF ;
 int FLOCKFILE_CANCELSAFE (int ) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 int ORIENT (int ,int) ;
 int STDERR_FILENO ;
 int __sgetc (int ) ;
 int _write (int ,char const*,int) ;
 int stdin ;

char *
__gets_unsafe(char *buf)
{
 int c;
 char *s, *ret;
 static int warned;
 static const char w[] =
     "warning: this program uses gets(), which is unsafe.\n";

 FLOCKFILE_CANCELSAFE(stdin);
 ORIENT(stdin, -1);
 if (!warned) {
  (void) _write(STDERR_FILENO, w, sizeof(w) - 1);
  warned = 1;
 }
 for (s = buf; (c = __sgetc(stdin)) != '\n'; ) {
  if (c == EOF) {
   if (s == buf) {
    ret = ((void*)0);
    goto end;
   } else
    break;
  } else
   *s++ = c;
 }
 *s = 0;
 ret = buf;
end:
 FUNLOCKFILE_CANCELSAFE();
 return (ret);
}

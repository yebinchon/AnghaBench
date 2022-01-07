
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int termbuf ;
struct termcapstr {int dummy; } ;
struct TYPE_4__ {char** t_str; int t_loc; char* t_buf; } ;
struct TYPE_5__ {TYPE_1__ el_terminal; int el_errfile; } ;
typedef TYPE_2__ EditLine ;


 int TC_BUFSIZE ;
 size_t T_str ;
 int fprintf (int ,char*) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;
 struct termcapstr const* tstr ;

__attribute__((used)) static void
terminal_alloc(EditLine *el, const struct termcapstr *t, const char *cap)
{
 char termbuf[TC_BUFSIZE];
 size_t tlen, clen;
 char **tlist = el->el_terminal.t_str;
 char **tmp, **str = &tlist[t - tstr];

 (void) memset(termbuf, 0, sizeof(termbuf));
 if (cap == ((void*)0) || *cap == '\0') {
  *str = ((void*)0);
  return;
 } else
  clen = strlen(cap);

 tlen = *str == ((void*)0) ? 0 : strlen(*str);




 if (clen <= tlen) {
  if (*str)
   (void) strcpy(*str, cap);
  return;
 }



 if (el->el_terminal.t_loc + 3 < TC_BUFSIZE) {

  (void) strcpy(*str = &el->el_terminal.t_buf[
      el->el_terminal.t_loc], cap);
  el->el_terminal.t_loc += clen + 1;
  return;
 }




 tlen = 0;
 for (tmp = tlist; tmp < &tlist[T_str]; tmp++)
  if (*tmp != ((void*)0) && **tmp != '\0' && *tmp != *str) {
   char *ptr;

   for (ptr = *tmp; *ptr != '\0'; termbuf[tlen++] = *ptr++)
    continue;
   termbuf[tlen++] = '\0';
  }
 memcpy(el->el_terminal.t_buf, termbuf, TC_BUFSIZE);
 el->el_terminal.t_loc = tlen;
 if (el->el_terminal.t_loc + 3 >= TC_BUFSIZE) {
  (void) fprintf(el->el_errfile,
      "Out of termcap string space.\n");
  return;
 }

 (void) strcpy(*str = &el->el_terminal.t_buf[el->el_terminal.t_loc],
     cap);
 el->el_terminal.t_loc += (size_t)clen + 1;
 return;
}

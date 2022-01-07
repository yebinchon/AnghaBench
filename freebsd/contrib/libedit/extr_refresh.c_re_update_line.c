
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef char wchar_t ;
struct TYPE_14__ {int h; } ;
struct TYPE_15__ {TYPE_1__ t_size; } ;
struct TYPE_16__ {TYPE_2__ el_terminal; } ;
typedef TYPE_3__ EditLine ;


 int ELRE_DEBUG (int,int ) ;
 int EL_CAN_DELETE ;
 int EL_CAN_INSERT ;
 int MIN_END_KEEP ;
 int __F ;
 int re__strncopy (char*,char*,size_t) ;
 int re_clear_eol (TYPE_3__*,int,int,int) ;
 int re_delete (TYPE_3__*,char*,int,int,int) ;
 int re_insert (TYPE_3__*,char*,int,int,char*,int) ;
 int re_printstr (TYPE_3__*,char*,char*,char*) ;
 int terminal_deletechars (TYPE_3__*,int) ;
 int terminal_insertwrite (TYPE_3__*,char*,int) ;
 int terminal_move_to_char (TYPE_3__*,int) ;
 int terminal_move_to_line (TYPE_3__*,int) ;
 int terminal_overwrite (TYPE_3__*,char*,size_t) ;

__attribute__((used)) static void
re_update_line(EditLine *el, wchar_t *old, wchar_t *new, int i)
{
 wchar_t *o, *n, *p, c;
 wchar_t *ofd, *ols, *oe, *nfd, *nls, *ne;
 wchar_t *osb, *ose, *nsb, *nse;
 int fx, sx;
 size_t len;




 for (o = old, n = new; *o && (*o == *n); o++, n++)
  continue;
 ofd = o;
 nfd = n;




 while (*o)
  o++;




 while (ofd < o) {
  if (o[-1] != ' ')
   break;
  o--;
 }
 oe = o;
 *oe = '\0';

 while (*n)
  n++;


 while (nfd < n) {
  if (n[-1] != ' ')
   break;
  n--;
 }
 ne = n;
 *ne = '\0';




 if (*ofd == '\0' && *nfd == '\0') {
  ELRE_DEBUG(1, (__F, "no difference.\r\n"));
  return;
 }



 while ((o > ofd) && (n > nfd) && (*--o == *--n))
  continue;
 ols = ++o;
 nls = ++n;




 osb = ols;
 nsb = nls;
 ose = ols;
 nse = nls;




 if (*ofd) {
  for (c = *ofd, n = nfd; n < nls; n++) {
   if (c == *n) {
    for (o = ofd, p = n;
        p < nls && o < ols && *o == *p;
        o++, p++)
     continue;




    if (((nse - nsb) < (p - n)) &&
        (2 * (p - n) > n - nfd)) {
     nsb = n;
     nse = p;
     osb = ofd;
     ose = o;
    }
   }
  }
 }



 if (*nfd) {
  for (c = *nfd, o = ofd; o < ols; o++) {
   if (c == *o) {
    for (n = nfd, p = o;
        p < ols && n < nls && *p == *n;
        p++, n++)
     continue;




    if (((ose - osb) < (p - o)) &&
        (2 * (p - o) > o - ofd)) {
     nsb = nfd;
     nse = n;
     osb = o;
     ose = p;
    }
   }
  }
 }




 if ((oe - ols) < MIN_END_KEEP) {
  ols = oe;
  nls = ne;
 }
 fx = (int)((nsb - nfd) - (osb - ofd));




 sx = (int)((nls - nse) - (ols - ose));

 if (!EL_CAN_INSERT) {
  if (fx > 0) {
   osb = ols;
   ose = ols;
   nsb = nls;
   nse = nls;
  }
  if (sx > 0) {
   ols = oe;
   nls = ne;
  }
  if ((ols - ofd) < (nls - nfd)) {
   ols = oe;
   nls = ne;
  }
 }
 if (!EL_CAN_DELETE) {
  if (fx < 0) {
   osb = ols;
   ose = ols;
   nsb = nls;
   nse = nls;
  }
  if (sx < 0) {
   ols = oe;
   nls = ne;
  }
  if ((ols - ofd) > (nls - nfd)) {
   ols = oe;
   nls = ne;
  }
 }






 if ((ose - osb) < MIN_END_KEEP) {
  osb = ols;
  ose = ols;
  nsb = nls;
  nse = nls;
 }



 fx = (int)((nsb - nfd) - (osb - ofd));
 sx = (int)((nls - nse) - (ols - ose));

 ELRE_DEBUG(1, (__F, "fx %d, sx %d\n", fx, sx));
 ELRE_DEBUG(1, (__F, "ofd %td, osb %td, ose %td, ols %td, oe %td\n",
  ofd - old, osb - old, ose - old, ols - old, oe - old));
 ELRE_DEBUG(1, (__F, "nfd %td, nsb %td, nse %td, nls %td, ne %td\n",
  nfd - new, nsb - new, nse - new, nls - new, ne - new));
 ELRE_DEBUG(1, (__F,
  "xxx-xxx:\"00000000001111111111222222222233333333334\"\r\n"));
 ELRE_DEBUG(1, (__F,
  "xxx-xxx:\"01234567890123456789012345678901234567890\"\r\n"));
 terminal_move_to_line(el, i);
 p = (ols != oe) ? oe : ose;
 if ((nsb != nfd) && fx > 0 &&
     ((p - old) + fx <= el->el_terminal.t_size.h)) {
  ELRE_DEBUG(1,
      (__F, "first diff insert at %td...\r\n", nfd - new));



  terminal_move_to_char(el, (int)(nfd - new));



  if (nsb != ne) {
   ELRE_DEBUG(1, (__F, "with stuff to keep at end\r\n"));



   if (fx > 0) {
    ELRE_DEBUG(!EL_CAN_INSERT, (__F,
    "ERROR: cannot insert in early first diff\n"));
    terminal_insertwrite(el, nfd, fx);
    re_insert(el, old, (int)(ofd - old),
        el->el_terminal.t_size.h, nfd, fx);
   }




   len = (size_t) ((nsb - nfd) - fx);
   terminal_overwrite(el, (nfd + fx), len);
   re__strncopy(ofd + fx, nfd + fx, len);
  } else {
   ELRE_DEBUG(1, (__F, "without anything to save\r\n"));
   len = (size_t)(nsb - nfd);
   terminal_overwrite(el, nfd, len);
   re__strncopy(ofd, nfd, len);



   return;
  }
 } else if (fx < 0) {
  ELRE_DEBUG(1,
      (__F, "first diff delete at %td...\r\n", ofd - old));



  terminal_move_to_char(el, (int)(ofd - old));



  if (osb != oe) {
   ELRE_DEBUG(1, (__F, "with stuff to save at end\r\n"));




   if (fx < 0) {
    ELRE_DEBUG(!EL_CAN_DELETE, (__F,
        "ERROR: cannot delete in first diff\n"));
    terminal_deletechars(el, -fx);
    re_delete(el, old, (int)(ofd - old),
        el->el_terminal.t_size.h, -fx);
   }



   len = (size_t) (nsb - nfd);
   terminal_overwrite(el, nfd, len);
   re__strncopy(ofd, nfd, len);

  } else {
   ELRE_DEBUG(1, (__F,
       "but with nothing left to save\r\n"));



   terminal_overwrite(el, nfd, (size_t)(nsb - nfd));
   re_clear_eol(el, fx, sx,
       (int)((oe - old) - (ne - new)));



   return;
  }
 } else
  fx = 0;

 if (sx < 0 && (ose - old) + fx < el->el_terminal.t_size.h) {
  ELRE_DEBUG(1, (__F,
      "second diff delete at %td...\r\n", (ose - old) + fx));







  terminal_move_to_char(el, (int)((ose - old) + fx));



  if (ols != oe) {
   ELRE_DEBUG(1, (__F, "with stuff to save at end\r\n"));



   if (sx < 0) {
    ELRE_DEBUG(!EL_CAN_DELETE, (__F,
        "ERROR: cannot delete in second diff\n"));
    terminal_deletechars(el, -sx);
   }



   terminal_overwrite(el, nse, (size_t)(nls - nse));
  } else {
   ELRE_DEBUG(1, (__F,
       "but with nothing left to save\r\n"));
   terminal_overwrite(el, nse, (size_t)(nls - nse));
   re_clear_eol(el, fx, sx,
       (int)((oe - old) - (ne - new)));
  }
 }



 if ((nsb != nfd) && (osb - ofd) <= (nsb - nfd) && (fx == 0)) {
  ELRE_DEBUG(1, (__F, "late first diff insert at %td...\r\n",
      nfd - new));

  terminal_move_to_char(el, (int)(nfd - new));



  if (nsb != ne) {
   ELRE_DEBUG(1, (__F, "with stuff to keep at end\r\n"));





   fx = (int)((nsb - nfd) - (osb - ofd));
   if (fx > 0) {



    ELRE_DEBUG(!EL_CAN_INSERT, (__F,
     "ERROR: cannot insert in late first diff\n"));
    terminal_insertwrite(el, nfd, fx);
    re_insert(el, old, (int)(ofd - old),
        el->el_terminal.t_size.h, nfd, fx);
   }




   len = (size_t) ((nsb - nfd) - fx);
   terminal_overwrite(el, (nfd + fx), len);
   re__strncopy(ofd + fx, nfd + fx, len);
  } else {
   ELRE_DEBUG(1, (__F, "without anything to save\r\n"));
   len = (size_t) (nsb - nfd);
   terminal_overwrite(el, nfd, len);
   re__strncopy(ofd, nfd, len);
  }
 }



 if (sx >= 0) {
  ELRE_DEBUG(1, (__F,
      "second diff insert at %d...\r\n", (int)(nse - new)));
  terminal_move_to_char(el, (int)(nse - new));
  if (ols != oe) {
   ELRE_DEBUG(1, (__F, "with stuff to keep at end\r\n"));
   if (sx > 0) {

    ELRE_DEBUG(!EL_CAN_INSERT, (__F,
        "ERROR: cannot insert in second diff\n"));
    terminal_insertwrite(el, nse, sx);
   }




   terminal_overwrite(el, (nse + sx),
       (size_t)((nls - nse) - sx));
  } else {
   ELRE_DEBUG(1, (__F, "without anything to save\r\n"));
   terminal_overwrite(el, nse, (size_t)(nls - nse));






  }
 }
 ELRE_DEBUG(1, (__F, "done.\r\n"));
}

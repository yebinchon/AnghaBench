
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 char CHAR_DBWIDTH ;
 int ClearEOL (int) ;
 int CursorH ;
 int DeleteChars (int) ;
 int Insert_write (char*,int) ;
 int MIN_END_KEEP ;
 scalar_t__ MarkIsSet ;
 int MoveToChar (int) ;
 int MoveToLine (int) ;
 int STRhighlight ;
 char* Strend (char*) ;
 int T_CanDel ;
 int T_CanIns ;
 int TermH ;
 scalar_t__ adrof (int ) ;
 int dprintstr (char*,char*,char*) ;
 int reprintf (char*,...) ;
 int so_write (char*,int) ;
 int str_cp (char*,char*,int) ;
 int str_delete (char*,int,int,int) ;
 int str_insert (char*,int,int,char*,int) ;

__attribute__((used)) static void
update_line(Char *old, Char *new, int cur_line)
{
    Char *o, *n, *p, c;
    Char *ofd, *ols, *oe, *nfd, *nls, *ne;
    Char *osb, *ose, *nsb, *nse;
    int fx, sx;




    for (o = old, n = new; *o && (*o == *n); o++, n++)
 continue;
    ofd = o;
    nfd = n;




    o = Strend(o);





    if (!(adrof(STRhighlight) && MarkIsSet)) {
    while (ofd < o) {
 if (o[-1] != ' ')
     break;
 o--;
    }
    }
    oe = o;
    *oe = (Char) 0;

    n = Strend(n);


    if (!(adrof(STRhighlight) && MarkIsSet)) {
    while (nfd < n) {
 if (n[-1] != ' ')
     break;
 n--;
    }
    }
    ne = n;
    *ne = (Char) 0;




    if (*ofd == '\0' && *nfd == '\0') {



 return;
    }




    while ((o > ofd) && (n > nfd) && (*--o == *--n))
 continue;
    if (*o != *n) {
 o++;
 n++;
    }
    while (*o == CHAR_DBWIDTH) {
 o++;
 n++;
    }
    ols = o;
    nls = n;




    osb = ols;
    nsb = nls;
    ose = ols;
    nse = nls;




    if (*ofd) {
 for (c = *ofd, n = nfd; n < nls; n++) {
     if (c == *n) {
  for (o = ofd, p = n; p < nls && o < ols && *o == *p; o++, p++)
      continue;




  if (((nse - nsb) < (p - n)) && (2 * (p - n) > n - nfd)) {
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
  for (n = nfd, p = o; p < ols && n < nls && *p == *n; p++, n++)
      continue;




  if (((ose - osb) < (p - o)) && (2 * (p - o) > o - ofd)) {
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
    fx = (int) ((nsb - nfd) - (osb - ofd));




    sx = (int) ((nls - nse) - (ols - ose));

    if (!T_CanIns) {
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
    if (!T_CanDel) {
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




    fx = (int) ((nsb - nfd) - (osb - ofd));
    sx = (int) ((nls - nse) - (ols - ose));
    MoveToLine(cur_line);
    p = (ols != oe) ? oe : ose;







    if ((nsb != nfd) && fx > 0 && ((p - old) + fx < TermH)) {






 MoveToChar(nfd - new);



 if (nsb != ne) {






     if (fx > 0) {




  Insert_write(nfd, fx);
  str_insert(old, (int) (ofd - old), TermH, nfd, fx);
     }



     so_write(nfd + fx, (nsb - nfd) - fx);
     str_cp(ofd + fx, nfd + fx, (int) ((nsb - nfd) - fx));
 }
 else {



     so_write(nfd, (nsb - nfd));
     str_cp(ofd, nfd, (int) (nsb - nfd));



     return;
 }
    }
    else if (fx < 0) {






 MoveToChar(ofd - old);



 if (osb != oe) {







     if (fx < 0) {




  DeleteChars(-fx);
  str_delete(old, (int) (ofd - old), TermH, -fx);
     }



     so_write(nfd, (nsb - nfd));
     str_cp(ofd, nfd, (int) (nsb - nfd));

 }
 else {






     so_write(nfd, (nsb - nfd));




     ClearEOL((oe - old) - (ne - new));
     return;
 }
    }
    else
 fx = 0;

    if (sx < 0) {
 MoveToChar((ose - old) + fx);



 if (ols != oe) {






     if (sx < 0) {




  DeleteChars(-sx);
     }




     so_write(nse, (nls - nse));
 }
 else {
     int olen = (int) (oe - old + fx);
     if (olen > TermH)
  olen = TermH;



     so_write(nse, (nls - nse));




     ClearEOL(olen - (ne - new));






 }
    }




    if ((nsb != nfd) && (osb - ofd) <= (nsb - nfd) && (fx == 0)) {




 MoveToChar(nfd - new);



 if (nsb != ne) {
     fx = (int) ((nsb - nfd) - (osb - ofd));
     if (fx > 0) {







  Insert_write(nfd, fx);
  str_insert(old, (int) (ofd - old), TermH, nfd, fx);
     }




     so_write(nfd + fx, (nsb - nfd) - fx);
     str_cp(ofd + fx, nfd + fx, (int) ((nsb - nfd) - fx));
 }
 else {



     so_write(nfd, (nsb - nfd));
     str_cp(ofd, nfd, (int) (nsb - nfd));
 }
    }




    if (sx >= 0) {



 MoveToChar(nse - new);
 if (ols != oe) {



     if (sx > 0) {





  Insert_write(nse, sx);
     }




     so_write(nse + sx, (nls - nse) - sx);
 }
 else {



     so_write(nse, (nls - nse));






 }
    }



}

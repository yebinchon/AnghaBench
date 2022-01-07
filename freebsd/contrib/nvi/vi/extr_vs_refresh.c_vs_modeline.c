
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int u_long ;
typedef int buf ;
struct TYPE_27__ {int (* scr_addstr ) (TYPE_2__*,char const*,size_t) ;int (* scr_move ) (TYPE_2__*,int ,size_t) ;int (* scr_clrtoeol ) (TYPE_2__*) ;} ;
struct TYPE_26__ {int cols; size_t showmode; int ep; scalar_t__ lno; TYPE_1__* frp; TYPE_3__* gp; } ;
struct TYPE_25__ {int name; } ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ GS ;
typedef char CHAR_T ;


 int CHAR2INT (TYPE_2__*,int ,scalar_t__,char*,size_t) ;
 scalar_t__ F_ISSET (int ,int ) ;
 int F_MODIFIED ;
 scalar_t__ IS_SPLIT (TYPE_2__*) ;
 size_t KEY_COL (TYPE_2__*,char) ;
 int KEY_LEN (TYPE_2__*,char) ;
 char* KEY_NAME (TYPE_2__*,char) ;
 int LASTLINE (TYPE_2__*) ;
 scalar_t__ O_ISSET (TYPE_2__*,int ) ;
 int O_RULER ;
 int O_SHOWMODE ;
 char* msg_cat (TYPE_2__*,char* const,size_t*) ;
 size_t snprintf (char*,int,char*,int ,int ) ;
 scalar_t__ strlen (int ) ;
 int stub1 (TYPE_2__*,int ,size_t) ;
 int stub10 (TYPE_2__*,char*,int) ;
 int stub11 (TYPE_2__*,char const*,size_t) ;
 int stub2 (TYPE_2__*,char*,int) ;
 int stub3 (TYPE_2__*,char*,int) ;
 int stub4 (TYPE_2__*,char*,size_t) ;
 int stub5 (TYPE_2__*) ;
 int stub6 (TYPE_2__*,int ,size_t) ;
 int stub7 (TYPE_2__*,char*,int) ;
 int stub8 (TYPE_2__*,char*,size_t) ;
 int stub9 (TYPE_2__*,int ,size_t) ;
 int vs_column (TYPE_2__*,size_t*) ;

__attribute__((used)) static void
vs_modeline(SCR *sp)
{
 static char * const modes[] = {
  "215|Append",
  "216|Change",
  "217|Command",
  "218|Insert",
  "219|Replace",
 };
 GS *gp;
 size_t cols, curcol, curlen, endpoint, len, midpoint;
 const char *t = ((void*)0);
 int ellipsis;
 char buf[20];

 gp = sp->gp;
 (void)gp->scr_move(sp, LASTLINE(sp), 0);


 curlen = 0;
 if (IS_SPLIT(sp)) {
  CHAR_T *wp, *p;
  size_t l;

  CHAR2INT(sp, sp->frp->name, strlen(sp->frp->name) + 1, wp, l);
  p = wp + l;
  for (ellipsis = 0, cols = sp->cols / 2; --p > wp;) {
   if (*p == '/') {
    ++p;
    break;
   }
   if ((curlen += KEY_COL(sp, *p)) > cols) {
    ellipsis = 3;
    curlen +=
        KEY_LEN(sp, '.') * 3 + KEY_LEN(sp, ' ');
    while (curlen > cols) {
     ++p;
     curlen -= KEY_COL(sp, *p);
    }
    break;
   }
  }
  if (ellipsis) {
   while (ellipsis--)
    (void)gp->scr_addstr(sp,
        KEY_NAME(sp, '.'), KEY_LEN(sp, '.'));
   (void)gp->scr_addstr(sp,
       KEY_NAME(sp, ' '), KEY_LEN(sp, ' '));
  }
  for (; *p != '\0'; ++p)
   (void)gp->scr_addstr(sp,
       KEY_NAME(sp, *p), KEY_COL(sp, *p));
 }


 (void)gp->scr_clrtoeol(sp);
 cols = sp->cols - 1;
 if (O_ISSET(sp, O_RULER)) {
  vs_column(sp, &curcol);
  len = snprintf(buf, sizeof(buf), "%lu,%lu",
      (u_long)sp->lno, (u_long)(curcol + 1));

  midpoint = (cols - ((len + 1) / 2)) / 2;
  if (curlen < midpoint) {
   (void)gp->scr_move(sp, LASTLINE(sp), midpoint);
   curlen += len;
  } else if (curlen + 2 + len < cols) {
   (void)gp->scr_addstr(sp, "  ", 2);
   curlen += 2 + len;
  }
  (void)gp->scr_addstr(sp, buf, len);
 }







 endpoint = cols;
 if (O_ISSET(sp, O_SHOWMODE)) {
  if (F_ISSET(sp->ep, F_MODIFIED))
   --endpoint;
  t = msg_cat(sp, modes[sp->showmode], &len);
  endpoint -= len;
 }

 if (endpoint > curlen + 2) {
  (void)gp->scr_move(sp, LASTLINE(sp), endpoint);
  if (O_ISSET(sp, O_SHOWMODE)) {
   if (F_ISSET(sp->ep, F_MODIFIED))
    (void)gp->scr_addstr(sp,
        KEY_NAME(sp, '*'), KEY_LEN(sp, '*'));
   (void)gp->scr_addstr(sp, t, len);
  }
 }
}

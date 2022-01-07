
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u_int32_t ;
struct timeval {int dummy; } ;
struct termios {int c_iflag; int c_lflag; } ;
typedef int input_t ;
typedef int fd_set ;
struct TYPE_13__ {char* c_cc; } ;
struct TYPE_14__ {int eof_count; TYPE_2__ orig; TYPE_1__* script; struct termios vi_enter; struct TYPE_14__* gp; } ;
struct TYPE_12__ {int sh_master; } ;
typedef TYPE_3__ SCR ;
typedef TYPE_3__ GS ;
typedef TYPE_3__ CL_PRIVATE ;


 TYPE_3__* CLP (TYPE_3__*) ;
 int CL_STDIN_TTY ;
 int EC_QUOTED ;
 int EC_RAW ;
 int EINTR ;
 int FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 scalar_t__ F_ISSET (TYPE_3__*,int ) ;
 int G_SCRWIN ;
 int INP_EOF ;
 int INP_ERR ;
 int INP_INTR ;
 int INP_OK ;
 int INP_TIMEOUT ;
 int ISIG ;
 int IXOFF ;
 int IXON ;
 scalar_t__ LF_ISSET (int) ;
 int M_SYSERR ;
 size_t ONE_FOR_EOF ;
 int SC_EX ;
 int SC_SCRIPT ;
 int STDIN_FILENO ;
 int TCSADRAIN ;
 int TCSASOFT ;
 size_t VEOF ;
 int abort () ;
 int errno ;
 int msgq (TYPE_3__*,int ,char*) ;
 int read (int,char*,size_t) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 scalar_t__ sscr_input (TYPE_3__*) ;
 int tcgetattr (int,struct termios*) ;
 int tcsetattr (int,int,struct termios*) ;

__attribute__((used)) static input_t
cl_read(SCR *sp, u_int32_t flags, char *bp, size_t blen, int *nrp,
    struct timeval *tp)
{
 struct termios term1, term2;
 CL_PRIVATE *clp;
 GS *gp;
 fd_set rdfd;
 input_t rval;
 int maxfd, nr, term_reset;

 gp = sp->gp;
 clp = CLP(sp);
 term_reset = 0;







 if (!F_ISSET(clp, CL_STDIN_TTY)) {
  switch (nr = read(STDIN_FILENO, bp, blen)) {
  case 0:
   return (INP_EOF);
  case -1:
   goto err;
  default:
   *nrp = nr;
   return (INP_OK);
  }

 }





 if (tp != ((void*)0)) {
  FD_ZERO(&rdfd);
  FD_SET(STDIN_FILENO, &rdfd);
  switch (select(STDIN_FILENO + 1, &rdfd, ((void*)0), ((void*)0), tp)) {
  case 0:
   return (INP_TIMEOUT);
  case -1:
   goto err;
  default:
   break;
  }
 }
 if (LF_ISSET(EC_QUOTED | EC_RAW) && !tcgetattr(STDIN_FILENO, &term1)) {
  term_reset = 1;
  if (LF_ISSET(EC_QUOTED)) {
   term2 = term1;
   term2.c_lflag &= ~ISIG;
   term2.c_iflag &= ~(IXON | IXOFF);
   (void)tcsetattr(STDIN_FILENO,
       TCSASOFT | TCSADRAIN, &term2);
  } else
   (void)tcsetattr(STDIN_FILENO,
       TCSASOFT | TCSADRAIN, &clp->vi_enter);
 }
 if (F_ISSET(gp, G_SCRWIN)) {
loop: FD_ZERO(&rdfd);
  FD_SET(STDIN_FILENO, &rdfd);
  maxfd = STDIN_FILENO;
  if (F_ISSET(sp, SC_SCRIPT)) {
   FD_SET(sp->script->sh_master, &rdfd);
   if (sp->script->sh_master > maxfd)
    maxfd = sp->script->sh_master;
  }
  switch (select(maxfd + 1, &rdfd, ((void*)0), ((void*)0), ((void*)0))) {
  case 0:
   abort();
  case -1:
   goto err;
  default:
   break;
  }
  if (!FD_ISSET(STDIN_FILENO, &rdfd)) {
   if (sscr_input(sp))
    return (INP_ERR);
   goto loop;
  }
 }
 switch (nr = read(STDIN_FILENO, bp, blen - 1)) {
 case 0:
  if (++clp->eof_count < 50) {
   bp[0] = clp->orig.c_cc[VEOF];
   *nrp = 1;
   rval = INP_OK;

  } else
   rval = INP_EOF;
  break;
 case -1:
err: if (errno == EINTR)
   rval = INP_INTR;
  else {
   rval = INP_ERR;
   msgq(sp, M_SYSERR, "input");
  }
  break;
 default:
  if (F_ISSET(sp, SC_EX) && bp[nr - 1] != '\n')
   bp[nr++] = clp->orig.c_cc[VEOF];
  *nrp = nr;
  clp->eof_count = 0;
  rval = INP_OK;
  break;
 }


 if (term_reset)
  (void)tcsetattr(STDIN_FILENO, TCSASOFT | TCSADRAIN, &term1);
 return (rval);
}

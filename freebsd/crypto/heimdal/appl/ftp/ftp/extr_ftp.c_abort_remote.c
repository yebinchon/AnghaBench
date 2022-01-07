
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;
typedef int buf ;
typedef int FILE ;


 int BUFSIZ ;
 int DM ;
 scalar_t__ ERROR ;
 scalar_t__ FD_ISSET (int ,int *) ;
 int FD_SET (int ,int *) ;
 int FD_SETSIZE ;
 int FD_ZERO (int *) ;
 int IAC ;
 int IP ;
 int MSG_OOB ;
 int * cin ;
 int code ;
 int * cout ;
 int empty (int *,int) ;
 int errx (int,char*) ;
 int fflush (int *) ;
 int fileno (int *) ;
 int fprintf (int *,char*,...) ;
 scalar_t__ getreply (int ) ;
 int lostpeer (int ) ;
 scalar_t__ ptabflg ;
 scalar_t__ read (int ,char*,int) ;
 int sec_fflush (int *) ;
 int sec_fprintf (int *,char*) ;
 int send (int ,char*,int,int ) ;
 int snprintf (char*,int,char*,int,int,int) ;
 int warn (char*) ;

void
abort_remote (FILE * din)
{
    char buf[BUFSIZ];
    int nfnd;
    fd_set mask;





    snprintf (buf, sizeof (buf), "%c%c%c", IAC, IP, IAC);
    if (send (fileno (cout), buf, 3, MSG_OOB) != 3)
 warn ("abort");
    fprintf (cout, "%c", DM);
    sec_fprintf(cout, "ABOR");
    sec_fflush (cout);
    fprintf (cout, "\r\n");
    fflush(cout);
    FD_ZERO (&mask);
    if (fileno (cin) >= FD_SETSIZE)
 errx (1, "fd too large");
    FD_SET (fileno (cin), &mask);
    if (din) {
 if (fileno (din) >= FD_SETSIZE)
     errx (1, "fd too large");
 FD_SET (fileno (din), &mask);
    }
    if ((nfnd = empty (&mask, 10)) <= 0) {
 if (nfnd < 0) {
     warn ("abort");
 }
 if (ptabflg)
     code = -1;
 lostpeer (0);
    }
    if (din && FD_ISSET (fileno (din), &mask)) {
 while (read (fileno (din), buf, BUFSIZ) > 0)
                 ;
    }
    if (getreply (0) == ERROR && code == 552) {

 getreply (0);
    }
    getreply (0);
}

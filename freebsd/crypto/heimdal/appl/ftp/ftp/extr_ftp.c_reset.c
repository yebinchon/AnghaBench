
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;


 int FD_SET (scalar_t__,int *) ;
 scalar_t__ FD_SETSIZE ;
 int FD_ZERO (int *) ;
 int cin ;
 int code ;
 int empty (int *,int ) ;
 int errx (int,char*) ;
 scalar_t__ fileno (int ) ;
 int getreply (int ) ;
 int lostpeer (int ) ;
 int warn (char*) ;

void
reset (int argc, char **argv)
{
    fd_set mask;
    int nfnd = 1;

    FD_ZERO (&mask);
    while (nfnd > 0) {
 if (fileno (cin) >= FD_SETSIZE)
     errx (1, "fd too large");
 FD_SET (fileno (cin), &mask);
 if ((nfnd = empty (&mask, 0)) < 0) {
     warn ("reset");
     code = -1;
     lostpeer(0);
 } else if (nfnd) {
     getreply(0);
 }
    }
}

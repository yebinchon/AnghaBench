
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BUFSIZ ;
 int DM ;
 scalar_t__ ERROR ;
 unsigned char IAC ;
 unsigned char IP ;
 int MSG_OOB ;
 int cin ;
 int code ;
 int * cout ;
 int empty (int ,int *,int) ;
 int fflush (int *) ;
 int fileno (int *) ;
 int fprintf (int *,char*,int) ;
 scalar_t__ getreply (int ) ;
 int lostpeer (int ) ;
 scalar_t__ ptabflg ;
 scalar_t__ read (int ,unsigned char*,int) ;
 int send (int ,unsigned char*,int,int ) ;
 int warn (char*) ;
 int warnx (char*) ;

void
abort_remote(FILE *din)
{
 unsigned char buf[BUFSIZ];
 int nfnd;

 if (cout == ((void*)0)) {
  warnx("Lost control connection for abort");
  if (ptabflg)
   code = -1;
  lostpeer(0);
  return;
 }




 buf[0] = IAC;
 buf[1] = IP;
 buf[2] = IAC;
 if (send(fileno(cout), buf, 3, MSG_OOB) != 3)
  warn("Can't send abort message");
 fprintf(cout, "%cABOR\r\n", DM);
 (void)fflush(cout);
 if ((nfnd = empty(cin, din, 10)) <= 0) {
  if (nfnd < 0)
   warn("Can't send abort message");
  if (ptabflg)
   code = -1;
  lostpeer(0);
 }
 if (din && (nfnd & 2)) {
  while (read(fileno(din), buf, BUFSIZ) > 0)
   continue;
 }
 if (getreply(0) == ERROR && code == 552) {

  (void)getreply(0);
 }
 (void)getreply(0);
}

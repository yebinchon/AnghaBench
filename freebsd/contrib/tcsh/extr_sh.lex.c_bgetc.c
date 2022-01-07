
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;
typedef char eChar ;
typedef char Char ;


 int BUFSIZE ;
 char CHAR_ERR ;
 int ERR_SYSTEM ;
 scalar_t__ InputBuf ;
 int Inputl () ;
 int L_SET ;
 int SHIN ;
 int balloc (int) ;
 scalar_t__ cantell ;
 int check_window_size (int ) ;
 scalar_t__ editing ;
 int errno ;
 scalar_t__ fbobp ;
 char** fbuf ;
 scalar_t__* fclens ;
 scalar_t__ feobp ;
 scalar_t__ filec ;
 int fixio (int ,int ) ;
 scalar_t__ fseekp ;
 scalar_t__ intty ;
 int lseek (int ,scalar_t__,int ) ;
 int memcpy (char*,scalar_t__,int) ;
 int progname ;
 int stderror (int ,int ,int ) ;
 int strerror (int ) ;
 int tenex (scalar_t__,int) ;
 int wide_read (int ,char*,int,int) ;
 scalar_t__ windowchg ;

__attribute__((used)) static eChar
bgetc(void)
{
    Char ch;
    int c, off, buf;
    int numleft = 0, roomleft;

    if (cantell) {
 if (fseekp < fbobp || fseekp > feobp) {
     fbobp = feobp = fseekp;
     (void) lseek(SHIN, fseekp, L_SET);
 }
 if (fseekp == feobp) {
     fbobp = feobp;
     c = wide_read(SHIN, fbuf[0], BUFSIZE, 1);




     if (c <= 0)
  return CHAR_ERR;
     feobp += c;
 }

 ch = fbuf[0][fseekp - fbobp];
 fseekp++;






 return (ch);
    }

    while (fseekp >= feobp) {
 if ((editing



     ) && intty) {
     fseekp = feobp;





     c = numleft = Inputl();
     while (numleft > 0) {
  off = (int) feobp % BUFSIZE;
  buf = (int) feobp / BUFSIZE;
  balloc(buf);
  roomleft = BUFSIZE - off;
  if (roomleft > numleft)
      roomleft = numleft;
  (void) memcpy(fbuf[buf] + off, InputBuf + c - numleft,
         roomleft * sizeof(Char));
  numleft -= roomleft;
  feobp += roomleft;
     }
 } else {
     off = (int) feobp % BUFSIZE;
     buf = (int) feobp / BUFSIZE;
     balloc(buf);
     roomleft = BUFSIZE - off;
     c = wide_read(SHIN, fbuf[buf] + off, roomleft, 0);
     if (c > 0)
  feobp += c;
 }
 if (c == 0 || (c < 0 && fixio(SHIN, errno) == -1))
     return CHAR_ERR;
    }





    ch = fbuf[(int) fseekp / BUFSIZE][(int) fseekp % BUFSIZE];
    fseekp++;






    return (ch);
}

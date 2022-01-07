
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char* uintmax_t ;
struct s_spcl {scalar_t__ c_magic; } ;
typedef scalar_t__ off_t ;
struct TYPE_2__ {int action; char* name; int ino; } ;


 int SEEK_CUR ;

 size_t TP_BSIZE ;


 int blkcnt ;
 int blksread ;
 size_t byteslide ;
 TYPE_1__ curfile ;
 int done (int) ;
 int dprintf (int ,char*) ;
 char endoftapemark ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int getvol (long) ;
 scalar_t__ host ;
 scalar_t__ lseek (int ,long,int ) ;
 int memmove (char*,char*,long) ;
 int memset (char*,int ,long) ;
 int mt ;
 long ntrec ;
 int numtrec ;
 int panic (char*,long,long) ;
 scalar_t__ pipecmdin ;
 scalar_t__ pipein ;
 long read (int ,char*,int) ;
 int reply (char*) ;
 long rmtread (char*,int) ;
 scalar_t__ rmtseek (long,int) ;
 int stderr ;
 int stdout ;
 char* strerror (int ) ;
 int tapeaddr ;
 char* tapebuf ;
 int terminateinput () ;
 long volno ;
 int vprintf (int ,char*,...) ;
 int yflag ;

__attribute__((used)) static void
readtape(char *buf)
{
 long rd, newvol, i, oldnumtrec;
 int cnt, seek_failed;

 if (blkcnt + (byteslide > 0) < numtrec) {
  memmove(buf, &tapebuf[(blkcnt++ * TP_BSIZE) + byteslide], (long)TP_BSIZE);
  blksread++;
  tapeaddr++;
  return;
 }
 if (numtrec > 0)
  memmove(&tapebuf[-TP_BSIZE],
      &tapebuf[(numtrec-1) * TP_BSIZE], (long)TP_BSIZE);
 oldnumtrec = numtrec;
 for (i = 0; i < ntrec; i++)
  ((struct s_spcl *)&tapebuf[i * TP_BSIZE])->c_magic = 0;
 if (numtrec == 0)
  numtrec = ntrec;
 cnt = ntrec * TP_BSIZE;
 rd = 0;
getmore:





  i = read(mt, &tapebuf[rd], cnt);




 if (!pipein && !pipecmdin && numtrec < ntrec && i > 0) {
  dprintf(stdout, "mid-media short read error.\n");
  numtrec = ntrec;
 }



 if ((pipein || pipecmdin) && i == 0 && rd > 0)
  i = rd;
 else if (i > 0 && i != ntrec * TP_BSIZE) {
  if (pipein || pipecmdin) {
   rd += i;
   cnt -= i;
   if (cnt > 0)
    goto getmore;
   i = rd;
  } else {



   if (i % TP_BSIZE != 0)
    vprintf(stdout,
        "partial block read: %ld should be %ld\n",
        i, ntrec * TP_BSIZE);
   numtrec = i / TP_BSIZE;
  }
 }



 if (i < 0) {
  fprintf(stderr, "Tape read error while ");
  switch (curfile.action) {
  default:
   fprintf(stderr, "trying to set up tape\n");
   break;
  case 129:
   fprintf(stderr, "trying to resynchronize\n");
   break;
  case 128:
   fprintf(stderr, "restoring %s\n", curfile.name);
   break;
  case 130:
   fprintf(stderr, "skipping over inode %ju\n",
       (uintmax_t)curfile.ino);
   break;
  }
  if (!yflag && !reply("continue"))
   done(1);
  i = ntrec * TP_BSIZE;
  memset(tapebuf, 0, i);





   seek_failed = (lseek(mt, i, SEEK_CUR) == (off_t)-1);

  if (seek_failed) {
   fprintf(stderr,
       "continuation failed: %s\n", strerror(errno));
   done(1);
  }
 }



 if (i == 0) {
  vprintf(stdout, "End-of-tape encountered\n");
  if (!pipein) {
   newvol = volno + 1;
   volno = 0;
   numtrec = 0;
   getvol(newvol);
   readtape(buf);
   return;
  }
  if (rd % TP_BSIZE != 0)
   panic("partial block read: %ld should be %ld\n",
    rd, ntrec * TP_BSIZE);
  terminateinput();
  memmove(&tapebuf[rd], &endoftapemark, (long)TP_BSIZE);
 }
 if (oldnumtrec == 0)
  blkcnt = 0;
 else
  blkcnt -= oldnumtrec;
 memmove(buf,
     &tapebuf[(blkcnt++ * TP_BSIZE) + byteslide], (long)TP_BSIZE);
 blksread++;
 tapeaddr++;
}

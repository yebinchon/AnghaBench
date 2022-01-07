
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_spcl {scalar_t__ c_magic; } ;


 long TP_BSIZE ;
 scalar_t__ blkcnt ;
 int done (int) ;
 int errno ;
 int fprintf (int ,char*,...) ;
 scalar_t__ host ;
 int mt ;
 long ntrec ;
 long numtrec ;
 long read (int ,int *,long) ;
 long rmtread (int *,long) ;
 int stderr ;
 int stdout ;
 char* strerror (int ) ;
 int * tapebuf ;
 int vprintf (int ,char*,long) ;

__attribute__((used)) static void
findtapeblksize(void)
{
 long i;

 for (i = 0; i < ntrec; i++)
  ((struct s_spcl *)&tapebuf[i * TP_BSIZE])->c_magic = 0;
 blkcnt = 0;





  i = read(mt, tapebuf, ntrec * TP_BSIZE);

 if (i <= 0) {
  fprintf(stderr, "tape read error: %s\n", strerror(errno));
  done(1);
 }
 if (i % TP_BSIZE != 0) {
  fprintf(stderr, "Tape block size (%ld) %s (%d)\n",
   i, "is not a multiple of dump block size", TP_BSIZE);
  done(1);
 }
 ntrec = i / TP_BSIZE;
 numtrec = ntrec;
 vprintf(stdout, "Tape block size is %ld\n", ntrec);
}

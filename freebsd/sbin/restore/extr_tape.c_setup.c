
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef union u_spcl {int dummy; } u_spcl ;
typedef int uintmax_t ;
struct stat {int st_blksize; } ;
struct TYPE_10__ {void* action; } ;
struct TYPE_7__ {scalar_t__ c_checksum; int c_type; int c_magic; } ;
struct TYPE_9__ {TYPE_1__ s_spcl; } ;
struct TYPE_8__ {int c_volume; scalar_t__ c_type; int c_count; int c_date; int c_ddate; } ;


 scalar_t__ CHECKSUM ;
 scalar_t__ FAIL ;
 int FLUSHTAPEBUF () ;
 int FS_UFS2_MAGIC ;
 int MAXBSIZE ;
 int NBBY ;
 int O_RDONLY ;
 int SETINO (int ,char*) ;
 int TP_BSIZE ;
 scalar_t__ TS_BITS ;
 scalar_t__ TS_CLRI ;
 int TS_END ;
 int UFS_WINO ;
 void* USING ;
 void* _time64_to_time (int ) ;
 int bflag ;
 int blksread ;
 char* calloc (unsigned int,unsigned int) ;
 char command ;
 TYPE_6__ curfile ;
 int done (int) ;
 int dprintf (int ,char*,int ) ;
 void* dumpdate ;
 char* dumpmap ;
 void* dumptime ;
 TYPE_5__ endoftapemark ;
 int errno ;
 int fileno (scalar_t__) ;
 int findinode (TYPE_2__*) ;
 int findtapeblksize () ;
 int fprintf (int ,char*,...) ;
 int fssize ;
 int getfile (int ,int ,int ) ;
 scalar_t__ gethead (TYPE_2__*) ;
 scalar_t__ host ;
 scalar_t__ howmany (int,int) ;
 char* magtape ;
 char* map ;
 int maxino ;
 int mt ;
 int open (char*,int ,int ) ;
 int panic (char*) ;
 scalar_t__ pipecmdin ;
 scalar_t__ pipein ;
 scalar_t__ popen (char*,char*) ;
 scalar_t__ popenfp ;
 int printdumpinfo () ;
 int rmtopen (char*,int ) ;
 int roundup (int,int) ;
 int setdumpnum () ;
 int setenv (char*,char*,int) ;
 TYPE_2__ spcl ;
 scalar_t__ stat (char*,struct stat*) ;
 int stderr ;
 int stdout ;
 char* strerror (int ) ;
 int tapesread ;
 char* usedinomap ;
 scalar_t__ vflag ;
 int volno ;
 int vprintf (int ,char*) ;
 int xtrmap ;
 int xtrmapskip ;

void
setup(void)
{
 int i, j, *ip;
 struct stat stbuf;

 vprintf(stdout, "Verify tape and initialize maps\n");
 if (pipecmdin) {
  if (setenv("RESTORE_VOLUME", "1", 1) == -1) {
   fprintf(stderr, "Cannot set $RESTORE_VOLUME: %s\n",
       strerror(errno));
   done(1);
  }
  popenfp = popen(magtape, "r");
  mt = popenfp ? fileno(popenfp) : -1;
 } else





 if (pipein)
  mt = 0;
 else
  mt = open(magtape, O_RDONLY, 0);
 if (mt < 0) {
  fprintf(stderr, "%s: %s\n", magtape, strerror(errno));
  done(1);
 }
 volno = 1;
 setdumpnum();
 FLUSHTAPEBUF();
 if (!pipein && !pipecmdin && !bflag)
  findtapeblksize();
 if (gethead(&spcl) == FAIL) {
  fprintf(stderr, "Tape is not a dump tape\n");
  done(1);
 }
 if (pipein) {
  endoftapemark.s_spcl.c_magic = FS_UFS2_MAGIC;
  endoftapemark.s_spcl.c_type = TS_END;
  ip = (int *)&endoftapemark;
  j = sizeof(union u_spcl) / sizeof(int);
  i = 0;
  do
   i += *ip++;
  while (--j);
  endoftapemark.s_spcl.c_checksum = CHECKSUM - i;
 }
 if (vflag || command == 't')
  printdumpinfo();
 dumptime = _time64_to_time(spcl.c_ddate);
 dumpdate = _time64_to_time(spcl.c_date);
 if (stat(".", &stbuf) < 0) {
  fprintf(stderr, "cannot stat .: %s\n", strerror(errno));
  done(1);
 }
 if (stbuf.st_blksize > 0 && stbuf.st_blksize < TP_BSIZE )
  fssize = TP_BSIZE;
 if (stbuf.st_blksize >= TP_BSIZE && stbuf.st_blksize <= MAXBSIZE)
  fssize = stbuf.st_blksize;
 if (((TP_BSIZE - 1) & stbuf.st_blksize) != 0) {
  fprintf(stderr, "Warning: filesystem with non-multiple-of-%d "
      "blocksize (%d);\n", TP_BSIZE, stbuf.st_blksize);
  fssize = roundup(fssize, TP_BSIZE);
  fprintf(stderr, "\twriting using blocksize %ld\n", fssize);
 }
 if (spcl.c_volume != 1) {
  fprintf(stderr, "Tape is not volume 1 of the dump\n");
  done(1);
 }
 if (gethead(&spcl) == FAIL) {
  dprintf(stdout, "header read failed at %ld blocks\n", blksread);
  panic("no header after volume mark!\n");
 }
 findinode(&spcl);
 if (spcl.c_type != TS_CLRI) {
  fprintf(stderr, "Cannot find file removal list\n");
  done(1);
 }
 maxino = (spcl.c_count * TP_BSIZE * NBBY) + 1;
 dprintf(stdout, "maxino = %ju\n", (uintmax_t)maxino);
 map = calloc((unsigned)1, (unsigned)howmany(maxino, NBBY));
 if (map == ((void*)0))
  panic("no memory for active inode map\n");
 usedinomap = map;
 curfile.action = USING;
 getfile(xtrmap, xtrmapskip, xtrmapskip);
 if (spcl.c_type != TS_BITS) {
  fprintf(stderr, "Cannot find file dump list\n");
  done(1);
 }
 map = calloc((unsigned)1, (unsigned)howmany(maxino, NBBY));
 if (map == (char *)((void*)0))
  panic("no memory for file dump list\n");
 dumpmap = map;
 curfile.action = USING;
 getfile(xtrmap, xtrmapskip, xtrmapskip);





 SETINO(UFS_WINO, dumpmap);

 if (command == 'r')
  tapesread = 1;
}

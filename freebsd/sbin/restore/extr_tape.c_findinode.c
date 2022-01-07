
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s_spcl {int c_type; long c_count; int c_date; scalar_t__ c_inumber; int c_size; int c_extsize; int c_birthtimensec; int c_birthtime; int c_mtimensec; int c_mtime; int c_atimensec; int c_atime; int c_rdev; int c_file_flags; int c_gid; int c_uid; scalar_t__ c_mode; int * c_addr; } ;
struct TYPE_4__ {char* name; scalar_t__ ino; int size; int extsize; int birthtime_nsec; int birthtime_sec; int mtime_nsec; int mtime_sec; int atime_nsec; int atime_sec; int rdev; int file_flags; int gid; int uid; scalar_t__ mode; int action; } ;
struct TYPE_3__ {int c_type; } ;


 scalar_t__ Dflag ;
 int FAIL ;
 int TP_BSIZE ;






 int UNKNOWN ;
 int _time64_to_time (int ) ;
 int blkcnt ;
 int blksread ;
 int byteslide ;
 TYPE_2__ curfile ;
 int dumpdate ;
 int fprintf (int ,char*,...) ;
 int gethead (struct s_spcl*) ;
 int getvol (int ) ;
 scalar_t__ maxino ;
 int panic (char*,...) ;
 int readtape (char*) ;
 TYPE_1__ spcl ;
 int stderr ;
 int tapesread ;

__attribute__((used)) static void
findinode(struct s_spcl *header)
{
 static long skipcnt = 0;
 long i;
 char buf[TP_BSIZE];
 int htype;

 curfile.name = "<name unknown>";
 curfile.action = UNKNOWN;
 curfile.mode = 0;
 curfile.ino = 0;
 do {
  htype = header->c_type;
  switch (htype) {

  case 133:



   for (i = 0; i < header->c_count; i++)
    if (header->c_addr[i])
     readtape(buf);
   while (gethead(header) == FAIL ||
       _time64_to_time(header->c_date) != dumpdate) {
    skipcnt++;
    if (Dflag) {
     byteslide++;
     if (byteslide < TP_BSIZE) {
      blkcnt--;
      blksread--;
     } else
      byteslide = 0;
    }
   }
   break;

  case 129:
   curfile.mode = header->c_mode;
   curfile.uid = header->c_uid;
   curfile.gid = header->c_gid;
   curfile.file_flags = header->c_file_flags;
   curfile.rdev = header->c_rdev;
   curfile.atime_sec = header->c_atime;
   curfile.atime_nsec = header->c_atimensec;
   curfile.mtime_sec = header->c_mtime;
   curfile.mtime_nsec = header->c_mtimensec;
   curfile.birthtime_sec = header->c_birthtime;
   curfile.birthtime_nsec = header->c_birthtimensec;
   curfile.extsize = header->c_extsize;
   curfile.size = header->c_size;
   curfile.ino = header->c_inumber;
   break;

  case 130:

   if (tapesread & (tapesread + 1)) {
    getvol(0);
    continue;
   }
   curfile.ino = maxino;
   break;

  case 131:
   curfile.name = "<file removal list>";
   break;

  case 132:
   curfile.name = "<file dump list>";
   break;

  case 128:
   if (Dflag)
    fprintf(stderr, "unexpected tape header\n");
   else
    panic("unexpected tape header\n");

  default:
   if (Dflag)
    fprintf(stderr, "unknown tape header type %d\n",
        spcl.c_type);
   else
    panic("unknown tape header type %d\n",
        spcl.c_type);
   while (gethead(header) == FAIL ||
       _time64_to_time(header->c_date) != dumpdate) {
    skipcnt++;
    if (Dflag) {
     byteslide++;
     if (byteslide < TP_BSIZE) {
      blkcnt--;
      blksread--;
     } else
      byteslide = 0;
    }
   }

  }
 } while (htype == 133);
 if (skipcnt > 0)
  fprintf(stderr, "resync restore, skipped %ld %s\n",
      skipcnt, Dflag ? "bytes" : "blocks");
 skipcnt = 0;
}

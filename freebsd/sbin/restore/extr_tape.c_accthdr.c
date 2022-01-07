
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct s_spcl {int const c_type; long c_count; scalar_t__* c_addr; int c_inumber; scalar_t__ c_firstrec; } ;
typedef int intmax_t ;
typedef int ino_t ;







 int const TS_TAPE ;
 int blksread ;
 int fprintf (int ,char*,...) ;
 scalar_t__ readmapflag ;
 int stderr ;

__attribute__((used)) static void
accthdr(struct s_spcl *header)
{
 static ino_t previno = 0x7fffffff;
 static int prevtype;
 static long predict;
 long blks, i;

 if (header->c_type == TS_TAPE) {
  fprintf(stderr, "Volume header ");
   if (header->c_firstrec)
    fprintf(stderr, "begins with record %jd",
       (intmax_t)header->c_firstrec);
   fprintf(stderr, "\n");
  previno = 0x7fffffff;
  return;
 }
 if (previno == 0x7fffffff)
  goto newcalc;
 switch (prevtype) {
 case 131:
  fprintf(stderr, "Dumped inodes map header");
  break;
 case 130:
  fprintf(stderr, "Used inodes map header");
  break;
 case 128:
  fprintf(stderr, "File header, ino %ju", (uintmax_t)previno);
  break;
 case 132:
  fprintf(stderr, "File continuation header, ino %ju",
      (uintmax_t)previno);
  break;
 case 129:
  fprintf(stderr, "End of tape header");
  break;
 }
 if (predict != blksread - 1)
  fprintf(stderr, "; predicted %ld blocks, got %ld blocks",
   predict, blksread - 1);
 fprintf(stderr, "\n");
newcalc:
 blks = 0;
 if (header->c_type != 129)
  for (i = 0; i < header->c_count; i++)
   if (readmapflag || header->c_addr[i] != 0)
    blks++;
 predict = blks;
 blksread = 0;
 prevtype = header->c_type;
 previno = header->c_inumber;
}

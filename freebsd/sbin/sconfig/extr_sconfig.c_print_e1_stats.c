
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int uas; int dm; int bpv; int fse; int crce; int rcrce; int es; int les; int ses; int bes; int oofs; int css; } ;
struct TYPE_4__ {int uas; int dm; int bpv; int fse; int crce; int rcrce; int es; int les; int ses; int bes; int oofs; int css; } ;
struct e1_statistics {int cursec; int totsec; TYPE_3__* interval; TYPE_2__ total; int status; TYPE_1__ currnt; } ;
struct TYPE_6__ {int uas; int dm; int bpv; int fse; int crce; int rcrce; int es; int les; int ses; int bes; int oofs; int css; } ;


 int SERIAL_GETESTAT ;
 char* chan_name ;
 scalar_t__ fflag ;
 char* format_e1_status (int ) ;
 scalar_t__ ioctl (int,int ,struct e1_statistics*) ;
 int print_frac (int,int,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_e1_stats (int fd, int need_header)
{
 struct e1_statistics st;
 int i, maxi;

 if (need_header)
  printf ("Chan\t Unav/Degr  Bpv/Fsyn  CRC/RCRC  Err/Lerr  Sev/Bur   Oof/Slp  Status\n");

 if (ioctl (fd, SERIAL_GETESTAT, &st) < 0)
  return;
 printf ("%s\t", chan_name);


 print_frac (0, st.currnt.uas, st.cursec);
 print_frac (1, 60 * st.currnt.dm, st.cursec);


 print_frac (0, st.currnt.bpv, st.cursec);
 print_frac (1, st.currnt.fse, st.cursec);


 print_frac (0, st.currnt.crce, st.cursec);
 print_frac (1, st.currnt.rcrce, st.cursec);


 print_frac (0, st.currnt.es, st.cursec);
 print_frac (1, st.currnt.les, st.cursec);


 print_frac (0, st.currnt.ses, st.cursec);
 print_frac (1, st.currnt.bes, st.cursec);


 print_frac (0, st.currnt.oofs, st.cursec);
 print_frac (1, st.currnt.css, st.cursec);

 printf (" %s\n", format_e1_status (st.status));

 if (fflag) {

  printf ("\t");
  print_frac (0, st.total.uas, st.totsec);
  print_frac (1, 60 * st.total.dm, st.totsec);

  print_frac (0, st.total.bpv, st.totsec);
  print_frac (1, st.total.fse, st.totsec);

  print_frac (0, st.total.crce, st.totsec);
  print_frac (1, st.total.rcrce, st.totsec);

  print_frac (0, st.total.es, st.totsec);
  print_frac (1, st.total.les, st.totsec);

  print_frac (0, st.total.ses, st.totsec);
  print_frac (1, st.total.bes, st.totsec);

  print_frac (0, st.total.oofs, st.totsec);
  print_frac (1, st.total.css, st.totsec);

  printf (" -- Total\n");


  maxi = (st.totsec - st.cursec) / 900;
  if (maxi > 48)
   maxi = 48;
  for (i=0; i<maxi; ++i) {
   printf ("       ");
   print_frac (0, st.interval[i].uas, 15*60);
   print_frac (1, 60 * st.interval[i].dm, 15*60);

   print_frac (0, st.interval[i].bpv, 15*60);
   print_frac (1, st.interval[i].fse, 15*60);

   print_frac (0, st.interval[i].crce, 15*60);
   print_frac (1, st.interval[i].rcrce, 15*60);

   print_frac (0, st.interval[i].es, 15*60);
   print_frac (1, st.interval[i].les, 15*60);

   print_frac (0, st.interval[i].ses, 15*60);
   print_frac (1, st.interval[i].bes, 15*60);

   print_frac (0, st.interval[i].oofs, 15*60);
   print_frac (1, st.interval[i].css, 15*60);

   if (i < 3)
    printf (" -- %dm\n", (i+1)*15);
   else
    printf (" -- %dh %dm\n", (i+1)/4, (i+1)%4*15);
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_5__ {int mode; } ;
typedef TYPE_1__ pps_params_t ;
struct TYPE_6__ {scalar_t__ assert_sequence; scalar_t__ clear_sequence; int clear_timestamp; int assert_timestamp; } ;
typedef TYPE_2__ pps_info_t ;
typedef int pps_handle_t ;


 int Chew (int *,int *,scalar_t__,scalar_t__) ;
 int O_RDONLY ;
 int PPS_CAPTUREASSERT ;
 int PPS_CAPTUREBOTH ;
 int PPS_ECHOASSERT ;
 int PPS_TSFMT_TSPEC ;
 int err (int,char*) ;
 int open (char*,int ) ;
 int setbuf (int ,int ) ;
 int stdout ;
 int time_pps_create (int,int *) ;
 int time_pps_fetch (int ,int ,TYPE_2__*,struct timespec*) ;
 int time_pps_getcap (int ,int*) ;
 int time_pps_setparams (int ,TYPE_1__*) ;
 int usleep (int) ;

int
main(int argc, char **argv)
{
 int fd;
 pps_info_t pi;
 pps_params_t pp;
 pps_handle_t ph;
 int i, mode;
 u_int olda, oldc;
 double d = 0;
 struct timespec to;

 if (argc < 2)
  argv[1] = "/dev/cuaa1";
 setbuf(stdout, 0);
 fd = open(argv[1], O_RDONLY);
 if (fd < 0)
  err(1, argv[1]);
 i = time_pps_create(fd, &ph);
 if (i < 0)
  err(1, "time_pps_create");

 i = time_pps_getcap(ph, &mode);
 if (i < 0)
  err(1, "time_pps_getcap");

 pp.mode = PPS_CAPTUREASSERT | PPS_ECHOASSERT;
 pp.mode = PPS_CAPTUREBOTH;


 i = time_pps_setparams(ph, &pp);
 if (i < 0)
  err(1, "time_pps_setparams");

 while (1) {
  to.tv_nsec = 0;
  to.tv_sec = 0;
  i = time_pps_fetch(ph, PPS_TSFMT_TSPEC, &pi, &to);
  if (i < 0)
   err(1, "time_pps_fetch");
  if (olda == pi.assert_sequence &&
      oldc == pi.clear_sequence) {
   usleep(10000);
   continue;
  }

  Chew(&pi.assert_timestamp, &pi.clear_timestamp,
   pi.assert_sequence, pi.clear_sequence);
  olda = pi.assert_sequence;
  oldc = pi.clear_sequence;
 }

 return(0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct ctio_descr* sival_ptr; } ;
struct sigevent {TYPE_3__ sigev_value; int sigev_notify_kqueue; int sigev_notify; } ;
struct TYPE_5__ {struct sigevent aio_sigevent; int aio_fildes; int * aio_buf; } ;
struct TYPE_4__ {int retry_count; struct ctio_descr* targ_descr; int timeout; int func_code; } ;
struct ctio_descr {TYPE_2__ aiocb; int * buf; TYPE_1__ ccb_h; int * data_ptr; } ;
struct ccb_scsiio {TYPE_2__ aiocb; int * buf; TYPE_1__ ccb_h; int * data_ptr; } ;


 int CAM_TIME_INFINITY ;
 scalar_t__ MAX_CTIOS ;
 int SIGEV_KEVENT ;
 int XPT_CONT_TARGET_IO ;
 int buf_size ;
 int file_fd ;
 int free (struct ctio_descr*) ;
 int kq_fd ;
 int * malloc (int) ;
 scalar_t__ num_ctios ;
 int warn (char*) ;
 int warnx (char*) ;

__attribute__((used)) static struct ccb_scsiio *
get_ctio()
{
 struct ccb_scsiio *ctio;
 struct ctio_descr *c_descr;
 struct sigevent *se;

 if (num_ctios == MAX_CTIOS) {
  warnx("at CTIO max");
  return (((void*)0));
 }

 ctio = (struct ccb_scsiio *)malloc(sizeof(*ctio));
 if (ctio == ((void*)0)) {
  warn("malloc CTIO");
  return (((void*)0));
 }
 c_descr = (struct ctio_descr *)malloc(sizeof(*c_descr));
 if (c_descr == ((void*)0)) {
  free(ctio);
  warn("malloc ctio_descr");
  return (((void*)0));
 }
 c_descr->buf = malloc(buf_size);
 if (c_descr->buf == ((void*)0)) {
  free(c_descr);
  free(ctio);
  warn("malloc backing store");
  return (((void*)0));
 }
 num_ctios++;


 ctio->ccb_h.func_code = XPT_CONT_TARGET_IO;
 ctio->ccb_h.retry_count = 2;
 ctio->ccb_h.timeout = CAM_TIME_INFINITY;
 ctio->data_ptr = c_descr->buf;
 ctio->ccb_h.targ_descr = c_descr;
 c_descr->aiocb.aio_buf = c_descr->buf;
 c_descr->aiocb.aio_fildes = file_fd;
 se = &c_descr->aiocb.aio_sigevent;
 se->sigev_notify = SIGEV_KEVENT;
 se->sigev_notify_kqueue = kq_fd;
 se->sigev_value.sival_ptr = ctio;

 return (ctio);
}

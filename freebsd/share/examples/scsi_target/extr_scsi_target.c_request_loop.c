
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union ccb {int cin1; int atio; } ;
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct kevent {int flags; int filter; scalar_t__ udata; } ;
struct ctio_descr {int atio; int event; } ;
struct TYPE_3__ {scalar_t__ targ_descr; } ;
struct ccb_scsiio {TYPE_1__ ccb_h; } ;
struct ccb_hdr {int func_code; int status; } ;
struct TYPE_4__ {int tqe; } ;


 int AIO_DONE ;
 int CAM_DEV_QFRZN ;
 scalar_t__ EINTR ;



 int EV_ADD ;
 int EV_ENABLE ;
 int EV_ERROR ;
 int EV_SET (struct kevent*,int ,int,int,int ,int ,int ) ;
 int MAX_EVENTS ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int TAILQ_EMPTY (int *) ;
 struct ccb_hdr* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct ccb_hdr*,int ) ;


 int abort () ;
 scalar_t__ debug ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int handle_read () ;
 int kevent (int ,struct kevent*,int,struct kevent*,int,struct timespec*) ;
 int kq_fd ;
 int kqueue () ;
 TYPE_2__ periph_links ;
 int queue_io (struct ccb_scsiio*) ;
 int rel_simq () ;
 int run_queue (int ) ;
 int targ_fd ;
 int warnx (char*,...) ;
 int work_atio (int *) ;
 int work_inot (int *) ;
 int work_queue ;

__attribute__((used)) static void
request_loop()
{
 struct kevent events[MAX_EVENTS];
 struct timespec ts, *tptr;
 int quit;


 if ((kq_fd = kqueue()) < 0)
  err(1, "init kqueue");


 EV_SET(&events[0], SIGHUP, 130, EV_ADD|EV_ENABLE, 0, 0, 0);
 EV_SET(&events[1], SIGINT, 130, EV_ADD|EV_ENABLE, 0, 0, 0);
 EV_SET(&events[2], SIGTERM, 130, EV_ADD|EV_ENABLE, 0, 0, 0);
 EV_SET(&events[3], targ_fd, 131, EV_ADD|EV_ENABLE, 0, 0, 0);
 if (kevent(kq_fd, events, 4, ((void*)0), 0, ((void*)0)) < 0)
  err(1, "kevent signal registration");

 ts.tv_sec = 0;
 ts.tv_nsec = 0;
 tptr = ((void*)0);
 quit = 0;


 while (quit == 0) {
  int retval, i, oo;
  struct ccb_hdr *ccb_h;


  retval = kevent(kq_fd, ((void*)0), 0, events, MAX_EVENTS, tptr);
  if (retval < 0) {
   if (errno == EINTR) {
    if (debug)
     warnx("EINTR, looping");
    continue;
              }
   else {
    err(1, "kevent failed");
   }
  } else if (retval > MAX_EVENTS) {
   errx(1, "kevent returned more events than allocated?");
  }


  for (oo = i = 0; i < retval; i++) {
   if ((events[i].flags & EV_ERROR) != 0)
    errx(1, "kevent registration failed");

   switch (events[i].filter) {
   case 131:
    if (debug)
     warnx("read ready");
    handle_read();
    break;
   case 132:
   {
    struct ccb_scsiio *ctio;
    struct ctio_descr *c_descr;
    if (debug)
     warnx("aio ready");

    ctio = (struct ccb_scsiio *)events[i].udata;
    c_descr = (struct ctio_descr *)
       ctio->ccb_h.targ_descr;
    c_descr->event = AIO_DONE;

    queue_io(ctio);

    oo += run_queue(c_descr->atio);
    break;
   }
   case 130:
    if (debug)
     warnx("signal ready, setting quit");
    quit = 1;
    break;
   default:
    warnx("unknown event %d", events[i].filter);
    break;
   }

   if (debug)
    warnx("event %d done", events[i].filter);
  }

  if (oo) {
   tptr = &ts;
   continue;
  }


  if ((ccb_h = TAILQ_FIRST(&work_queue)) != ((void*)0)) {
   union ccb *ccb;

   ccb = (union ccb *)ccb_h;
   switch (ccb_h->func_code) {
   case 129:

    retval = work_atio(&ccb->atio);
    break;
   case 128:
    retval = work_inot(&ccb->cin1);
    break;
   default:
    warnx("Unhandled ccb type %#x on workq",
          ccb_h->func_code);
    abort();

   }


   if ((ccb_h->status & CAM_DEV_QFRZN) != 0) {
    if (debug) {
     warnx("Queue frozen receiving CCB, "
           "releasing");
    }
    rel_simq();
   }


   if (retval == 0) {
    TAILQ_REMOVE(&work_queue, ccb_h,
          periph_links.tqe);
   }
  }






  if (!TAILQ_EMPTY(&work_queue))
   tptr = &ts;
  else
   tptr = ((void*)0);
 }
}

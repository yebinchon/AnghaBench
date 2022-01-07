
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int we_cv; struct thread* we_td; } ;
typedef TYPE_1__ wb_ext ;
struct TYPE_7__ {int wb_waitlist; int wb_oldpri; int wb_awakened; scalar_t__ wb_waitkey; struct TYPE_7__* wb_next; int wb_waittype; TYPE_1__* wb_ext; TYPE_3__* wb_object; } ;
typedef TYPE_2__ wait_block ;
typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct thread {int td_priority; } ;
struct TYPE_8__ {scalar_t__ dh_sigstate; scalar_t__ dh_type; int dh_waitlisthead; } ;
typedef TYPE_3__ nt_dispatch_header ;
typedef scalar_t__ int64_t ;


 scalar_t__ DISP_TYPE_MUTANT ;
 int EWOULDBLOCK ;
 int FALSE ;
 scalar_t__ INT32_MIN ;
 int InsertTailList (int *,int *) ;
 int RemoveEntryList (int *) ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 int STATUS_TIMEOUT ;
 scalar_t__ TRUE ;
 int WAITTYPE_ANY ;
 int bzero (char*,int) ;
 struct thread* curthread ;
 int cv_destroy (int *) ;
 int cv_init (int *,char*) ;
 int cv_timedwait (int *,int *,int ) ;
 int cv_wait (int *,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ntoskrnl_dispatchlock ;
 scalar_t__ ntoskrnl_is_signalled (TYPE_3__*,struct thread*) ;
 int ntoskrnl_satisfy_wait (TYPE_3__*,struct thread*) ;
 int ntoskrnl_time (scalar_t__*) ;
 int panic (char*) ;
 int tvtohz (struct timeval*) ;

uint32_t
KeWaitForSingleObject(void *arg, uint32_t reason, uint32_t mode,
    uint8_t alertable, int64_t *duetime)
{
 wait_block w;
 struct thread *td = curthread;
 struct timeval tv;
 int error = 0;
 uint64_t curtime;
 wb_ext we;
 nt_dispatch_header *obj;

 obj = arg;

 if (obj == ((void*)0))
  return (STATUS_INVALID_PARAMETER);

 mtx_lock(&ntoskrnl_dispatchlock);

 cv_init(&we.we_cv, "KeWFS");
 we.we_td = td;





 if (ntoskrnl_is_signalled(obj, td) == TRUE) {

  if (obj->dh_sigstate != INT32_MIN) {
   ntoskrnl_satisfy_wait(obj, curthread);
   mtx_unlock(&ntoskrnl_dispatchlock);
   return (STATUS_SUCCESS);
  } else {





   if (obj->dh_type == DISP_TYPE_MUTANT) {
    mtx_unlock(&ntoskrnl_dispatchlock);
    panic("mutant limit exceeded");
   }
  }
 }

 bzero((char *)&w, sizeof(wait_block));
 w.wb_object = obj;
 w.wb_ext = &we;
 w.wb_waittype = WAITTYPE_ANY;
 w.wb_next = &w;
 w.wb_waitkey = 0;
 w.wb_awakened = FALSE;
 w.wb_oldpri = td->td_priority;

 InsertTailList((&obj->dh_waitlisthead), (&w.wb_waitlist));
 if (duetime != ((void*)0)) {
  if (*duetime < 0) {
   tv.tv_sec = - (*duetime) / 10000000;
   tv.tv_usec = (- (*duetime) / 10) -
       (tv.tv_sec * 1000000);
  } else {
   ntoskrnl_time(&curtime);
   if (*duetime < curtime)
    tv.tv_sec = tv.tv_usec = 0;
   else {
    tv.tv_sec = ((*duetime) - curtime) / 10000000;
    tv.tv_usec = ((*duetime) - curtime) / 10 -
        (tv.tv_sec * 1000000);
   }
  }
 }

 if (duetime == ((void*)0))
  cv_wait(&we.we_cv, &ntoskrnl_dispatchlock);
 else
  error = cv_timedwait(&we.we_cv,
      &ntoskrnl_dispatchlock, tvtohz(&tv));

 RemoveEntryList(&w.wb_waitlist);

 cv_destroy(&we.we_cv);



 if (error == EWOULDBLOCK) {
  mtx_unlock(&ntoskrnl_dispatchlock);
  return (STATUS_TIMEOUT);
 }

 mtx_unlock(&ntoskrnl_dispatchlock);

 return (STATUS_SUCCESS);




}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int32_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct aac_softc {int timeout_id; int aac_io_lock; int aac_daemontime; } ;
struct aac_fib_header {int dummy; } ;
struct TYPE_2__ {int Size; int XferState; int Command; } ;
struct aac_fib {scalar_t__ data; TYPE_1__ Header; } ;
struct aac_command {int cm_flags; scalar_t__ cm_datalen; int cm_timestamp; struct aac_fib* cm_fib; } ;


 int AAC_CMD_WAIT ;
 int AAC_FIBSTATE_ASYNC ;
 int AAC_FIBSTATE_EMPTY ;
 int AAC_FIBSTATE_FAST_RESPONSE ;
 int AAC_FIBSTATE_FROMHOST ;
 int AAC_FIBSTATE_HOSTOWNED ;
 int AAC_FIBSTATE_INITIALISED ;
 int AAC_FIBSTATE_NORM ;
 int AAC_FIBSTATE_REXPECTED ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int MA_OWNED ;
 int SendHostTime ;
 int aacraid_alloc_command (struct aac_softc*,struct aac_command**) ;
 int aacraid_map_command_sg (struct aac_command*,int *,int ,int ) ;
 int aacraid_release_command (struct aac_command*) ;
 scalar_t__ callout_active (int *) ;
 scalar_t__ callout_pending (int *) ;
 int callout_schedule (int *,int) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int getmicrotime (struct timeval*) ;
 int hz ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int time_uptime ;
 int timeout (void (*) (void*),void*,int ) ;
 int tvtohz (struct timeval*) ;

__attribute__((used)) static void
aac_daemon(void *arg)
{
 struct aac_softc *sc;
 struct timeval tv;
 struct aac_command *cm;
 struct aac_fib *fib;

 sc = arg;
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");







 mtx_lock(&sc->aac_io_lock);

 getmicrotime(&tv);

 if (!aacraid_alloc_command(sc, &cm)) {
  fib = cm->cm_fib;
  cm->cm_timestamp = time_uptime;
  cm->cm_datalen = 0;
  cm->cm_flags |= AAC_CMD_WAIT;

  fib->Header.Size =
   sizeof(struct aac_fib_header) + sizeof(u_int32_t);
  fib->Header.XferState =
   AAC_FIBSTATE_HOSTOWNED |
   AAC_FIBSTATE_INITIALISED |
   AAC_FIBSTATE_EMPTY |
   AAC_FIBSTATE_FROMHOST |
   AAC_FIBSTATE_REXPECTED |
   AAC_FIBSTATE_NORM |
   AAC_FIBSTATE_ASYNC |
   AAC_FIBSTATE_FAST_RESPONSE;
  fib->Header.Command = SendHostTime;
  *(uint32_t *)fib->data = tv.tv_sec;

  aacraid_map_command_sg(cm, ((void*)0), 0, 0);
  aacraid_release_command(cm);
 }




 mtx_unlock(&sc->aac_io_lock);
 tv.tv_sec = 30 * 60;
 tv.tv_usec = 0;
 sc->timeout_id = timeout(aac_daemon, (void *)sc, tvtohz(&tv));

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int offset; scalar_t__ segment; } ;
struct TYPE_8__ {scalar_t__ FuncFlag; scalar_t__ Status; size_t FrameLength; scalar_t__ BufferLength; TYPE_1__ Frame; } ;
typedef TYPE_2__ t_PXENV_UNDI_ISR ;


 int ETHER_ALIGN ;
 int PTOV (char*) ;
 int PXENV_UNDI_ISR ;
 void* PXENV_UNDI_ISR_IN_GET_NEXT ;
 scalar_t__ PXENV_UNDI_ISR_IN_PROCESS ;
 scalar_t__ PXENV_UNDI_ISR_IN_START ;
 scalar_t__ PXENV_UNDI_ISR_OUT_DONE ;
 scalar_t__ PXENV_UNDI_ISR_OUT_RECEIVE ;
 scalar_t__ PXENV_UNDI_ISR_OUT_TRANSMIT ;
 int bcopy (int ,char*,scalar_t__) ;
 TYPE_2__* bio_alloc (int) ;
 int bio_free (TYPE_2__*,int) ;
 int bzero (TYPE_2__*,int) ;
 int free (char*) ;
 char* malloc (int) ;
 int pxe_call (int ,TYPE_2__*) ;

__attribute__((used)) static int
pxe_netif_receive(void **pkt)
{
 t_PXENV_UNDI_ISR *isr;
 char *buf, *ptr, *frame;
 size_t size, rsize;

 isr = bio_alloc(sizeof(*isr));
 if (isr == ((void*)0))
  return (-1);

 bzero(isr, sizeof(*isr));
 isr->FuncFlag = PXENV_UNDI_ISR_IN_START;
 pxe_call(PXENV_UNDI_ISR, isr);
 if (isr->Status != 0) {
  bio_free(isr, sizeof(*isr));
  return (-1);
 }

 bzero(isr, sizeof(*isr));
 isr->FuncFlag = PXENV_UNDI_ISR_IN_PROCESS;
 pxe_call(PXENV_UNDI_ISR, isr);
 if (isr->Status != 0) {
  bio_free(isr, sizeof(*isr));
  return (-1);
 }

 while (isr->FuncFlag == PXENV_UNDI_ISR_OUT_TRANSMIT) {



  bzero(isr, sizeof(*isr));
  isr->FuncFlag = PXENV_UNDI_ISR_IN_GET_NEXT;
  pxe_call(PXENV_UNDI_ISR, isr);
  if (isr->Status != 0 ||
      isr->FuncFlag == PXENV_UNDI_ISR_OUT_DONE) {
   bio_free(isr, sizeof(*isr));
   return (-1);
  }
 }

 while (isr->FuncFlag != PXENV_UNDI_ISR_OUT_RECEIVE) {
  if (isr->Status != 0 ||
      isr->FuncFlag == PXENV_UNDI_ISR_OUT_DONE) {
   bio_free(isr, sizeof(*isr));
   return (-1);
  }
  bzero(isr, sizeof(*isr));
  isr->FuncFlag = PXENV_UNDI_ISR_IN_GET_NEXT;
  pxe_call(PXENV_UNDI_ISR, isr);
 }

 size = isr->FrameLength;
 buf = malloc(size + ETHER_ALIGN);
 if (buf == ((void*)0)) {
  bio_free(isr, sizeof(*isr));
  return (-1);
 }
 ptr = buf + ETHER_ALIGN;
 rsize = 0;

 while (rsize < size) {
  frame = (char *)((uintptr_t)isr->Frame.segment << 4);
  frame += isr->Frame.offset;
  bcopy(PTOV(frame), ptr, isr->BufferLength);
  ptr += isr->BufferLength;
  rsize += isr->BufferLength;

  bzero(isr, sizeof(*isr));
  isr->FuncFlag = PXENV_UNDI_ISR_IN_GET_NEXT;
  pxe_call(PXENV_UNDI_ISR, isr);
  if (isr->Status != 0) {
   bio_free(isr, sizeof(*isr));
   free(buf);
   return (-1);
  }


  if (isr->FuncFlag == PXENV_UNDI_ISR_OUT_RECEIVE)
   continue;
  break;
 }

 *pkt = buf;
 bio_free(isr, sizeof(*isr));
 return (rsize);
}

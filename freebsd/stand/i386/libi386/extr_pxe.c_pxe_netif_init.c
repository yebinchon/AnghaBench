
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {scalar_t__ Status; int HwAddrLen; int* CurrentNodeAddress; int* PermNodeAddress; int PktFilter; } ;
typedef TYPE_1__ t_PXENV_UNDI_OPEN ;
typedef TYPE_1__ t_PXENV_UNDI_GET_INFORMATION ;
struct iodesc {int* myea; scalar_t__ xid; } ;
struct TYPE_9__ {scalar_t__ bp_xid; } ;


 int FLTR_BRDCST ;
 int FLTR_DIRECTED ;
 int PXENV_UNDI_GET_INFORMATION ;
 int PXENV_UNDI_OPEN ;
 TYPE_1__* bio_alloc (int) ;
 int bio_free (TYPE_1__*,int) ;
 TYPE_5__* bootp_response ;
 int bzero (TYPE_1__*,int) ;
 int min (int,int) ;
 int printf (char*,scalar_t__) ;
 int pxe_call (int ,TYPE_1__*) ;

__attribute__((used)) static void
pxe_netif_init(struct iodesc *desc, void *machdep_hint)
{
 t_PXENV_UNDI_GET_INFORMATION *undi_info_p;
 t_PXENV_UNDI_OPEN *undi_open_p;
 uint8_t *mac;
 int i, len;

 undi_info_p = bio_alloc(sizeof(*undi_info_p));
 if (undi_info_p == ((void*)0))
  return;

 bzero(undi_info_p, sizeof(*undi_info_p));
 pxe_call(PXENV_UNDI_GET_INFORMATION, undi_info_p);
 if (undi_info_p->Status != 0) {
  printf("undi get info failed: %x\n", undi_info_p->Status);
  bio_free(undi_info_p, sizeof(*undi_info_p));
  return;
 }


 for (i = 0; i < undi_info_p->HwAddrLen; ++i) {
  if (undi_info_p->CurrentNodeAddress[i] != 0)
   break;
 }
 if (i < undi_info_p->HwAddrLen) {
  for (i = 0; i < undi_info_p->HwAddrLen; ++i) {
   if (undi_info_p->CurrentNodeAddress[i] != 0xff)
    break;
  }
 }
 if (i < undi_info_p->HwAddrLen)
  mac = undi_info_p->CurrentNodeAddress;
 else
  mac = undi_info_p->PermNodeAddress;

 len = min(sizeof (desc->myea), undi_info_p->HwAddrLen);
 for (i = 0; i < len; ++i)
  desc->myea[i] = mac[i];

 if (bootp_response != ((void*)0))
  desc->xid = bootp_response->bp_xid;
 else
  desc->xid = 0;

 bio_free(undi_info_p, sizeof(*undi_info_p));
 undi_open_p = bio_alloc(sizeof(*undi_open_p));
 if (undi_open_p == ((void*)0))
  return;
 bzero(undi_open_p, sizeof(*undi_open_p));
 undi_open_p->PktFilter = FLTR_DIRECTED | FLTR_BRDCST;
 pxe_call(PXENV_UNDI_OPEN, undi_open_p);
 if (undi_open_p->Status != 0)
  printf("undi open failed: %x\n", undi_open_p->Status);
 bio_free(undi_open_p, sizeof(*undi_open_p));
}

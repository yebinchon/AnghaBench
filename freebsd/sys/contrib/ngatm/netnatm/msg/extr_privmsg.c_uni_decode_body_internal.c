
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union uni_msgall {int dummy; } uni_msgall ;
typedef int u_int ;
typedef int u_char ;
struct TYPE_4__ {scalar_t__ present; } ;
struct TYPE_5__ {TYPE_1__ h; } ;
struct unicx {int ielast; TYPE_2__ repeat; } ;
struct uni_msg {int * b_rptr; int * b_wptr; } ;
struct uni_iehdr {int act; int present; int coding; } ;
struct iedecl {int maxlen; int flags; } ;
typedef enum uni_msgtype { ____Placeholder_uni_msgtype } uni_msgtype ;
typedef enum uni_ietype { ____Placeholder_uni_ietype } uni_ietype ;
struct TYPE_6__ {int (* decode ) (union uni_msgall*,struct uni_msg*,int,struct uni_iehdr*,int,struct unicx*) ;} ;





 struct iedecl* GET_IEDECL (int,int ) ;
 int PANIC (char*) ;
 int UNIFL_ACCESS ;
 int UNI_IERR_ACC ;
 int UNI_IERR_BAD ;
 int UNI_IERR_UNK ;
 int UNI_IE_ERROR ;
 int UNI_IE_REPEAT ;
 int UNI_IE_UNREC ;
 int UNI_SAVE_IERR (struct unicx*,int,int ,int ) ;
 int printf (char*,int,...) ;
 int stub1 (union uni_msgall*,struct uni_msg*,int,struct uni_iehdr*,int,struct unicx*) ;
 scalar_t__ uni_decode_ie_hdr (int*,struct uni_iehdr*,struct uni_msg*,struct unicx*,int*) ;
 int uni_msg_len (struct uni_msg*) ;
 TYPE_3__** uni_msgtable ;

__attribute__((used)) static int
uni_decode_body_internal(enum uni_msgtype mtype, struct uni_msg *msg,
    union uni_msgall *out, struct unicx *cx)
{
 enum uni_ietype ietype;
 struct uni_iehdr hdr;
 u_int ielen;
 const struct iedecl *iedecl;
 int err = 0, ret;
 u_char *end;

 cx->ielast = (enum uni_ietype)0;
 cx->repeat.h.present = 0;

 while (uni_msg_len(msg) != 0) {
  if (uni_decode_ie_hdr(&ietype, &hdr, msg, cx, &ielen)) {





   ielen = 0xffffffff;
  }




  if ((iedecl = GET_IEDECL(ietype, hdr.coding)) == ((void*)0) ||
      ietype == UNI_IE_UNREC) {




   if (ielen > uni_msg_len(msg))
    msg->b_rptr = msg->b_wptr;
   else
    msg->b_rptr += ielen;
   (void)UNI_SAVE_IERR(cx, ietype, hdr.act, UNI_IERR_UNK);
   err = -1;
   continue;
  }



  if (ielen > iedecl->maxlen - 4 || ielen > uni_msg_len(msg)) {
   if (ielen > uni_msg_len(msg))
    ielen = uni_msg_len(msg);

   hdr.present |= UNI_IE_ERROR;




  }





  end = msg->b_rptr + ielen;
  ret = uni_msgtable[mtype]->decode(out, msg, ietype,
      &hdr, ielen, cx);
  msg->b_rptr = end;





  switch (ret) {

    case 128:
   break;

    case 129:




   (void)UNI_SAVE_IERR(cx, ietype, hdr.act, UNI_IERR_UNK);
   err = -1;
   break;

    case 130:
   if (iedecl->flags & UNIFL_ACCESS)

    (void)UNI_SAVE_IERR(cx, ietype, hdr.act, UNI_IERR_ACC);
   else
    (void)UNI_SAVE_IERR(cx, ietype, hdr.act, UNI_IERR_BAD);
   err = -1;
   break;

    default:
   PANIC(("bad decode return"));
  }
      cx->ielast = ietype;
      if (ietype != UNI_IE_REPEAT)
   cx->repeat.h.present = 0;
 }
 return err;
}

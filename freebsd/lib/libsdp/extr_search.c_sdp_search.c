
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xpdu ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef int uint128_t ;
struct iovec {int iov_len; void* iov_base; } ;
typedef TYPE_1__* sdp_session_p ;
struct TYPE_6__ {scalar_t__ pid; int tid; int len; } ;
typedef TYPE_2__ sdp_pdu_t ;
struct TYPE_7__ {int attr; int* value; scalar_t__ vlen; int flags; } ;
typedef TYPE_3__ sdp_attr_t ;
typedef int pp ;
typedef int lo ;
typedef int iov ;
typedef int int32_t ;
typedef int ap ;
struct TYPE_5__ {int* req; int* rsp; int* req_e; int cslen; int* cs; int tid; int imtu; int* rsp_e; void* error; int s; } ;


 scalar_t__ EINTR ;
 void* EINVAL ;
 void* EIO ;
 void* ENOATTR ;
 void* ENOBUFS ;
 void* ENOMEM ;
 void* ENOMSG ;
 int SDP_ATTR_INVALID ;
 int SDP_ATTR_OK ;
 int SDP_ATTR_TRUNCATED ;
 int SDP_GET16 (int,int*) ;
 int SDP_GET32 (int,int*) ;
 int SDP_GET8 (int,int*) ;
 scalar_t__ SDP_PDU_ERROR_RESPONSE ;
 scalar_t__ SDP_PDU_SERVICE_SEARCH_ATTRIBUTE_REQUEST ;
 int SDP_PUT16 (int const,int*) ;
 int SDP_PUT32 (scalar_t__ const,int*) ;
 int SDP_PUT8 (int,int*) ;
 scalar_t__ errno ;
 void* htons (int) ;
 int memcpy (int*,int*,scalar_t__) ;
 void* ntohs (int) ;
 int readv (int ,struct iovec*,int) ;
 int* realloc (int*,scalar_t__) ;
 int writev (int ,struct iovec*,int) ;

int32_t
sdp_search(void *xss,
  uint32_t plen, uint16_t const *pp,
  uint32_t alen, uint32_t const *ap,
  uint32_t vlen, sdp_attr_t *vp)
{
 struct sdp_xpdu {
  sdp_pdu_t pdu;
  uint16_t len;
 } __attribute__ ((packed)) xpdu;

 sdp_session_p ss = (sdp_session_p) xss;
 uint8_t *req = ((void*)0), *rsp = ((void*)0), *rsp_tmp = ((void*)0);
 int32_t t, len;
 uint16_t lo, hi;

 if (ss == ((void*)0))
  return (-1);

 if (ss->req == ((void*)0) || ss->rsp == ((void*)0) ||
     plen == 0 || pp == ((void*)0) || alen == 0 || ap == ((void*)0)) {
  ss->error = EINVAL;
  return (-1);
 }

 req = ss->req;


 plen = plen * (sizeof(pp[0]) + 1);


 for (len = 0, t = 0; t < alen; t ++) {
  lo = (uint16_t) (ap[t] >> 16);
  hi = (uint16_t) (ap[t]);

  if (lo > hi) {
   ss->error = EINVAL;
   return (-1);
  }

  if (lo != hi)
   len += (sizeof(ap[t]) + 1);
  else
   len += (sizeof(lo) + 1);
 }
 alen = len;


 len = plen + sizeof(uint8_t) + sizeof(uint16_t) +

  sizeof(uint16_t) +

  alen + sizeof(uint8_t) + sizeof(uint16_t);


 if (ss->req_e - req < len) {
  ss->error = ENOBUFS;
  return (-1);
 }


 SDP_PUT8(144, req);
 SDP_PUT16(plen, req);
 for (; plen > 0; pp ++, plen -= (sizeof(pp[0]) + 1)) {
  SDP_PUT8(129, req);
  SDP_PUT16(*pp, req);
 }


 SDP_PUT16(0xffff, req);


 SDP_PUT8(144, req);
 SDP_PUT16(alen, req);
 for (; alen > 0; ap ++) {
  lo = (uint16_t) (*ap >> 16);
  hi = (uint16_t) (*ap);

  if (lo != hi) {

   SDP_PUT8(136, req);
   SDP_PUT32(*ap, req);
   alen -= (sizeof(ap[0]) + 1);
  } else {

   SDP_PUT8(137, req);
   SDP_PUT16(lo, req);
   alen -= (sizeof(lo) + 1);
  }
 }


 ss->cslen = 0;
 rsp = ss->rsp;

 do {
  struct iovec iov[2];
  uint8_t *req_cs = req;


  if (ss->req_e - req_cs < ss->cslen + 1) {
   ss->error = ENOBUFS;
   return (-1);
  }

  SDP_PUT8(ss->cslen, req_cs);
  if (ss->cslen > 0) {
   memcpy(req_cs, ss->cs, ss->cslen);
   req_cs += ss->cslen;
  }


  xpdu.pdu.pid = SDP_PDU_SERVICE_SEARCH_ATTRIBUTE_REQUEST;
  xpdu.pdu.tid = htons(ss->tid);
  xpdu.pdu.len = htons(req_cs - ss->req);


  iov[0].iov_base = (void *) &xpdu;
  iov[0].iov_len = sizeof(xpdu.pdu);
  iov[1].iov_base = (void *) ss->req;
  iov[1].iov_len = req_cs - ss->req;

  do {
   len = writev(ss->s, iov, sizeof(iov)/sizeof(iov[0]));
  } while (len < 0 && errno == EINTR);

  if (len < 0) {
   ss->error = errno;
   return (-1);
  }


  iov[0].iov_base = (void *) &xpdu;
  iov[0].iov_len = sizeof(xpdu);
  iov[1].iov_base = (void *) rsp;
  iov[1].iov_len = ss->imtu;

  do {
   len = readv(ss->s, iov, sizeof(iov)/sizeof(iov[0]));
  } while (len < 0 && errno == EINTR);

  if (len < 0) {
   ss->error = errno;
   return (-1);
  }
  if (len < sizeof(xpdu)) {
   ss->error = ENOMSG;
   return (-1);
  }

  xpdu.pdu.tid = ntohs(xpdu.pdu.tid);
  xpdu.pdu.len = ntohs(xpdu.pdu.len);
  xpdu.len = ntohs(xpdu.len);

  if (xpdu.pdu.pid == SDP_PDU_ERROR_RESPONSE ||
      xpdu.pdu.tid != ss->tid ||
      xpdu.pdu.len > len ||
      xpdu.len > xpdu.pdu.len) {
   ss->error = EIO;
   return (-1);
  }

  rsp += xpdu.len;
  ss->tid ++;


  ss->cslen = rsp[0];
  if (ss->cslen > 0) {
   if (ss->cslen > sizeof(ss->cs)) {
    ss->error = ENOBUFS;
    return (-1);
   }

   memcpy(ss->cs, rsp + 1, ss->cslen);






   if (ss->rsp_e - rsp <= ss->imtu) {
    uint32_t size, offset;

    size = ss->rsp_e - ss->rsp + ss->imtu;
    offset = rsp - ss->rsp;

    rsp_tmp = realloc(ss->rsp, size);
    if (rsp_tmp == ((void*)0)) {
     ss->error = ENOMEM;
     return (-1);
    }

    ss->rsp = rsp_tmp;
    ss->rsp_e = ss->rsp + size;
    rsp = ss->rsp + offset;
   }
  }
 } while (ss->cslen > 0);
 if (vp == ((void*)0))
  goto done;

 rsp_tmp = ss->rsp;


 SDP_GET8(t, rsp_tmp);
 switch (t) {
 case 142:
  SDP_GET8(len, rsp_tmp);
  break;

 case 144:
  SDP_GET16(len, rsp_tmp);
  break;

 case 143:
  SDP_GET32(len, rsp_tmp);
  break;

 default:
  ss->error = ENOATTR;
  return (-1);

 }

 for (; rsp_tmp < rsp && vlen > 0; ) {

  SDP_GET8(t, rsp_tmp);
  switch (t) {
  case 142:
   SDP_GET8(len, rsp_tmp);
   break;

  case 144:
   SDP_GET16(len, rsp_tmp);
   break;

  case 143:
   SDP_GET32(len, rsp_tmp);
   break;

  default:
   ss->error = ENOATTR;
   return (-1);

  }


  for (; len > 0 && vlen > 0; vp ++, vlen --) {

   SDP_GET8(t, rsp_tmp);
   if (t != 137) {
    ss->error = ENOATTR;
    return (-1);
   }
   SDP_GET16(vp->attr, rsp_tmp);


   switch (rsp_tmp[0]) {
   case 145:
    alen = 0;
    break;

   case 134:
   case 146:
   case 151:
    alen = sizeof(uint8_t);
    break;

   case 137:
   case 149:
   case 129:
    alen = sizeof(uint16_t);
    break;

   case 136:
   case 148:
   case 128:
    alen = sizeof(uint32_t);
    break;

   case 135:
   case 147:
    alen = sizeof(uint64_t);
    break;

   case 138:
   case 150:
   case 130:
    alen = sizeof(uint128_t);
    break;

   case 139:
   case 131:
   case 142:
   case 152:
    alen = rsp_tmp[1] + sizeof(uint8_t);
    break;

   case 141:
   case 133:
   case 144:
   case 154:
    alen = ((uint16_t)rsp_tmp[1] << 8)
     | ((uint16_t)rsp_tmp[2]);
    alen += sizeof(uint16_t);
    break;

   case 140:
   case 132:
   case 143:
   case 153:
    alen = ((uint32_t)rsp_tmp[1] << 24)
     | ((uint32_t)rsp_tmp[2] << 16)
     | ((uint32_t)rsp_tmp[3] << 8)
     | ((uint32_t)rsp_tmp[4]);
    alen += sizeof(uint32_t);
    break;

   default:
    ss->error = ENOATTR;
    return (-1);

   }

   alen += sizeof(uint8_t);

   if (vp->value != ((void*)0)) {
    if (alen <= vp->vlen) {
     vp->flags = SDP_ATTR_OK;
     vp->vlen = alen;
    } else
     vp->flags = SDP_ATTR_TRUNCATED;

    memcpy(vp->value, rsp_tmp, vp->vlen);
   } else
    vp->flags = SDP_ATTR_INVALID;

   len -= (
    sizeof(uint8_t) + sizeof(uint16_t) +
    alen
    );

   rsp_tmp += alen;
  }
 }
done:
 ss->error = 0;

 return (0);
}

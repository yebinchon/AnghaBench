
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct adreq {scalar_t__ adr_byteorder; scalar_t__ adr_datasize; int adr_cmd; int adr_seq; } ;


 scalar_t__ ADIST_BUF_SIZE ;
 scalar_t__ ADIST_BYTEORDER ;





 int EX_PROTOCOL ;
 scalar_t__ bswap32 (scalar_t__) ;
 int bswap64 (int ) ;
 int pjdlog_exitx (int ,char*,int) ;

__attribute__((used)) static void
adreq_decode_and_validate_header(struct adreq *adreq)
{


 if (adreq->adr_byteorder != ADIST_BYTEORDER) {
  adreq->adr_byteorder = ADIST_BYTEORDER;
  adreq->adr_seq = bswap64(adreq->adr_seq);
  adreq->adr_datasize = bswap32(adreq->adr_datasize);
 }



 if (adreq->adr_datasize > ADIST_BUF_SIZE) {
  pjdlog_exitx(EX_PROTOCOL, "Invalid datasize received (%ju).",
      (uintmax_t)adreq->adr_datasize);
 }

 switch (adreq->adr_cmd) {
 case 128:
 case 132:
 case 131:
  if (adreq->adr_datasize == 0) {
   pjdlog_exitx(EX_PROTOCOL,
       "Invalid datasize received (%ju).",
       (uintmax_t)adreq->adr_datasize);
  }
  break;
 case 129:
 case 130:
  if (adreq->adr_datasize > 0) {
   pjdlog_exitx(EX_PROTOCOL,
       "Invalid datasize received (%ju).",
       (uintmax_t)adreq->adr_datasize);
  }
  break;
 default:
  pjdlog_exitx(EX_PROTOCOL, "Invalid command received (%hhu).",
      adreq->adr_cmd);
 }
}

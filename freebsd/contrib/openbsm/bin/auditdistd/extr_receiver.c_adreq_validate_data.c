
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adreq {int adr_cmd; char* adr_data; int adr_datasize; } ;




 int EX_PROTOCOL ;
 int pjdlog_exitx (int ,char*) ;
 int strchr (char*,char) ;

__attribute__((used)) static void
adreq_validate_data(const struct adreq *adreq)
{



 switch (adreq->adr_cmd) {
 case 128:
 case 129:




  if (adreq->adr_data[adreq->adr_datasize - 1] != '\0' ||
      strchr(adreq->adr_data, '\0') !=
      (const char *)adreq->adr_data + adreq->adr_datasize - 1) {
   pjdlog_exitx(EX_PROTOCOL,
       "Invalid file name received.");
  }
  break;
 }
}

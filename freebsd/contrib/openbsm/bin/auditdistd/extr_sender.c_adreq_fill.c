
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct adreq {int adr_cmd; size_t adr_datasize; unsigned char const* adr_data; scalar_t__ adr_seq; } ;


 size_t ADIST_BUF_SIZE ;





 int PJDLOG_ABORT (char*,int) ;
 int PJDLOG_ASSERT (int) ;
 int bcopy (unsigned char const*,unsigned char const*,size_t) ;
 int strlen (unsigned char const*) ;

__attribute__((used)) static void
adreq_fill(struct adreq *adreq, uint8_t cmd, const unsigned char *data,
    size_t size)
{
 static uint64_t seq = 1;

 PJDLOG_ASSERT(size <= ADIST_BUF_SIZE);

 switch (cmd) {
 case 128:
 case 131:
  PJDLOG_ASSERT(data != ((void*)0) && size == 0);
  size = strlen(data) + 1;
  break;
 case 132:
  PJDLOG_ASSERT(data != ((void*)0) && size > 0);
  break;
 case 129:
 case 130:
  PJDLOG_ASSERT(data == ((void*)0) && size == 0);
  break;
 default:
  PJDLOG_ABORT("Invalid command (%hhu).", cmd);
 }

 adreq->adr_cmd = cmd;
 adreq->adr_seq = seq++;
 adreq->adr_datasize = size;

 if (data != ((void*)0) && data != adreq->adr_data)
  bcopy(data, adreq->adr_data, size);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adreq {int adr_error; scalar_t__ adr_datasize; scalar_t__ adr_seq; int adr_cmd; int adr_byteorder; } ;


 int ADIST_BYTEORDER_UNDEFINED ;
 int ADIST_CMD_UNDEFINED ;

__attribute__((used)) static void
adreq_clear(struct adreq *adreq)
{

 adreq->adr_error = -1;
 adreq->adr_byteorder = ADIST_BYTEORDER_UNDEFINED;
 adreq->adr_cmd = ADIST_CMD_UNDEFINED;
 adreq->adr_seq = 0;
 adreq->adr_datasize = 0;
}

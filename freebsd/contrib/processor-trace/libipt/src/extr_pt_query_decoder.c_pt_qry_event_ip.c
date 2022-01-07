
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_query_decoder {int ip; } ;
struct pt_event {int ip_suppressed; } ;


 int pt_errcode (int) ;
 int pt_last_ip_query (int *,int *) ;
 int pte_internal ;



__attribute__((used)) static int pt_qry_event_ip(uint64_t *ip, struct pt_event *event,
      const struct pt_query_decoder *decoder)
{
 int errcode;

 if (!decoder)
  return -pte_internal;

 errcode = pt_last_ip_query(ip, &decoder->ip);
 if (errcode < 0) {
  switch (pt_errcode(errcode)) {
  case 128:
  case 129:
   event->ip_suppressed = 1;
   break;

  default:
   return errcode;
  }
 }

 return 0;
}

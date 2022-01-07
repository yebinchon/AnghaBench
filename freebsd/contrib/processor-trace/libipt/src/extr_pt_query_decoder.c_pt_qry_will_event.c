
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_query_decoder {int evq; struct pt_decoder_function* next; } ;
struct pt_decoder_function {int flags; } ;


 int evb_fup ;
 int evb_psbend ;
 int evb_tip ;
 int pdff_event ;
 int pdff_fup ;
 int pdff_psbend ;
 int pdff_tip ;
 int pt_evq_pending (int *,int ) ;
 int pte_internal ;

__attribute__((used)) static int pt_qry_will_event(const struct pt_query_decoder *decoder)
{
 const struct pt_decoder_function *dfun;

 if (!decoder)
  return -pte_internal;

 dfun = decoder->next;
 if (!dfun)
  return 0;

 if (dfun->flags & pdff_event)
  return 1;

 if (dfun->flags & pdff_psbend)
  return pt_evq_pending(&decoder->evq, evb_psbend);

 if (dfun->flags & pdff_tip)
  return pt_evq_pending(&decoder->evq, evb_tip);

 if (dfun->flags & pdff_fup)
  return pt_evq_pending(&decoder->evq, evb_fup);

 return 0;
}

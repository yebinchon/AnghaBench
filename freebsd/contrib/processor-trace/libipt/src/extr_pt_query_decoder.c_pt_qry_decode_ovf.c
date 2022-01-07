
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pt_time_cal {int dummy; } ;
struct pt_time {int dummy; } ;
struct TYPE_9__ {scalar_t__ apl12; scalar_t__ apl11; scalar_t__ skd010; } ;
struct TYPE_6__ {scalar_t__ keep_tcal_on_ovf; } ;
struct TYPE_7__ {TYPE_1__ query; } ;
struct TYPE_8__ {TYPE_2__ variant; } ;
struct TYPE_10__ {TYPE_4__ errata; TYPE_3__ flags; } ;
struct pt_query_decoder {TYPE_5__ config; int pos; struct pt_time_cal tcal; struct pt_time time; } ;


 int pt_qry_event_ovf_disabled (struct pt_query_decoder*) ;
 int pt_qry_event_ovf_enabled (struct pt_query_decoder*) ;
 int pt_qry_find_ovf_fup (struct pt_query_decoder*) ;
 int pt_qry_handle_apl11 (struct pt_query_decoder*) ;
 int pt_qry_handle_apl12 (struct pt_query_decoder*,unsigned int) ;
 int pt_qry_handle_skd010 (struct pt_query_decoder*) ;
 int pt_qry_process_pending_psb_events (struct pt_query_decoder*) ;
 int pt_qry_reset (struct pt_query_decoder*) ;
 int pt_tcal_update_ovf (struct pt_time_cal*,TYPE_5__*) ;
 int pte_bad_context ;
 int pte_eos ;
 int pte_internal ;
 scalar_t__ ptps_ovf ;

int pt_qry_decode_ovf(struct pt_query_decoder *decoder)
{
 struct pt_time_cal tcal;
 struct pt_time time;
 int status, offset;

 if (!decoder)
  return -pte_internal;

 status = pt_qry_process_pending_psb_events(decoder);
 if (status < 0)
  return status;


 if (status)
  return 0;


 time = decoder->time;
 tcal = decoder->tcal;

 pt_qry_reset(decoder);

 decoder->time = time;
 if (decoder->config.flags.variant.query.keep_tcal_on_ovf) {
  status = pt_tcal_update_ovf(&tcal, &decoder->config);
  if (status < 0)
   return status;

  decoder->tcal = tcal;
 }


 decoder->pos += ptps_ovf;
 offset = pt_qry_find_ovf_fup(decoder);
 if (offset <= 0) {






  if (decoder->config.errata.skd010) {
   status = pt_qry_handle_skd010(decoder);
   if (status <= 0)
    return status;
  }






  if (decoder->config.errata.apl11 &&
      (offset == -pte_bad_context)) {
   status = pt_qry_handle_apl11(decoder);
   if (status <= 0)
    return status;
  }






  if (offset < 0 && offset != -pte_eos)
   return offset;

  return pt_qry_event_ovf_disabled(decoder);
 } else {





  if (decoder->config.errata.apl12) {
   status = pt_qry_handle_apl12(decoder,
           (unsigned int) offset);
   if (status <= 0)
    return status;
  }

  return pt_qry_event_ovf_enabled(decoder);
 }
}

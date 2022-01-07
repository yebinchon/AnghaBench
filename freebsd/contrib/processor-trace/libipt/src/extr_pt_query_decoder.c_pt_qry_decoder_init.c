
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_query_decoder {int evq; int tcal; int last_time; int time; int tnt; int ip; int config; } ;
struct pt_config {int dummy; } ;


 int memset (struct pt_query_decoder*,int ,int) ;
 int pt_config_from_user (int *,struct pt_config const*) ;
 int pt_evq_init (int *) ;
 int pt_last_ip_init (int *) ;
 int pt_tcal_init (int *) ;
 int pt_time_init (int *) ;
 int pt_tnt_cache_init (int *) ;
 int pte_invalid ;

int pt_qry_decoder_init(struct pt_query_decoder *decoder,
   const struct pt_config *config)
{
 int errcode;

 if (!decoder)
  return -pte_invalid;

 memset(decoder, 0, sizeof(*decoder));

 errcode = pt_config_from_user(&decoder->config, config);
 if (errcode < 0)
  return errcode;

 pt_last_ip_init(&decoder->ip);
 pt_tnt_cache_init(&decoder->tnt);
 pt_time_init(&decoder->time);
 pt_time_init(&decoder->last_time);
 pt_tcal_init(&decoder->tcal);
 pt_evq_init(&decoder->evq);

 return 0;
}

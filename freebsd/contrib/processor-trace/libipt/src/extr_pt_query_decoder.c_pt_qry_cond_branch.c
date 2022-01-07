
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_query_decoder {int tnt; } ;


 int pt_qry_cache_tnt (struct pt_query_decoder*) ;
 int pt_qry_status_flags (struct pt_query_decoder*) ;
 scalar_t__ pt_tnt_cache_is_empty (int *) ;
 int pt_tnt_cache_query (int *) ;
 int pte_invalid ;

int pt_qry_cond_branch(struct pt_query_decoder *decoder, int *taken)
{
 int errcode, query;

 if (!decoder || !taken)
  return -pte_invalid;




 if (pt_tnt_cache_is_empty(&decoder->tnt)) {
  errcode = pt_qry_cache_tnt(decoder);
  if (errcode < 0)
   return errcode;
 }

 query = pt_tnt_cache_query(&decoder->tnt);
 if (query < 0)
  return query;

 *taken = query;

 return pt_qry_status_flags(decoder);
}

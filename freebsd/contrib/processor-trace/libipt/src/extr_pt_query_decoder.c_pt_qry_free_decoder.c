
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_query_decoder {int dummy; } ;


 int free (struct pt_query_decoder*) ;
 int pt_qry_decoder_fini (struct pt_query_decoder*) ;

void pt_qry_free_decoder(struct pt_query_decoder *decoder)
{
 pt_qry_decoder_fini(decoder);
 free(decoder);
}

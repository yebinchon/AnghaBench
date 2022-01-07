
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_query_decoder {int enabled; int config; int pos; int next; } ;


 int pt_df_fetch (int *,int ,int *) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr (struct pt_query_decoder*) ;

__attribute__((used)) static struct ptunit_result ptu_sync_decoder(struct pt_query_decoder *decoder)
{
 ptu_ptr(decoder);
 decoder->enabled = 1;

 (void) pt_df_fetch(&decoder->next, decoder->pos, &decoder->config);
 return ptu_passed();
}

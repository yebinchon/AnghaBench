
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_query_decoder {int pos; scalar_t__ enabled; } ;


 int pte_internal ;

__attribute__((used)) static int pt_qry_consume_tip_pgd(struct pt_query_decoder *decoder, int size)
{
 if (!decoder)
  return -pte_internal;

 decoder->enabled = 0;
 decoder->pos += size;
 return 0;
}

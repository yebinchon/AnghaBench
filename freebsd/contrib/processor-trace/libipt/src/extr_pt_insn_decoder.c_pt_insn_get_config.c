
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_insn_decoder {int query; } ;
struct pt_config {int dummy; } ;


 struct pt_config const* pt_qry_get_config (int *) ;

const struct pt_config *
pt_insn_get_config(const struct pt_insn_decoder *decoder)
{
 if (!decoder)
  return ((void*)0);

 return pt_qry_get_config(&decoder->query);
}

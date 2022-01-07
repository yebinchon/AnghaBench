
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_config {int dummy; } ;
struct pt_query_decoder {struct pt_config const config; } ;



const struct pt_config *
pt_qry_get_config(const struct pt_query_decoder *decoder)
{
 if (!decoder)
  return ((void*)0);

 return &decoder->config;
}

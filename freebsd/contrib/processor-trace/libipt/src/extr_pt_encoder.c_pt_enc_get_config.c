
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_config {int dummy; } ;
struct pt_encoder {struct pt_config const config; } ;



const struct pt_config *pt_enc_get_config(const struct pt_encoder *encoder)
{
 if (!encoder)
  return ((void*)0);

 return &encoder->config;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int begin; } ;
struct pt_encoder {TYPE_1__ config; int pos; } ;
struct pt_config {int dummy; } ;


 int memset (struct pt_encoder*,int ,int) ;
 int pt_config_from_user (TYPE_1__*,struct pt_config const*) ;
 int pte_invalid ;

int pt_encoder_init(struct pt_encoder *encoder, const struct pt_config *config)
{
 int errcode;

 if (!encoder)
  return -pte_invalid;

 memset(encoder, 0, sizeof(*encoder));

 errcode = pt_config_from_user(&encoder->config, config);
 if (errcode < 0)
  return errcode;

 encoder->pos = encoder->config.begin;

 return 0;
}

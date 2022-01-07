
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int keep_tcal_on_ovf; } ;
struct TYPE_4__ {int keep_tcal_on_ovf; } ;
struct TYPE_6__ {TYPE_2__ block; TYPE_1__ query; } ;
struct pt_conf_flags {TYPE_3__ variant; } ;


 int memset (struct pt_conf_flags*,int ,int) ;
 int pte_internal ;

__attribute__((used)) static int pt_blk_init_qry_flags(struct pt_conf_flags *qflags,
     const struct pt_conf_flags *flags)
{
 if (!qflags || !flags)
  return -pte_internal;

 memset(qflags, 0, sizeof(*qflags));
 qflags->variant.query.keep_tcal_on_ovf =
  flags->variant.block.keep_tcal_on_ovf;

 return 0;
}

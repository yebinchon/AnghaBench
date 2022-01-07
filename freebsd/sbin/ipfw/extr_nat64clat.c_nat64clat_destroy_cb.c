
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {scalar_t__ set; int name; } ;
typedef TYPE_1__ ipfw_nat64clat_cfg ;
struct TYPE_5__ {scalar_t__ use_set; } ;


 int ESRCH ;
 TYPE_3__ co ;
 int nat64clat_destroy (int ,scalar_t__) ;

__attribute__((used)) static int
nat64clat_destroy_cb(ipfw_nat64clat_cfg *cfg, const char *name, uint8_t set)
{

 if (co.use_set != 0 && cfg->set != set)
  return (ESRCH);

 nat64clat_destroy(cfg->name, cfg->set);
 return (0);
}

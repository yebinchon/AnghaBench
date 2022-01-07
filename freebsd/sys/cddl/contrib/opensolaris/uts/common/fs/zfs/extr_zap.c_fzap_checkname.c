
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zn_key_orig_numints; int zn_key_intlen; } ;
typedef TYPE_1__ zap_name_t ;


 int ENAMETOOLONG ;
 int SET_ERROR (int ) ;
 int ZAP_MAXNAMELEN ;

__attribute__((used)) static int
fzap_checkname(zap_name_t *zn)
{
 if (zn->zn_key_orig_numints * zn->zn_key_intlen > ZAP_MAXNAMELEN)
  return (SET_ERROR(ENAMETOOLONG));
 return (0);
}

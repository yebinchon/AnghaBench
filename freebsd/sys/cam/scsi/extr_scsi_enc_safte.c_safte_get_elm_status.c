
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * cstat; scalar_t__ elm_idx; } ;
typedef TYPE_3__ encioc_elm_status_t ;
struct TYPE_8__ {TYPE_1__* elm_map; } ;
struct TYPE_10__ {TYPE_2__ enc_cache; } ;
typedef TYPE_4__ enc_softc_t ;
struct TYPE_7__ {int * encstat; } ;



__attribute__((used)) static int
safte_get_elm_status(enc_softc_t *enc, encioc_elm_status_t *elms, int slpflg)
{
 int i = (int)elms->elm_idx;

 elms->cstat[0] = enc->enc_cache.elm_map[i].encstat[0];
 elms->cstat[1] = enc->enc_cache.elm_map[i].encstat[1];
 elms->cstat[2] = enc->enc_cache.elm_map[i].encstat[2];
 elms->cstat[3] = enc->enc_cache.elm_map[i].encstat[3];
 return (0);
}

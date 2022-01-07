
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_9__ {TYPE_2__* ses_types; } ;
typedef TYPE_3__ ses_cache_t ;
typedef int ses_addlstatus_avail_t ;
struct TYPE_11__ {TYPE_3__* private; } ;
struct TYPE_10__ {TYPE_5__ enc_daemon_cache; } ;
typedef TYPE_4__ enc_softc_t ;
typedef TYPE_5__ enc_cache_t ;
struct TYPE_8__ {TYPE_1__* hdr; } ;
struct TYPE_7__ {int etype_elm_type; } ;
 int TYPE_ADDLSTATUS_MANDATORY ;
 int TYPE_ADDLSTATUS_NONE ;
 int TYPE_ADDLSTATUS_OPTIONAL ;

__attribute__((used)) static ses_addlstatus_avail_t
ses_typehasaddlstatus(enc_softc_t *enc, uint8_t typidx)
{
 enc_cache_t *enc_cache;
 ses_cache_t *ses_cache;

 enc_cache = &enc->enc_daemon_cache;
 ses_cache = enc_cache->private;
 switch(ses_cache->ses_types[typidx].hdr->etype_elm_type) {
 case 132:
 case 133:
 case 130:
  return (TYPE_ADDLSTATUS_MANDATORY);
 case 129:
 case 128:
 case 131:
  return (TYPE_ADDLSTATUS_OPTIONAL);
 default:

  break;
 }
 return (TYPE_ADDLSTATUS_NONE);
}

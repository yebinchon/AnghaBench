
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sbuf {int dummy; } ;
struct TYPE_8__ {int elm_names_size; size_t elm_idx; scalar_t__ elm_names_len; int elm_devnames; } ;
typedef TYPE_2__ encioc_elm_devnames_t ;
struct TYPE_7__ {int * elm_map; } ;
struct TYPE_9__ {int periph; TYPE_1__ enc_cache; } ;
typedef TYPE_3__ enc_softc_t ;


 int EINVAL ;
 int ENODEV ;
 int SBUF_FIXEDLEN ;
 int cam_periph_lock (int ) ;
 int cam_periph_unlock (int ) ;
 int copyout (int ,int ,scalar_t__) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 scalar_t__ sbuf_len (struct sbuf*) ;
 int sbuf_new (struct sbuf*,int *,int,int ) ;
 int ses_elmdevname_callback ;
 int ses_paths_iter (TYPE_3__*,int *,int ,struct sbuf*) ;

__attribute__((used)) static int
ses_get_elm_devnames(enc_softc_t *enc, encioc_elm_devnames_t *elmdn)
{
 struct sbuf sb;
 int len;

 len = elmdn->elm_names_size;
 if (len < 0)
  return (EINVAL);

 cam_periph_unlock(enc->periph);
 sbuf_new(&sb, ((void*)0), len, SBUF_FIXEDLEN);
 ses_paths_iter(enc, &enc->enc_cache.elm_map[elmdn->elm_idx],
     ses_elmdevname_callback, &sb);
 sbuf_finish(&sb);
 elmdn->elm_names_len = sbuf_len(&sb);
 copyout(sbuf_data(&sb), elmdn->elm_devnames, elmdn->elm_names_len + 1);
 sbuf_delete(&sb);
 cam_periph_lock(enc->periph);
 return (elmdn->elm_names_len > 0 ? 0 : ENODEV);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef int uint8_t ;
struct ses_iterator {int dummy; } ;
struct enc_fsm_state {int dummy; } ;
struct TYPE_6__ {int enc_daemon_cache; } ;
typedef TYPE_1__ enc_softc_t ;
typedef int enc_element_t ;
typedef int enc_cache_t ;


 int ses_iter_init (TYPE_1__*,int *,struct ses_iterator*) ;
 int * ses_iter_next (struct ses_iterator*) ;
 int ses_print_addl_data (TYPE_1__*,int *) ;
 scalar_t__ ses_set_physpath (TYPE_1__*,int *,struct ses_iterator*) ;

__attribute__((used)) static int
ses_publish_physpaths(enc_softc_t *enc, struct enc_fsm_state *state,
    union ccb *ccb, uint8_t **bufp, int error, int xfer_len)
{
 struct ses_iterator iter;
 enc_cache_t *enc_cache;
 enc_element_t *element;

 enc_cache = &enc->enc_daemon_cache;

 ses_iter_init(enc, enc_cache, &iter);
 while ((element = ses_iter_next(&iter)) != ((void*)0)) {






  if (ses_set_physpath(enc, element, &iter) == 0)
   ses_print_addl_data(enc, element);
 }

 return (0);
}

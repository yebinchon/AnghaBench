
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* poll_status ) (TYPE_2__*) ;} ;
struct TYPE_5__ {TYPE_1__ enc_vec; } ;
typedef TYPE_2__ enc_softc_t ;


 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
enc_status_updater(void *arg)
{
 enc_softc_t *enc;

 enc = arg;
 if (enc->enc_vec.poll_status != ((void*)0))
  enc->enc_vec.poll_status(enc);
}

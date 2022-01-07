
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rlayer; } ;
typedef TYPE_1__ SSL ;
typedef int RECORD_LAYER ;


 scalar_t__ RECORD_LAYER_read_pending (int *) ;
 int RECORD_LAYER_release (int *) ;
 scalar_t__ RECORD_LAYER_write_pending (int *) ;

int SSL_free_buffers(SSL *ssl)
{
    RECORD_LAYER *rl = &ssl->rlayer;

    if (RECORD_LAYER_read_pending(rl) || RECORD_LAYER_write_pending(rl))
        return 0;

    RECORD_LAYER_release(rl);
    return 1;
}

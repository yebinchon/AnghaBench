
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int early_data; } ;
struct TYPE_8__ {int early_data_state; TYPE_1__ ext; int server; } ;
typedef TYPE_2__ SSL ;


 int ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED ;
 int SSL_EARLY_DATA_ACCEPTED ;
 int SSL_EARLY_DATA_ACCEPTING ;

 int SSL_EARLY_DATA_FINISHED_READING ;

 int SSL_EARLY_DATA_READING ;

 int SSL_F_SSL_READ_EARLY_DATA ;
 int SSL_READ_EARLY_DATA_ERROR ;
 int SSL_READ_EARLY_DATA_FINISH ;
 int SSL_READ_EARLY_DATA_SUCCESS ;
 int SSL_accept (TYPE_2__*) ;
 int SSL_in_before (TYPE_2__*) ;
 int SSL_read_ex (TYPE_2__*,void*,size_t,size_t*) ;
 int SSLerr (int ,int ) ;

int SSL_read_early_data(SSL *s, void *buf, size_t num, size_t *readbytes)
{
    int ret;

    if (!s->server) {
        SSLerr(SSL_F_SSL_READ_EARLY_DATA, ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
        return SSL_READ_EARLY_DATA_ERROR;
    }

    switch (s->early_data_state) {
    case 129:
        if (!SSL_in_before(s)) {
            SSLerr(SSL_F_SSL_READ_EARLY_DATA,
                   ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
            return SSL_READ_EARLY_DATA_ERROR;
        }


    case 130:
        s->early_data_state = SSL_EARLY_DATA_ACCEPTING;
        ret = SSL_accept(s);
        if (ret <= 0) {

            s->early_data_state = 130;
            return SSL_READ_EARLY_DATA_ERROR;
        }


    case 128:
        if (s->ext.early_data == SSL_EARLY_DATA_ACCEPTED) {
            s->early_data_state = SSL_EARLY_DATA_READING;
            ret = SSL_read_ex(s, buf, num, readbytes);





            if (ret > 0 || (ret <= 0 && s->early_data_state
                                        != SSL_EARLY_DATA_FINISHED_READING)) {
                s->early_data_state = 128;
                return ret > 0 ? SSL_READ_EARLY_DATA_SUCCESS
                               : SSL_READ_EARLY_DATA_ERROR;
            }
        } else {
            s->early_data_state = SSL_EARLY_DATA_FINISHED_READING;
        }
        *readbytes = 0;
        return SSL_READ_EARLY_DATA_FINISH;

    default:
        SSLerr(SSL_F_SSL_READ_EARLY_DATA, ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
        return SSL_READ_EARLY_DATA_ERROR;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rlayer; } ;
typedef int SSL3_BUFFER ;
typedef TYPE_1__ SSL ;


 int * RECORD_LAYER_get_rbuf (int *) ;
 unsigned char* SSL3_BUFFER_get_buf (int *) ;
 size_t SSL3_BUFFER_get_left (int *) ;
 int SSL3_BUFFER_get_offset (int *) ;
 unsigned char SSL3_RT_APPLICATION_DATA ;
 size_t SSL3_RT_HEADER_LENGTH ;
 int n2s (unsigned char*,size_t) ;

__attribute__((used)) static int ssl3_record_app_data_waiting(SSL *s)
{
    SSL3_BUFFER *rbuf;
    size_t left, len;
    unsigned char *p;

    rbuf = RECORD_LAYER_get_rbuf(&s->rlayer);

    p = SSL3_BUFFER_get_buf(rbuf);
    if (p == ((void*)0))
        return 0;

    left = SSL3_BUFFER_get_left(rbuf);

    if (left < SSL3_RT_HEADER_LENGTH)
        return 0;

    p += SSL3_BUFFER_get_offset(rbuf);





    if (*p != SSL3_RT_APPLICATION_DATA)
        return 0;

    p += 3;
    n2s(p, len);

    if (left < SSL3_RT_HEADER_LENGTH + len)
        return 0;

    return 1;
}

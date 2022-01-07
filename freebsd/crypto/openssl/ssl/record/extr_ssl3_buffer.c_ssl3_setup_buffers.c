
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int ssl3_setup_read_buffer (int *) ;
 int ssl3_setup_write_buffer (int *,int,int ) ;

int ssl3_setup_buffers(SSL *s)
{
    if (!ssl3_setup_read_buffer(s)) {

        return 0;
    }
    if (!ssl3_setup_write_buffer(s, 1, 0)) {

        return 0;
    }
    return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* gss_buffer_t ;
struct TYPE_3__ {int length; int* value; } ;


 int* emalloc (int) ;
 int enet_read (int,int*,int) ;
 int ntohl (int) ;

void
read_token (int sock, gss_buffer_t buf)
{
    uint32_t len, net_len;

    enet_read (sock, &net_len, 4);
    len = ntohl(net_len);
    buf->length = len;
    buf->value = emalloc(len);
    enet_read (sock, buf->value, len);
}

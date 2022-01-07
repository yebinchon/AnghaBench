
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* gss_buffer_t ;
struct TYPE_4__ {int length; int* value; } ;
typedef int OM_uint32 ;


 int err (int,char*) ;
 int gss_release_buffer (int *,TYPE_1__*) ;
 int htonl (int) ;
 int net_write (int,int*,int) ;

void
write_token (int sock, gss_buffer_t buf)
{
    uint32_t len, net_len;
    OM_uint32 min_stat;

    len = buf->length;

    net_len = htonl(len);

    if (net_write (sock, &net_len, 4) != 4)
 err (1, "write");
    if (net_write (sock, buf->value, len) != len)
 err (1, "write");

    gss_release_buffer (&min_stat, buf);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int ssl3_read_internal (int *,void*,size_t,int ,size_t*) ;

int ssl3_read(SSL *s, void *buf, size_t len, size_t *readbytes)
{
    return ssl3_read_internal(s, buf, len, 0, readbytes);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buflen; scalar_t__ bufsize; int * buf; } ;
typedef TYPE_1__ http_headerbuf_t ;



__attribute__((used)) static void
init_http_headerbuf(http_headerbuf_t *buf)
{
 buf->buf = ((void*)0);
 buf->bufsize = 0;
 buf->buflen = 0;
}

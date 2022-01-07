
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ buf; } ;
typedef TYPE_1__ http_headerbuf_t ;


 int free (scalar_t__) ;
 int init_http_headerbuf (TYPE_1__*) ;

__attribute__((used)) static void
clean_http_headerbuf(http_headerbuf_t *buf)
{
 if (buf->buf)
  free(buf->buf);
 init_http_headerbuf(buf);
}

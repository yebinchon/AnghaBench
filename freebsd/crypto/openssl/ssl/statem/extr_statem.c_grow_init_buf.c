
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* data; } ;
struct TYPE_4__ {char* init_msg; TYPE_3__* init_buf; } ;
typedef TYPE_1__ SSL ;


 int BUF_MEM_grow_clean (TYPE_3__*,int) ;

__attribute__((used)) static int grow_init_buf(SSL *s, size_t size) {

    size_t msg_offset = (char *)s->init_msg - s->init_buf->data;

    if (!BUF_MEM_grow_clean(s->init_buf, (int)size))
        return 0;

    if (size < msg_offset)
        return 0;

    s->init_msg = s->init_buf->data + msg_offset;

    return 1;
}

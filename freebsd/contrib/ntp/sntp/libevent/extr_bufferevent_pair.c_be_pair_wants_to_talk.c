
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int read_suspended; } ;
struct bufferevent_pair {TYPE_1__ bev; } ;
struct TYPE_4__ {int enabled; int output; } ;


 int EV_READ ;
 int EV_WRITE ;
 TYPE_2__* downcast (struct bufferevent_pair*) ;
 scalar_t__ evbuffer_get_length (int ) ;

__attribute__((used)) static inline int
be_pair_wants_to_talk(struct bufferevent_pair *src,
    struct bufferevent_pair *dst)
{
 return (downcast(src)->enabled & EV_WRITE) &&
     (downcast(dst)->enabled & EV_READ) &&
     !dst->bev.read_suspended &&
     evbuffer_get_length(downcast(src)->output);
}

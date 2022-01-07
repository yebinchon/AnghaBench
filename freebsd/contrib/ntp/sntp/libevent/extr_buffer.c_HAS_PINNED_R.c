
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {scalar_t__ last; } ;


 scalar_t__ CHAIN_PINNED_R (scalar_t__) ;

__attribute__((used)) static inline int
HAS_PINNED_R(struct evbuffer *buf)
{
 return (buf->last && CHAIN_PINNED_R(buf->last));
}

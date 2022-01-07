
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_chain {size_t buffer_len; size_t off; } ;


 int MAX_TO_REALIGN_IN_EXPAND ;

__attribute__((used)) static int
evbuffer_chain_should_realign(struct evbuffer_chain *chain,
    size_t datlen)
{
 return chain->buffer_len - chain->off >= datlen &&
     (chain->off < chain->buffer_len / 2) &&
     (chain->off <= MAX_TO_REALIGN_IN_EXPAND);
}

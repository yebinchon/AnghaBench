
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t pos_in_chain; struct evbuffer_chain* chain; } ;
struct evbuffer_ptr {int pos; TYPE_1__ internal_; } ;
struct evbuffer_chain {int misalign; struct evbuffer_chain* next; scalar_t__ off; scalar_t__ buffer; } ;
typedef int ev_ssize_t ;


 char* find_eol_char (char*,scalar_t__) ;

__attribute__((used)) static ev_ssize_t
evbuffer_find_eol_char(struct evbuffer_ptr *it)
{
 struct evbuffer_chain *chain = it->internal_.chain;
 size_t i = it->internal_.pos_in_chain;
 while (chain != ((void*)0)) {
  char *buffer = (char *)chain->buffer + chain->misalign;
  char *cp = find_eol_char(buffer+i, chain->off-i);
  if (cp) {
   it->internal_.chain = chain;
   it->internal_.pos_in_chain = cp - buffer;
   it->pos += (cp - buffer) - i;
   return it->pos;
  }
  it->pos += chain->off - i;
  i = 0;
  chain = chain->next;
 }

 return (-1);
}

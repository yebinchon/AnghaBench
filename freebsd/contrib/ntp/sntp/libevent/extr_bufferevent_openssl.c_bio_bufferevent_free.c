
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ptr; scalar_t__ flags; scalar_t__ init; scalar_t__ shutdown; } ;
typedef TYPE_1__ BIO ;


 int bufferevent_free (int *) ;

__attribute__((used)) static int
bio_bufferevent_free(BIO *b)
{
 if (!b)
  return 0;
 if (b->shutdown) {
  if (b->init && b->ptr)
   bufferevent_free(b->ptr);
  b->init = 0;
  b->flags = 0;
  b->ptr = ((void*)0);
 }
 return 1;
}

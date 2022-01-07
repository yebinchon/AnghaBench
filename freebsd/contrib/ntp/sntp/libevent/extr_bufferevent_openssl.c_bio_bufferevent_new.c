
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; scalar_t__ flags; int * ptr; scalar_t__ init; } ;
typedef TYPE_1__ BIO ;



__attribute__((used)) static int
bio_bufferevent_new(BIO *b)
{
 b->init = 0;
 b->num = -1;
 b->ptr = ((void*)0);
 b->flags = 0;
 return 1;
}

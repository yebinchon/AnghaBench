
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ lastfree; scalar_t__ node; } ;
typedef TYPE_1__ Table ;
typedef int Node ;


 int gkey (scalar_t__) ;
 int isdummy (TYPE_1__*) ;
 scalar_t__ ttisnil (int ) ;

__attribute__((used)) static Node *getfreepos (Table *t) {
  if (!isdummy(t)) {
    while (t->lastfree > t->node) {
      t->lastfree--;
      if (ttisnil(gkey(t->lastfree)))
        return t->lastfree;
    }
  }
  return ((void*)0);
}

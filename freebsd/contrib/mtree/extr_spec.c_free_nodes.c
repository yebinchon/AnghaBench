
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* tags; struct TYPE_4__* sha512digest; struct TYPE_4__* sha384digest; struct TYPE_4__* sha256digest; struct TYPE_4__* sha1digest; struct TYPE_4__* rmd160digest; struct TYPE_4__* md5digest; struct TYPE_4__* slink; struct TYPE_4__* child; struct TYPE_4__* next; } ;
typedef TYPE_1__ NODE ;


 int REPLACEPTR (TYPE_1__*,int *) ;

void
free_nodes(NODE *root)
{
 NODE *cur, *next;

 if (root == ((void*)0))
  return;

 next = ((void*)0);
 for (cur = root; cur != ((void*)0); cur = next) {
  next = cur->next;
  free_nodes(cur->child);
  REPLACEPTR(cur->slink, ((void*)0));
  REPLACEPTR(cur->md5digest, ((void*)0));
  REPLACEPTR(cur->rmd160digest, ((void*)0));
  REPLACEPTR(cur->sha1digest, ((void*)0));
  REPLACEPTR(cur->sha256digest, ((void*)0));
  REPLACEPTR(cur->sha384digest, ((void*)0));
  REPLACEPTR(cur->sha512digest, ((void*)0));
  REPLACEPTR(cur->tags, ((void*)0));
  REPLACEPTR(cur, ((void*)0));
 }
}

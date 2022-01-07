
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct khash {int k_keep; int k_state; void* k_mask; void* k_dst; } ;
typedef void* naddr ;
struct TYPE_2__ {int tv_sec; } ;


 int KS_NEW ;
 struct khash* kern_find (void*,void*,struct khash***) ;
 int memset (struct khash*,int ,int) ;
 TYPE_1__ now ;
 scalar_t__ rtmalloc (int,char*) ;

__attribute__((used)) static struct khash*
kern_add(naddr dst, naddr mask)
{
 struct khash *k, **pk;

 k = kern_find(dst, mask, &pk);
 if (k != ((void*)0))
  return k;

 k = (struct khash *)rtmalloc(sizeof(*k), "kern_add");

 memset(k, 0, sizeof(*k));
 k->k_dst = dst;
 k->k_mask = mask;
 k->k_state = KS_NEW;
 k->k_keep = now.tv_sec;
 *pk = k;

 return k;
}

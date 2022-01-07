
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {int dummy; } ;
struct rs_svc {int size; int context_size; int cnt; void* contexts; struct rsocket** rss; } ;


 int ENOMEM ;
 void* calloc (int,int) ;
 int free (struct rsocket**) ;
 int memcpy (void*,void*,int) ;

__attribute__((used)) static int rs_svc_grow_sets(struct rs_svc *svc, int grow_size)
{
 struct rsocket **rss;
 void *set, *contexts;

 set = calloc(svc->size + grow_size, sizeof(*rss) + svc->context_size);
 if (!set)
  return ENOMEM;

 svc->size += grow_size;
 rss = set;
 contexts = set + sizeof(*rss) * svc->size;
 if (svc->cnt) {
  memcpy(rss, svc->rss, sizeof(*rss) * (svc->cnt + 1));
  memcpy(contexts, svc->contexts, svc->context_size * (svc->cnt + 1));
 }

 free(svc->rss);
 svc->rss = rss;
 svc->contexts = contexts;
 return 0;
}

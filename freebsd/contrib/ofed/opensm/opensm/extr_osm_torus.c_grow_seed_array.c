
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {int seed_cnt; unsigned int seed_sz; int * seed; } ;


 int memset (int *,int ,unsigned int) ;
 void* realloc (int *,unsigned int) ;

__attribute__((used)) static
bool grow_seed_array(struct torus *t, int new_seeds)
{
 unsigned cnt;
 void *ptr;

 cnt = t->seed_cnt + new_seeds;
 if (cnt > t->seed_sz) {
  cnt += 2 + cnt / 2;
  ptr = realloc(t->seed, cnt * sizeof(*t->seed));
  if (!ptr)
   return 0;
  t->seed = ptr;
  t->seed_sz = cnt;
  memset(&t->seed[t->seed_cnt], 0,
         (cnt - t->seed_cnt) * sizeof(*t->seed));
 }
 return 1;
}

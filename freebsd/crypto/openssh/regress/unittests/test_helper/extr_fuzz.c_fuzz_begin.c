
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct fuzz {size_t slen; int strategies; int * seed; } ;


 int FUZZ_DBG (char*) ;
 int FUZZ_MAX ;
 int SIGINFO ;
 int SIZE_MAX ;
 int assert (int) ;
 struct fuzz* calloc (int,int) ;
 int fuzz_next (struct fuzz*) ;
 struct fuzz* last_fuzz ;
 int * malloc (size_t) ;
 int memcpy (int *,void const*,size_t) ;
 int siginfo ;
 int signal (int ,int ) ;

struct fuzz *
fuzz_begin(u_int strategies, const void *p, size_t l)
{
 struct fuzz *ret = calloc(sizeof(*ret), 1);

 assert(p != ((void*)0));
 assert(ret != ((void*)0));
 ret->seed = malloc(l);
 assert(ret->seed != ((void*)0));
 memcpy(ret->seed, p, l);
 ret->slen = l;
 ret->strategies = strategies;

 assert(ret->slen < SIZE_MAX / 8);
 assert(ret->strategies <= (FUZZ_MAX|(FUZZ_MAX-1)));

 FUZZ_DBG(("begin, ret = %p", ret));

 fuzz_next(ret);






 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuzz {struct fuzz* fuzzed; struct fuzz* seed; } ;


 int FUZZ_DBG (char*) ;
 int SIGINFO ;
 int SIG_DFL ;
 int assert (int ) ;
 int free (struct fuzz*) ;
 int * last_fuzz ;
 int signal (int ,int ) ;

void
fuzz_cleanup(struct fuzz *fuzz)
{
 FUZZ_DBG(("cleanup, fuzz = %p", fuzz));




 assert(fuzz != ((void*)0));
 assert(fuzz->seed != ((void*)0));
 assert(fuzz->fuzzed != ((void*)0));
 free(fuzz->seed);
 free(fuzz->fuzzed);
 free(fuzz);
}

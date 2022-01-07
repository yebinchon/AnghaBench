
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuzz {scalar_t__ slen; int seed; } ;


 scalar_t__ fuzz_len (struct fuzz*) ;
 int fuzz_ptr (struct fuzz*) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;

int
fuzz_matches_original(struct fuzz *fuzz)
{
 if (fuzz_len(fuzz) != fuzz->slen)
  return 0;
 return memcmp(fuzz_ptr(fuzz), fuzz->seed, fuzz->slen) == 0;
}

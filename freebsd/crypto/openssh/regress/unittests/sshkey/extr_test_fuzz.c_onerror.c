
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuzz {int dummy; } ;


 int fprintf (int ,char*) ;
 int fuzz_dump (struct fuzz*) ;
 int stderr ;

__attribute__((used)) static void
onerror(void *fuzz)
{
 fprintf(stderr, "Failed during fuzz:\n");
 fuzz_dump((struct fuzz *)fuzz);
}

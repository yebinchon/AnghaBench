
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int progress_t ;


 int printf (char*) ;
 int progress_draw (int *) ;
 int progress_update (int *,int ) ;

int
progress_complete(progress_t *prog, uint64_t done)
{
 progress_update(prog, done);
 progress_draw(prog);
 printf("\n");
 return 1;
}

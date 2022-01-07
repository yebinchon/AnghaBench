
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct files_state {int * fp; } ;
typedef int FILE ;


 int fclose (int *) ;
 int free (void*) ;

__attribute__((used)) static void
files_endstate(void *p)
{
 FILE * f;

 if (p == ((void*)0))
  return;

 f = ((struct files_state *)p)->fp;
 if (f != ((void*)0))
  fclose(f);

 free(p);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct files_state {int * fp; } ;


 int fclose (int *) ;
 int free (void*) ;

__attribute__((used)) static void
files_endstate(void *p)
{

 if (p == ((void*)0))
  return;
 if (((struct files_state *)p)->fp != ((void*)0))
  fclose(((struct files_state *)p)->fp);
 free(p);
}

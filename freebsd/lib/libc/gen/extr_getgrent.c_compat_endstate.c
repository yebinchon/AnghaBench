
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compat_state {void* name; int * fp; } ;


 int fclose (int *) ;
 int free (void*) ;

__attribute__((used)) static void
compat_endstate(void *p)
{
 struct compat_state *st;

 if (p == ((void*)0))
  return;
 st = (struct compat_state *)p;
 free(st->name);
 if (st->fp != ((void*)0))
  fclose(st->fp);
 free(p);
}

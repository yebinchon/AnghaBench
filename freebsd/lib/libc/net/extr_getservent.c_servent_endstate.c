
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent_state {void* buffer; } ;


 int free (void*) ;

__attribute__((used)) static void
servent_endstate(void *p)
{
 if (p == ((void*)0))
  return;

 free(((struct servent_state *)p)->buffer);
 free(p);
}

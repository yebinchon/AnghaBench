
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libworker {int base; } ;


 int comm_base_delete (int ) ;
 int free (struct libworker*) ;
 int libworker_delete_env (struct libworker*) ;

__attribute__((used)) static void
libworker_delete(struct libworker* w)
{
 if(!w) return;
 libworker_delete_env(w);
 comm_base_delete(w->base);
 free(w);
}

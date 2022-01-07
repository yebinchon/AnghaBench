
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int * name; } ;


 int free (int *) ;
 int * strdup (char const*) ;

__attribute__((used)) static void
thr_set_name_np(struct pthread *thread, const char *name)
{

 free(thread->name);
 thread->name = name != ((void*)0) ? strdup(name) : ((void*)0);
}

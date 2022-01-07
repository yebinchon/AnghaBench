
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evTimer ;


 int FREE (int *) ;
 int UNUSED (void*) ;

__attribute__((used)) static void
free_timer(void *what, void *uap) {
 evTimer *t = what;

 UNUSED(uap);

 FREE(t);
}

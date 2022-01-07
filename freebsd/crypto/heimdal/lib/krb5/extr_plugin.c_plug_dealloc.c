
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plugin2 {scalar_t__ dsohandle; int names; int path; } ;


 int dlclose (scalar_t__) ;
 int heim_release (int ) ;

__attribute__((used)) static void
plug_dealloc(void *ptr)
{
    struct plugin2 *p = ptr;
    heim_release(p->path);
    heim_release(p->names);
    if (p->dsohandle)
 dlclose(p->dsohandle);
}

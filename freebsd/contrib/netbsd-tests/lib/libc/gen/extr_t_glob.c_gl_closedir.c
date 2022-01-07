
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_dir {scalar_t__ pos; } ;


 int DPRINTF (char*) ;

__attribute__((used)) static void
gl_closedir(void *v)
{
 struct gl_dir *dd = v;
 dd->pos = 0;
 DPRINTF(("closedir %p\n", dd));
}

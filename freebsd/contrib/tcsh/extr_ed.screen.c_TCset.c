
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termcapstr {int * str; } ;


 int memcpy (int *,char const*,size_t) ;
 int strlen (char const*) ;
 int xfree (int *) ;
 int * xrealloc (int *,size_t) ;

__attribute__((used)) static void
TCset(struct termcapstr *t, const char *cap)
{
    if (cap == ((void*)0) || *cap == '\0') {
 xfree(t->str);
 t->str = ((void*)0);
    } else {
 size_t size;

 size = strlen(cap) + 1;
 t->str = xrealloc(t->str, size);
 memcpy(t->str, cap, size);
    }
}

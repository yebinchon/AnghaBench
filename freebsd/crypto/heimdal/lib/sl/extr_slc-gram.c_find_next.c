
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct assignment {int name; struct assignment* next; } ;


 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static struct assignment *
find_next(struct assignment *as, const char *name)
{
    for(as = as->next; as != ((void*)0); as = as->next) {
 if(strcmp(as->name, name) == 0)
     return as;
    }
    return ((void*)0);
}

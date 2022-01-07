
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct type_handler {int * typename; } ;
struct TYPE_2__ {int value; } ;
struct assignment {TYPE_1__ u; } ;


 int ex (struct assignment*,char*,int ) ;
 int exit (int) ;
 scalar_t__ strcmp (int ,int *) ;
 struct type_handler* type_handlers ;

__attribute__((used)) static struct type_handler *find_handler(struct assignment *type)
{
    struct type_handler *th;
    for(th = type_handlers; th->typename != ((void*)0); th++)
 if(strcmp(type->u.value, th->typename) == 0)
     return th;
    ex(type, "unknown type \"%s\"", type->u.value);
    exit(1);
}

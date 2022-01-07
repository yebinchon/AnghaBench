
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct constraint_spec {int ctype; } ;
typedef enum ctype { ____Placeholder_ctype } ctype ;


 struct constraint_spec* ecalloc (int,int) ;

__attribute__((used)) static struct constraint_spec *
new_constraint_spec(enum ctype ct)
{
    struct constraint_spec *c = ecalloc(1, sizeof(*c));
    c->ctype = ct;
    return c;
}

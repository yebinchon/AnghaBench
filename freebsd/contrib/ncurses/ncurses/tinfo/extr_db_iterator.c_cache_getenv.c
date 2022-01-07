
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* value; } ;
typedef size_t DBDIRS ;


 size_t dbdLAST ;
 TYPE_1__* my_vars ;
 int update_getenv (char const*,size_t) ;

__attribute__((used)) static char *
cache_getenv(const char *name, DBDIRS which)
{
    char *result = 0;

    (void) update_getenv(name, which);
    if (which < dbdLAST) {
 result = my_vars[which].value;
    }
    return result;
}

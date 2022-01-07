
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; char* value; } ;
typedef size_t DBDIRS ;


 int FALSE ;
 int FreeIfNeeded (char*) ;
 int TRUE ;
 size_t dbdLAST ;
 int free (char*) ;
 char* getenv (char const*) ;
 TYPE_1__* my_vars ;
 scalar_t__ strcmp (char*,char const*) ;
 char* strdup (char*) ;

__attribute__((used)) static bool
update_getenv(const char *name, DBDIRS which)
{
    bool result = FALSE;

    if (which < dbdLAST) {
 char *value;

 if ((value = getenv(name)) == 0 || (value = strdup(value)) == 0) {
     ;
 } else if (my_vars[which].name == 0 || strcmp(my_vars[which].name, name)) {
     FreeIfNeeded(my_vars[which].value);
     my_vars[which].name = name;
     my_vars[which].value = value;
     result = TRUE;
 } else if ((my_vars[which].value != 0) ^ (value != 0)) {
     FreeIfNeeded(my_vars[which].value);
     my_vars[which].value = value;
     result = TRUE;
 } else if (value != 0 && strcmp(value, my_vars[which].value)) {
     FreeIfNeeded(my_vars[which].value);
     my_vars[which].value = value;
     result = TRUE;
 } else {
     free(value);
 }
    }
    return result;
}

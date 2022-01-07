
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pzProgName; } ;
typedef TYPE_1__ tOptions ;


 int SUCCESSFUL (int ) ;
 char** VOIDP (int *) ;
 int intern_file_load (TYPE_1__*) ;
 int validate_struct (TYPE_1__*,char const*) ;

int
optionFileLoad(tOptions * opts, char const * prog)
{
    if (! SUCCESSFUL(validate_struct(opts, prog)))
        return -1;






    {
        char const ** pp = VOIDP(&(opts->pzProgName));
        *pp = prog;
    }

    intern_file_load(opts);
    return 0;
}

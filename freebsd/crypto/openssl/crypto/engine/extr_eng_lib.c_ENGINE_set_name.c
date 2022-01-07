
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; } ;
typedef TYPE_1__ ENGINE ;


 int ENGINE_F_ENGINE_SET_NAME ;
 int ENGINEerr (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;

int ENGINE_set_name(ENGINE *e, const char *name)
{
    if (name == ((void*)0)) {
        ENGINEerr(ENGINE_F_ENGINE_SET_NAME, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    e->name = name;
    return 1;
}

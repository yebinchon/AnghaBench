
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* id; } ;
typedef TYPE_1__ ENGINE ;


 int ENGINE_F_ENGINE_SET_ID ;
 int ENGINEerr (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;

int ENGINE_set_id(ENGINE *e, const char *id)
{
    if (id == ((void*)0)) {
        ENGINEerr(ENGINE_F_ENGINE_SET_ID, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    e->id = id;
    return 1;
}

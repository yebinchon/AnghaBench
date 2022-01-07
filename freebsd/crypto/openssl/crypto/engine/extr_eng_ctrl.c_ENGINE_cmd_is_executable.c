
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int ENGINE_CMD_FLAG_NO_INPUT ;
 int ENGINE_CMD_FLAG_NUMERIC ;
 int ENGINE_CMD_FLAG_STRING ;
 int ENGINE_CTRL_GET_CMD_FLAGS ;
 int ENGINE_F_ENGINE_CMD_IS_EXECUTABLE ;
 int ENGINE_R_INVALID_CMD_NUMBER ;
 int ENGINE_ctrl (int *,int ,int,int *,int *) ;
 int ENGINEerr (int ,int ) ;

int ENGINE_cmd_is_executable(ENGINE *e, int cmd)
{
    int flags;
    if ((flags =
         ENGINE_ctrl(e, ENGINE_CTRL_GET_CMD_FLAGS, cmd, ((void*)0), ((void*)0))) < 0) {
        ENGINEerr(ENGINE_F_ENGINE_CMD_IS_EXECUTABLE,
                  ENGINE_R_INVALID_CMD_NUMBER);
        return 0;
    }
    if (!(flags & ENGINE_CMD_FLAG_NO_INPUT) &&
        !(flags & ENGINE_CMD_FLAG_NUMERIC) &&
        !(flags & ENGINE_CMD_FLAG_STRING))
        return 0;
    return 1;
}

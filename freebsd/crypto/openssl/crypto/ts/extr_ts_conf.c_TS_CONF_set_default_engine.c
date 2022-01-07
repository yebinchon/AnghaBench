
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int ENGINE_CTRL_CHIL_SET_FORKCHECK ;
 int ENGINE_METHOD_ALL ;
 int * ENGINE_by_id (char const*) ;
 int ENGINE_ctrl (int *,int ,int,int ,int ) ;
 int ENGINE_free (int *) ;
 int ENGINE_set_default (int *,int ) ;
 int ERR_add_error_data (int,char*,char const*) ;
 int TS_F_TS_CONF_SET_DEFAULT_ENGINE ;
 int TS_R_COULD_NOT_SET_ENGINE ;
 int TSerr (int ,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

int TS_CONF_set_default_engine(const char *name)
{
    ENGINE *e = ((void*)0);
    int ret = 0;

    if (strcmp(name, "builtin") == 0)
        return 1;

    if ((e = ENGINE_by_id(name)) == ((void*)0))
        goto err;
    if (strcmp(name, "chil") == 0)
        ENGINE_ctrl(e, ENGINE_CTRL_CHIL_SET_FORKCHECK, 1, 0, 0);
    if (!ENGINE_set_default(e, ENGINE_METHOD_ALL))
        goto err;
    ret = 1;

 err:
    if (!ret) {
        TSerr(TS_F_TS_CONF_SET_DEFAULT_ENGINE, TS_R_COULD_NOT_SET_ENGINE);
        ERR_add_error_data(2, "engine:", name);
    }
    ENGINE_free(e);
    return ret;
}

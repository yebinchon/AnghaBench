
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int * ENGINE_by_id (char*) ;
 int ENGINE_ctrl_cmd_string (int *,char*,char const*,int ) ;
 int ENGINE_free (int *) ;

__attribute__((used)) static ENGINE *try_load_engine(const char *engine)
{
    ENGINE *e = ENGINE_by_id("dynamic");
    if (e) {
        if (!ENGINE_ctrl_cmd_string(e, "SO_PATH", engine, 0)
            || !ENGINE_ctrl_cmd_string(e, "LOAD", ((void*)0), 0)) {
            ENGINE_free(e);
            e = ((void*)0);
        }
    }
    return e;
}

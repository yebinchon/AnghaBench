
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int bind_ossltest (int *) ;
 int engine_ossltest_id ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int bind_helper(ENGINE *e, const char *id)
{
    if (id && (strcmp(id, engine_ossltest_id) != 0))
        return 0;
    if (!bind_ossltest(e))
        return 0;
    return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF ;


 int CONF_F_NCONF_GET_STRING ;
 int CONF_R_NO_CONF_OR_ENVIRONMENT_VARIABLE ;
 int CONF_R_NO_VALUE ;
 int CONFerr (int ,int ) ;
 int ERR_add_error_data (int,char*,char const*,char*,char const*) ;
 char* _CONF_get_string (int const*,char const*,char const*) ;

char *NCONF_get_string(const CONF *conf, const char *group, const char *name)
{
    char *s = _CONF_get_string(conf, group, name);





    if (s)
        return s;

    if (conf == ((void*)0)) {
        CONFerr(CONF_F_NCONF_GET_STRING,
                CONF_R_NO_CONF_OR_ENVIRONMENT_VARIABLE);
        return ((void*)0);
    }
    CONFerr(CONF_F_NCONF_GET_STRING, CONF_R_NO_VALUE);
    ERR_add_error_data(4, "group=", group, " name=", name);
    return ((void*)0);
}

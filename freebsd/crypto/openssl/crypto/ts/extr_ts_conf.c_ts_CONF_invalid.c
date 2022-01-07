
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_add_error_data (int,char const*,char*,char const*) ;
 int TS_F_TS_CONF_INVALID ;
 int TS_R_VAR_BAD_VALUE ;
 int TSerr (int ,int ) ;

__attribute__((used)) static void ts_CONF_invalid(const char *name, const char *tag)
{
    TSerr(TS_F_TS_CONF_INVALID, TS_R_VAR_BAD_VALUE);
    ERR_add_error_data(3, name, "::", tag);
}

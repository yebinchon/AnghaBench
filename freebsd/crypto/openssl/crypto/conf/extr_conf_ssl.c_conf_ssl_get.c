
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; size_t cmd_count; int const* cmds; } ;
typedef int SSL_CONF_CMD ;


 TYPE_1__* ssl_names ;

const SSL_CONF_CMD *conf_ssl_get(size_t idx, const char **name, size_t *cnt)
{
    *name = ssl_names[idx].name;
    *cnt = ssl_names[idx].cmd_count;
    return ssl_names[idx].cmds;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF ;


 int _CONF_free_data (int *) ;

__attribute__((used)) static int def_destroy_data(CONF *conf)
{
    if (conf == ((void*)0))
        return 0;
    _CONF_free_data(conf);
    return 1;
}

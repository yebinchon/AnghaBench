
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF ;


 int ENV_CRYPTO_DEVICE ;
 char* NCONF_get_string (int *,char const*,int ) ;
 int TS_CONF_set_default_engine (char const*) ;
 int ts_CONF_invalid (char const*,int ) ;

int TS_CONF_set_crypto_device(CONF *conf, const char *section,
                              const char *device)
{
    int ret = 0;

    if (device == ((void*)0))
        device = NCONF_get_string(conf, section, ENV_CRYPTO_DEVICE);

    if (device && !TS_CONF_set_default_engine(device)) {
        ts_CONF_invalid(section, ENV_CRYPTO_DEVICE);
        goto err;
    }
    ret = 1;
 err:
    return ret;
}

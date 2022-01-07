
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF ;


 int BIO_printf (int ,char*) ;
 scalar_t__ CONF_modules_load (int const*,int *,int ) ;
 int ERR_print_errors (int ) ;
 int NCONF_free (int *) ;
 int * app_load_config_quiet (int ) ;
 int bio_err ;
 int default_config_file ;

int app_load_modules(const CONF *config)
{
    CONF *to_free = ((void*)0);

    if (config == ((void*)0))
        config = to_free = app_load_config_quiet(default_config_file);
    if (config == ((void*)0))
        return 1;

    if (CONF_modules_load(config, ((void*)0), 0) <= 0) {
        BIO_printf(bio_err, "Error configuring OpenSSL modules\n");
        ERR_print_errors(bio_err);
        NCONF_free(to_free);
        return 0;
    }
    NCONF_free(to_free);
    return 1;
}

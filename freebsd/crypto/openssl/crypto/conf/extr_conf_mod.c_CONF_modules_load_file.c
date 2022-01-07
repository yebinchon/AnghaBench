
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF ;


 unsigned long CONF_MFLAGS_IGNORE_MISSING_FILE ;
 unsigned long CONF_MFLAGS_IGNORE_RETURN_CODES ;
 scalar_t__ CONF_R_NO_SUCH_FILE ;
 char* CONF_get1_default_config_file () ;
 int CONF_modules_load (int *,char const*,unsigned long) ;
 scalar_t__ ERR_GET_REASON (int ) ;
 int ERR_clear_error () ;
 int ERR_peek_last_error () ;
 int NCONF_free (int *) ;
 scalar_t__ NCONF_load (int *,char*,int *) ;
 int * NCONF_new (int *) ;
 int OPENSSL_free (char*) ;

int CONF_modules_load_file(const char *filename, const char *appname,
                           unsigned long flags)
{
    char *file = ((void*)0);
    CONF *conf = ((void*)0);
    int ret = 0;
    conf = NCONF_new(((void*)0));
    if (conf == ((void*)0))
        goto err;

    if (filename == ((void*)0)) {
        file = CONF_get1_default_config_file();
        if (!file)
            goto err;
    } else
        file = (char *)filename;

    if (NCONF_load(conf, file, ((void*)0)) <= 0) {
        if ((flags & CONF_MFLAGS_IGNORE_MISSING_FILE) &&
            (ERR_GET_REASON(ERR_peek_last_error()) == CONF_R_NO_SUCH_FILE)) {
            ERR_clear_error();
            ret = 1;
        }
        goto err;
    }

    ret = CONF_modules_load(conf, appname, flags);

 err:
    if (filename == ((void*)0))
        OPENSSL_free(file);
    NCONF_free(conf);

    if (flags & CONF_MFLAGS_IGNORE_RETURN_CODES)
        return 1;

    return ret;
}

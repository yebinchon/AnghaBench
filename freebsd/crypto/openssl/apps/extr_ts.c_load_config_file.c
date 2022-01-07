
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF ;
typedef int BIO ;


 int BIO_free_all (int *) ;
 int * BIO_new_file (char const*,char*) ;
 int BIO_printf (int ,char*,char const*) ;
 int ENV_OID_FILE ;
 int ERR_clear_error () ;
 int ERR_print_errors (int ) ;
 char* NCONF_get_string (int *,int *,int ) ;
 int OBJ_create_objects (int *) ;
 int add_oid_section (int *) ;
 int * app_load_config (char const*) ;
 int bio_err ;

__attribute__((used)) static CONF *load_config_file(const char *configfile)
{
    CONF *conf = app_load_config(configfile);

    if (conf != ((void*)0)) {
        const char *p;

        BIO_printf(bio_err, "Using configuration from %s\n", configfile);
        p = NCONF_get_string(conf, ((void*)0), ENV_OID_FILE);
        if (p != ((void*)0)) {
            BIO *oid_bio = BIO_new_file(p, "r");
            if (!oid_bio)
                ERR_print_errors(bio_err);
            else {
                OBJ_create_objects(oid_bio);
                BIO_free_all(oid_bio);
            }
        } else
            ERR_clear_error();
        if (!add_oid_section(conf))
            ERR_print_errors(bio_err);
    }
    return conf;
}

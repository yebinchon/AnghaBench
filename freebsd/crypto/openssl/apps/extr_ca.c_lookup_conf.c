
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF ;


 int BIO_printf (int ,char*,char const*,char const*) ;
 char* NCONF_get_string (int const*,char const*,char const*) ;
 int bio_err ;

__attribute__((used)) static char *lookup_conf(const CONF *conf, const char *section, const char *tag)
{
    char *entry = NCONF_get_string(conf, section, tag);
    if (entry == ((void*)0))
        BIO_printf(bio_err, "variable lookup failed for %s::%s\n", section, tag);
    return entry;
}

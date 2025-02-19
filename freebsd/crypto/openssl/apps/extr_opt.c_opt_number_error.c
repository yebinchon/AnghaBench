
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct strstr_pair_st TYPE_1__ ;


struct strstr_pair_st {char* prefix; char* name; } ;


 int BIO_printf (int ,char*,int ,char const*,...) ;
 size_t OSSL_NELEM (TYPE_1__*) ;
 int bio_err ;
 int prog ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int ) ;

__attribute__((used)) static void opt_number_error(const char *v)
{
    size_t i = 0;
    struct strstr_pair_st {
        char *prefix;
        char *name;
    } b[] = {
        {"0x", "a hexadecimal"},
        {"0X", "a hexadecimal"},
        {"0", "an octal"}
    };

    for (i = 0; i < OSSL_NELEM(b); i++) {
        if (strncmp(v, b[i].prefix, strlen(b[i].prefix)) == 0) {
            BIO_printf(bio_err,
                       "%s: Can't parse \"%s\" as %s number\n",
                       prog, v, b[i].name);
            return;
        }
    }
    BIO_printf(bio_err, "%s: Can't parse \"%s\" as a number\n", prog, v);
    return;
}

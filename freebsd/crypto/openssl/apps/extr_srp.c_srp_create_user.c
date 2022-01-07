
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int password ;
struct TYPE_3__ {char* prompt_info; char* password; } ;
typedef TYPE_1__ PW_CB_DATA ;


 int BIO_printf (int ,char*,...) ;
 int OPENSSL_cleanse (char*,int) ;
 char* SRP_create_verifier (char*,char*,char**,char**,char*,char*) ;
 int bio_err ;
 int password_callback (char*,int,int,TYPE_1__*) ;

__attribute__((used)) static char *srp_create_user(char *user, char **srp_verifier,
                             char **srp_usersalt, char *g, char *N,
                             char *passout, int verbose)
{
    char password[1025];
    PW_CB_DATA cb_tmp;
    char *gNid = ((void*)0);
    char *salt = ((void*)0);
    int len;
    cb_tmp.prompt_info = user;
    cb_tmp.password = passout;

    len = password_callback(password, sizeof(password)-1, 1, &cb_tmp);
    if (len > 0) {
        password[len] = 0;
        if (verbose)
            BIO_printf(bio_err, "Creating\n user=\"%s\"\n g=\"%s\"\n N=\"%s\"\n",
                       user, g, N);
        if ((gNid = SRP_create_verifier(user, password, &salt,
                                        srp_verifier, N, g)) == ((void*)0)) {
            BIO_printf(bio_err, "Internal error creating SRP verifier\n");
        } else {
            *srp_usersalt = salt;
        }
        OPENSSL_cleanse(password, len);
        if (verbose > 1)
            BIO_printf(bio_err, "gNid=%s salt =\"%s\"\n verifier =\"%s\"\n",
                       gNid, salt, *srp_verifier);

    }
    return gNid;
}

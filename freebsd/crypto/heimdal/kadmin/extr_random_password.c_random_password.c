
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int newkey ;
typedef int OtpKey ;


 int free (char*) ;
 int generate_password (char**,int,char*,int,char*,int,char*,int) ;
 int krb5_generate_random_block (int *,int) ;
 int memset (char*,int ,int ) ;
 int otp_print_stddict (int ,char*,size_t) ;
 int strlcpy (char*,char*,size_t) ;
 int strlen (char*) ;
 int strlwr (char*) ;

void
random_password(char *pw, size_t len)
{
    char *pass;
    generate_password(&pass, 3,
        "abcdefghijklmnopqrstuvwxyz", 7,
        "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 2,
        "@$%&*()-+=:,/<>1234567890", 1);
    strlcpy(pw, pass, len);
    memset(pass, 0, strlen(pass));
    free(pass);

}

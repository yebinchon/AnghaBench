
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_key ;
typedef int FILE ;


 int LDNS_FREE (char*) ;
 int fprintf (int *,char*,...) ;
 char* ldns_key2str (int const*) ;

void
ldns_key_print(FILE *output, const ldns_key *k)
{
 char *str = ldns_key2str(k);
 if (str) {
                fprintf(output, "%s", str);
        } else {
                fprintf(output, "Unable to convert private key to string\n");
        }
        LDNS_FREE(str);
}

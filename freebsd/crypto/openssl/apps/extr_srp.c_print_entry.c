
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* db; } ;
struct TYPE_4__ {int data; } ;
typedef TYPE_2__ CA_DB ;


 int BIO_printf (int ,char*,...) ;
 int DB_NUMBER ;
 size_t DB_srpid ;
 int bio_err ;
 char** sk_OPENSSL_PSTRING_value (int ,int) ;

__attribute__((used)) static void print_entry(CA_DB *db, int indx, int verbose, char *s)
{
    if (indx >= 0 && verbose) {
        int j;
        char **pp = sk_OPENSSL_PSTRING_value(db->db->data, indx);
        BIO_printf(bio_err, "%s \"%s\"\n", s, pp[DB_srpid]);
        for (j = 0; j < DB_NUMBER; j++) {
            BIO_printf(bio_err, "  %d = \"%s\"\n", j, pp[j]);
        }
    }
}

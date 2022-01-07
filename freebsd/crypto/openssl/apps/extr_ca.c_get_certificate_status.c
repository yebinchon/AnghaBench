
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ CA_DB ;


 int BIO_printf (int ,char*,char*,...) ;
 int DB_NUMBER ;
 char DB_TYPE_EXP ;
 char DB_TYPE_REV ;
 char DB_TYPE_SUSP ;
 char DB_TYPE_VAL ;
 size_t DB_serial ;
 size_t DB_type ;
 int OPENSSL_free (char*) ;
 char** TXT_DB_get_by_index (int ,size_t,char**) ;
 char* app_malloc (size_t,char*) ;
 int bio_err ;
 int make_uppercase (char*) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int get_certificate_status(const char *serial, CA_DB *db)
{
    char *row[DB_NUMBER], **rrow;
    int ok = -1, i;
    size_t serial_len = strlen(serial);


    for (i = 0; i < DB_NUMBER; i++)
        row[i] = ((void*)0);


    row[DB_serial] = app_malloc(serial_len + 2, "row serial#");

    if (serial_len % 2) {



        row[DB_serial][0] = '0';


        memcpy(row[DB_serial] + 1, serial, serial_len);
        row[DB_serial][serial_len + 1] = '\0';
    } else {

        memcpy(row[DB_serial], serial, serial_len);
        row[DB_serial][serial_len] = '\0';
    }


    make_uppercase(row[DB_serial]);

    ok = 1;


    rrow = TXT_DB_get_by_index(db->db, DB_serial, row);
    if (rrow == ((void*)0)) {
        BIO_printf(bio_err, "Serial %s not present in db.\n", row[DB_serial]);
        ok = -1;
        goto end;
    } else if (rrow[DB_type][0] == DB_TYPE_VAL) {
        BIO_printf(bio_err, "%s=Valid (%c)\n",
                   row[DB_serial], rrow[DB_type][0]);
        goto end;
    } else if (rrow[DB_type][0] == DB_TYPE_REV) {
        BIO_printf(bio_err, "%s=Revoked (%c)\n",
                   row[DB_serial], rrow[DB_type][0]);
        goto end;
    } else if (rrow[DB_type][0] == DB_TYPE_EXP) {
        BIO_printf(bio_err, "%s=Expired (%c)\n",
                   row[DB_serial], rrow[DB_type][0]);
        goto end;
    } else if (rrow[DB_type][0] == DB_TYPE_SUSP) {
        BIO_printf(bio_err, "%s=Suspended (%c)\n",
                   row[DB_serial], rrow[DB_type][0]);
        goto end;
    } else {
        BIO_printf(bio_err, "%s=Unknown (%c).\n",
                   row[DB_serial], rrow[DB_type][0]);
        ok = -1;
    }
 end:
    for (i = 0; i < DB_NUMBER; i++) {
        OPENSSL_free(row[i]);
    }
    return ok;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* dbfname; int db; } ;
typedef TYPE_1__ CA_DB ;


 int OPENSSL_free (TYPE_1__*) ;
 int TXT_DB_free (int ) ;

void free_index(CA_DB *db)
{
    if (db) {
        TXT_DB_free(db->db);
        OPENSSL_free(db->dbfname);
        OPENSSL_free(db);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;
typedef int krb5_error_code ;
typedef int krb5_context ;


 int EINVAL ;
 int MAX_RETRIES ;
 int SQLITE_BUSY ;
 int SQLITE_IOERR_BLOCKED ;
 int SQLITE_LOCKED ;
 int SQLITE_OK ;
 int krb5_set_error_message (int ,int ,char*,char const*,int ) ;
 int krb5_warnx (int ,char*) ;
 int sleep (int) ;
 int sqlite3_errmsg (int *) ;
 int sqlite3_prepare_v2 (int *,char const*,int,int **,int *) ;

__attribute__((used)) static krb5_error_code
hdb_sqlite_prepare_stmt(krb5_context context,
                        sqlite3 *db,
                        sqlite3_stmt **statement,
                        const char *str)
{
    int ret, tries = 0;

    ret = sqlite3_prepare_v2(db, str, -1, statement, ((void*)0));
    while((tries++ < MAX_RETRIES) &&
   ((ret == SQLITE_BUSY) ||
           (ret == SQLITE_IOERR_BLOCKED) ||
           (ret == SQLITE_LOCKED))) {
 krb5_warnx(context, "hdb-sqlite: prepare busy");
        sleep(1);
        ret = sqlite3_prepare_v2(db, str, -1, statement, ((void*)0));
    }

    if (ret != SQLITE_OK) {
        krb5_set_error_message(context, EINVAL,
          "Failed to prepare stmt %s: %s",
          str, sqlite3_errmsg(db));
        return EINVAL;
    }

    return 0;
}

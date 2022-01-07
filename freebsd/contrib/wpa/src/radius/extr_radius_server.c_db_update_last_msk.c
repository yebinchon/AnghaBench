
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct radius_session {TYPE_1__* server; int eap; } ;
struct TYPE_2__ {int db; } ;


 int RADIUS_DEBUG (char*,int ) ;
 scalar_t__ SQLITE_OK ;
 int * eap_get_identity (int ,size_t*) ;
 char* eap_get_serial_num (int ) ;
 int os_free (char*) ;
 char* os_malloc (size_t) ;
 int os_memcpy (char*,int const*,size_t) ;
 int os_snprintf (char*,size_t,char*,char const*) ;
 int os_strlen (char const*) ;
 int sqlite3_errmsg (int ) ;
 scalar_t__ sqlite3_exec (int ,char*,int *,int *,int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*,char*) ;

__attribute__((used)) static void db_update_last_msk(struct radius_session *sess, const char *msk)
{
}

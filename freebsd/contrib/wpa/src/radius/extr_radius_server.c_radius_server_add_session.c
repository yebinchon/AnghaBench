
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radius_session {TYPE_1__* server; int t_c_filtering; int nas_ip; int username; int mac_addr; } ;
struct os_time {int sec; } ;
typedef int addr_txt ;
struct TYPE_2__ {int db; } ;


 int ETH_ALEN ;
 int MAC2STR (int ) ;
 int MACSTR ;
 int RADIUS_ERROR (char*,int ) ;
 scalar_t__ SQLITE_OK ;
 int os_get_time (struct os_time*) ;
 int os_snprintf (char*,int,int ,int ) ;
 int sqlite3_errmsg (int ) ;
 scalar_t__ sqlite3_exec (int ,char*,int *,int *,int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void radius_server_add_session(struct radius_session *sess)
{
}

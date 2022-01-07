
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ref; } ;
typedef TYPE_1__ conn_t ;


 TYPE_1__* cached_connection ;
 int fetch_close (TYPE_1__*) ;
 int ftp_cmd (TYPE_1__*,char*) ;

__attribute__((used)) static void
ftp_disconnect(conn_t *conn)
{
 (void)ftp_cmd(conn, "QUIT");
 if (conn == cached_connection && conn->ref == 1)
  cached_connection = ((void*)0);
 fetch_close(conn);
}

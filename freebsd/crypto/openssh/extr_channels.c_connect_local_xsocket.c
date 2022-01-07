
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 char* _PATH_UNIX_X ;
 int connect_local_xsocket_path (char*) ;
 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static int
connect_local_xsocket(u_int dnr)
{
 char buf[1024];
 snprintf(buf, sizeof buf, _PATH_UNIX_X, dnr);
 return connect_local_xsocket_path(buf);
}

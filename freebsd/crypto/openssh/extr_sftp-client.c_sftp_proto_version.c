
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sftp_conn {int version; } ;



u_int
sftp_proto_version(struct sftp_conn *conn)
{
 return conn->version;
}

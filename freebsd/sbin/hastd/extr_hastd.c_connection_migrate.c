
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct proto_conn {int dummy; } ;
struct hast_resource {scalar_t__ hr_role; char* hr_sourceaddr; int hr_conn; int hr_remoteaddr; int hr_name; } ;
typedef scalar_t__ int16_t ;


 scalar_t__ HAST_ROLE_PRIMARY ;
 int LOG_WARNING ;
 int PJDLOG_ASSERT (int) ;
 scalar_t__ errno ;
 int pjdlog_errno (int ,char*,...) ;
 int pjdlog_prefix_set (char*,char*,...) ;
 int proto_client (char*,int ,struct proto_conn**) ;
 int proto_close (struct proto_conn*) ;
 int proto_connect (struct proto_conn*,int) ;
 int proto_connection_send (int ,struct proto_conn*) ;
 int proto_recv (int ,scalar_t__*,int) ;
 int proto_send (int ,scalar_t__*,int) ;
 int role2str (scalar_t__) ;

__attribute__((used)) static void
connection_migrate(struct hast_resource *res)
{
 struct proto_conn *conn;
 int16_t val = 0;

 pjdlog_prefix_set("[%s] (%s) ", res->hr_name, role2str(res->hr_role));

 PJDLOG_ASSERT(res->hr_role == HAST_ROLE_PRIMARY);

 if (proto_recv(res->hr_conn, &val, sizeof(val)) == -1) {
  pjdlog_errno(LOG_WARNING,
      "Unable to receive connection command");
  return;
 }
 if (proto_client(res->hr_sourceaddr[0] != '\0' ? res->hr_sourceaddr : ((void*)0),
     res->hr_remoteaddr, &conn) == -1) {
  val = errno;
  pjdlog_errno(LOG_WARNING,
      "Unable to create outgoing connection to %s",
      res->hr_remoteaddr);
  goto out;
 }
 if (proto_connect(conn, -1) == -1) {
  val = errno;
  pjdlog_errno(LOG_WARNING, "Unable to connect to %s",
      res->hr_remoteaddr);
  proto_close(conn);
  goto out;
 }
 val = 0;
out:
 if (proto_send(res->hr_conn, &val, sizeof(val)) == -1) {
  pjdlog_errno(LOG_WARNING,
      "Unable to send reply to connection request");
 }
 if (val == 0 && proto_connection_send(res->hr_conn, conn) == -1)
  pjdlog_errno(LOG_WARNING, "Unable to send connection");

 pjdlog_prefix_set("%s", "");
}

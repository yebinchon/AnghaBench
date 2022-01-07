
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct sftp_conn {scalar_t__ version; int msg_id; } ;
typedef int Attrib ;


 int SSH2_FXP_LSTAT ;
 int debug (char*) ;
 int * do_stat (struct sftp_conn*,char const*,int) ;
 int * get_decode_stat (struct sftp_conn*,scalar_t__,int) ;
 int logit (char*) ;
 int send_string_request (struct sftp_conn*,scalar_t__,int ,char const*,int ) ;
 int strlen (char const*) ;

Attrib *
do_lstat(struct sftp_conn *conn, const char *path, int quiet)
{
 u_int id;

 if (conn->version == 0) {
  if (quiet)
   debug("Server version does not support lstat operation");
  else
   logit("Server version does not support lstat operation");
  return(do_stat(conn, path, quiet));
 }

 id = conn->msg_id++;
 send_string_request(conn, id, SSH2_FXP_LSTAT, path,
     strlen(path));

 return(get_decode_stat(conn, id, quiet));
}

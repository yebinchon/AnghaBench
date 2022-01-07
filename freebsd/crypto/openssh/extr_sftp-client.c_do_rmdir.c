
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct sftp_conn {int msg_id; } ;


 int SSH2_FXP_RMDIR ;
 scalar_t__ SSH2_FX_OK ;
 int error (char*,int ) ;
 int fx2txt (scalar_t__) ;
 scalar_t__ get_status (struct sftp_conn*,scalar_t__) ;
 int send_string_request (struct sftp_conn*,scalar_t__,int ,char const*,int ) ;
 int strlen (char const*) ;

int
do_rmdir(struct sftp_conn *conn, const char *path)
{
 u_int status, id;

 id = conn->msg_id++;
 send_string_request(conn, id, SSH2_FXP_RMDIR, path,
     strlen(path));

 status = get_status(conn, id);
 if (status != SSH2_FX_OK)
  error("Couldn't remove directory: %s", fx2txt(status));

 return status == SSH2_FX_OK ? 0 : -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;
struct sftp_conn {int msg_id; } ;
typedef int Attrib ;


 int SSH2_FXP_FSETSTAT ;
 scalar_t__ SSH2_FX_OK ;
 int error (char*,int ) ;
 int fx2txt (scalar_t__) ;
 scalar_t__ get_status (struct sftp_conn*,scalar_t__) ;
 int send_string_attrs_request (struct sftp_conn*,scalar_t__,int ,int const*,scalar_t__,int *) ;

int
do_fsetstat(struct sftp_conn *conn, const u_char *handle, u_int handle_len,
    Attrib *a)
{
 u_int status, id;

 id = conn->msg_id++;
 send_string_attrs_request(conn, id, SSH2_FXP_FSETSTAT, handle,
     handle_len, a);

 status = get_status(conn, id);
 if (status != SSH2_FX_OK)
  error("Couldn't fsetstat: %s", fx2txt(status));

 return status == SSH2_FX_OK ? 0 : -1;
}

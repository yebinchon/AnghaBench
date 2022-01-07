
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct sftp_conn {int msg_id; } ;
typedef int Attrib ;


 int SSH2_FXP_SETSTAT ;
 scalar_t__ SSH2_FX_OK ;
 int error (char*,char const*,char*) ;
 char* fx2txt (scalar_t__) ;
 scalar_t__ get_status (struct sftp_conn*,scalar_t__) ;
 int send_string_attrs_request (struct sftp_conn*,scalar_t__,int ,char const*,int ,int *) ;
 int strlen (char const*) ;

int
do_setstat(struct sftp_conn *conn, const char *path, Attrib *a)
{
 u_int status, id;

 id = conn->msg_id++;
 send_string_attrs_request(conn, id, SSH2_FXP_SETSTAT, path,
     strlen(path), a);

 status = get_status(conn, id);
 if (status != SSH2_FX_OK)
  error("Couldn't setstat on \"%s\": %s", path,
      fx2txt(status));

 return status == SSH2_FX_OK ? 0 : -1;
}

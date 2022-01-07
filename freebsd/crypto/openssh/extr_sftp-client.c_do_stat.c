
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct sftp_conn {scalar_t__ version; int msg_id; } ;
typedef int Attrib ;


 int SSH2_FXP_STAT ;
 int SSH2_FXP_STAT_VERSION_0 ;
 int * get_decode_stat (struct sftp_conn*,scalar_t__,int) ;
 int send_string_request (struct sftp_conn*,scalar_t__,int ,char const*,int ) ;
 int strlen (char const*) ;

Attrib *
do_stat(struct sftp_conn *conn, const char *path, int quiet)
{
 u_int id;

 id = conn->msg_id++;

 send_string_request(conn, id,
     conn->version == 0 ? SSH2_FXP_STAT_VERSION_0 : SSH2_FXP_STAT,
     path, strlen(path));

 return(get_decode_stat(conn, id, quiet));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sftp_conn {int dummy; } ;
typedef int SFTP_DIRENT ;


 int do_lsreaddir (struct sftp_conn*,char const*,int ,int ***) ;

int
do_readdir(struct sftp_conn *conn, const char *path, SFTP_DIRENT ***dir)
{
 return(do_lsreaddir(conn, path, 0, dir));
}

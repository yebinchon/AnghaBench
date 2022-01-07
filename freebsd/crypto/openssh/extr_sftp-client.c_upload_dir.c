
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sftp_conn {int dummy; } ;


 char* do_realpath (struct sftp_conn*,char const*) ;
 int error (char*,char const*) ;
 int free (char*) ;
 int upload_dir_internal (struct sftp_conn*,char const*,char*,int ,int,int,int,int) ;

int
upload_dir(struct sftp_conn *conn, const char *src, const char *dst,
    int preserve_flag, int print_flag, int resume, int fsync_flag)
{
 char *dst_canon;
 int ret;

 if ((dst_canon = do_realpath(conn, dst)) == ((void*)0)) {
  error("Unable to canonicalize path \"%s\"", dst);
  return -1;
 }

 ret = upload_dir_internal(conn, src, dst_canon, 0, preserve_flag,
     print_flag, resume, fsync_flag);

 free(dst_canon);
 return ret;
}

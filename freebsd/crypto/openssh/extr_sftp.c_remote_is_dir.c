
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sftp_conn {int dummy; } ;
struct TYPE_3__ {int flags; int perm; } ;
typedef TYPE_1__ Attrib ;


 int SSH2_FILEXFER_ATTR_PERMISSIONS ;
 int S_ISDIR (int ) ;
 TYPE_1__* do_stat (struct sftp_conn*,char const*,int) ;

__attribute__((used)) static int
remote_is_dir(struct sftp_conn *conn, const char *path)
{
 Attrib *a;


 if ((a = do_stat(conn, path, 1)) == ((void*)0))
  return(0);
 if (!(a->flags & SSH2_FILEXFER_ATTR_PERMISSIONS))
  return(0);
 return(S_ISDIR(a->perm));
}

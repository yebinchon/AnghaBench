
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SFTP_OPENDIR {scalar_t__ offset; int dir; } ;
struct TYPE_2__ {int conn; } ;


 TYPE_1__ cur ;
 scalar_t__ do_readdir (int ,char*,int *) ;
 int free (struct SFTP_OPENDIR*) ;
 struct SFTP_OPENDIR* xcalloc (int,int) ;

__attribute__((used)) static void *
fudge_opendir(const char *path)
{
 struct SFTP_OPENDIR *r;

 r = xcalloc(1, sizeof(*r));

 if (do_readdir(cur.conn, (char *)path, &r->dir)) {
  free(r);
  return(((void*)0));
 }

 r->offset = 0;

 return((void *)r);
}

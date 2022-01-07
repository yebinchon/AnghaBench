
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SFTP_OPENDIR {int dir; } ;


 int free (struct SFTP_OPENDIR*) ;
 int free_sftp_dirents (int ) ;

__attribute__((used)) static void
fudge_closedir(struct SFTP_OPENDIR *od)
{
 free_sftp_dirents(od->dir);
 free(od);
}

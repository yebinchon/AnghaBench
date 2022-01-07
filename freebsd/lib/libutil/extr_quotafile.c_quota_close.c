
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quotafile {int fd; } ;


 int close (int) ;
 int free (struct quotafile*) ;

void
quota_close(struct quotafile *qf)
{

 if (qf->fd != -1)
  close(qf->fd);
 free(qf);
}

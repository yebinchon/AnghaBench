
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; int out_port; } ;
typedef TYPE_1__ osm_log_t ;


 int SEEK_SET ;
 int errno ;
 int fileno (int ) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ ftruncate (int,int ) ;
 scalar_t__ lseek (int,int ,int ) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static void truncate_log_file(osm_log_t * p_log)
{
 int fd = fileno(p_log->out_port);
 if (ftruncate(fd, 0) < 0)
  fprintf(stderr, "truncate_log_file: cannot truncate: %s\n",
   strerror(errno));
 if (lseek(fd, 0, SEEK_SET) < 0)
  fprintf(stderr, "truncate_log_file: cannot rewind: %s\n",
   strerror(errno));
 p_log->count = 0;
}

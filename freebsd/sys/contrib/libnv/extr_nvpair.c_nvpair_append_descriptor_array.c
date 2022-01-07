
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nvp_type; } ;
typedef TYPE_1__ nvpair_t ;
typedef int fd ;


 int F_DUPFD_CLOEXEC ;
 int NVPAIR_ASSERT (TYPE_1__*) ;
 scalar_t__ NV_TYPE_DESCRIPTOR_ARRAY ;
 int PJDLOG_ASSERT (int) ;
 int close (int) ;
 int fcntl (int const,int ,int ) ;
 int nvpair_append (TYPE_1__*,int*,int,int) ;

int
nvpair_append_descriptor_array(nvpair_t *nvp, const int value)
{
 int fd;

 NVPAIR_ASSERT(nvp);
 PJDLOG_ASSERT(nvp->nvp_type == NV_TYPE_DESCRIPTOR_ARRAY);
 fd = fcntl(value, F_DUPFD_CLOEXEC, 0);
 if (fd == -1) {
  return (-1);
 }
 if (nvpair_append(nvp, &fd, sizeof(fd), sizeof(fd)) == -1) {
  close(fd);
  return (-1);
 }
 return (0);
}

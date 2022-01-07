
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree {TYPE_1__* current_filesystem; } ;
struct TYPE_2__ {int xfer_align; void* min_xfer_size; void* max_xfer_size; void* incr_xfer_size; } ;


 scalar_t__ EINVAL ;
 int _PC_REC_INCR_XFER_SIZE ;
 int _PC_REC_MAX_XFER_SIZE ;
 int _PC_REC_MIN_XFER_SIZE ;
 int _PC_REC_XFER_ALIGN ;
 scalar_t__ errno ;
 void* fpathconf (int,int ) ;
 void* pathconf (char const*,int ) ;

__attribute__((used)) static int
get_xfer_size(struct tree *t, int fd, const char *path)
{
 t->current_filesystem->xfer_align = -1;
 errno = 0;
 if (fd >= 0) {
  t->current_filesystem->incr_xfer_size =
      fpathconf(fd, _PC_REC_INCR_XFER_SIZE);
  t->current_filesystem->max_xfer_size =
      fpathconf(fd, _PC_REC_MAX_XFER_SIZE);
  t->current_filesystem->min_xfer_size =
      fpathconf(fd, _PC_REC_MIN_XFER_SIZE);
  t->current_filesystem->xfer_align =
      fpathconf(fd, _PC_REC_XFER_ALIGN);
 } else if (path != ((void*)0)) {
  t->current_filesystem->incr_xfer_size =
      pathconf(path, _PC_REC_INCR_XFER_SIZE);
  t->current_filesystem->max_xfer_size =
      pathconf(path, _PC_REC_MAX_XFER_SIZE);
  t->current_filesystem->min_xfer_size =
      pathconf(path, _PC_REC_MIN_XFER_SIZE);
  t->current_filesystem->xfer_align =
      pathconf(path, _PC_REC_XFER_ALIGN);
 }

 if (t->current_filesystem->xfer_align == -1)
  return ((errno == EINVAL)?1:-1);
 else
  return (0);
}

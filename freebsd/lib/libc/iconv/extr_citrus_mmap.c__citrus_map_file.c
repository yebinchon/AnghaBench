
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; int st_mode; } ;
struct _citrus_region {int dummy; } ;
typedef int off_t ;


 int EOPNOTSUPP ;
 void* MAP_FAILED ;
 int MAP_FILE ;
 int MAP_PRIVATE ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int PROT_READ ;
 int S_ISREG (int ) ;
 int _close (int) ;
 int _fstat (int,struct stat*) ;
 int _open (char const*,int) ;
 int _region_init (struct _citrus_region*,void*,size_t) ;
 int errno ;
 void* mmap (int *,size_t,int ,int,int,int ) ;

int
_citrus_map_file(struct _citrus_region * __restrict r,
    const char * __restrict path)
{
 struct stat st;
 void *head;
 int fd, ret;

 ret = 0;

 _region_init(r, ((void*)0), 0);

 if ((fd = _open(path, O_RDONLY | O_CLOEXEC)) == -1)
  return (errno);

 if (_fstat(fd, &st) == -1) {
  ret = errno;
  goto error;
 }
 if (!S_ISREG(st.st_mode)) {
  ret = EOPNOTSUPP;
  goto error;
 }

 head = mmap(((void*)0), (size_t)st.st_size, PROT_READ, MAP_FILE|MAP_PRIVATE,
     fd, (off_t)0);
 if (head == MAP_FAILED) {
  ret = errno;
  goto error;
 }
 _region_init(r, head, (size_t)st.st_size);

error:
 (void)_close(fd);
 return (ret);
}

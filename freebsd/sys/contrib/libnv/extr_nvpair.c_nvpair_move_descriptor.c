
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvpair_t ;
typedef int int64_t ;


 int EBADF ;
 int ERRNO_RESTORE () ;
 int ERRNO_SAVE () ;
 int ERRNO_SET (int ) ;
 int NV_TYPE_DESCRIPTOR ;
 int close (int) ;
 int fd_is_valid (int) ;
 int * nvpair_allocv (char const*,int ,int ,int,int ) ;

nvpair_t *
nvpair_move_descriptor(const char *name, int value)
{
 nvpair_t *nvp;

 if (value < 0 || !fd_is_valid(value)) {
  ERRNO_SET(EBADF);
  return (((void*)0));
 }

 nvp = nvpair_allocv(name, NV_TYPE_DESCRIPTOR, (uint64_t)value,
     sizeof(int64_t), 0);
 if (nvp == ((void*)0)) {
  ERRNO_SAVE();
  close(value);
  ERRNO_RESTORE();
 }

 return (nvp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvpair_t ;
typedef int int64_t ;


 int ERRNO_RESTORE () ;
 int ERRNO_SAVE () ;
 int F_DUPFD_CLOEXEC ;
 int NV_TYPE_DESCRIPTOR ;
 int close (int) ;
 int fcntl (int,int ,int ) ;
 int * nvpair_allocv (char const*,int ,int ,int,int ) ;

nvpair_t *
nvpair_create_descriptor(const char *name, int value)
{
 nvpair_t *nvp;

 value = fcntl(value, F_DUPFD_CLOEXEC, 0);
 if (value < 0)
  return (((void*)0));

 nvp = nvpair_allocv(name, NV_TYPE_DESCRIPTOR, (uint64_t)value,
     sizeof(int64_t), 0);
 if (nvp == ((void*)0)) {
  ERRNO_SAVE();
  close(value);
  ERRNO_RESTORE();
 }

 return (nvp);
}

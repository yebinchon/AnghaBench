
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int uint64_t ;
typedef int nvpair_t ;
typedef int int64_t ;


 int EINVAL ;
 int ERRNO_RESTORE () ;
 int ERRNO_SAVE () ;
 int ERRNO_SET (int ) ;
 int F_DUPFD_CLOEXEC ;
 int NV_TYPE_DESCRIPTOR_ARRAY ;
 int close (int) ;
 int fcntl (int const,int ,int ) ;
 int nv_free (int*) ;
 int* nv_malloc (int) ;
 int * nvpair_allocv (char const*,int ,int ,int,size_t) ;

nvpair_t *
nvpair_create_descriptor_array(const char *name, const int *value,
    size_t nitems)
{
 unsigned int ii;
 nvpair_t *nvp;
 int *fds;

 if (value == ((void*)0)) {
  ERRNO_SET(EINVAL);
  return (((void*)0));
 }

 nvp = ((void*)0);

 fds = nv_malloc(sizeof(value[0]) * nitems);
 if (fds == ((void*)0))
  return (((void*)0));
 for (ii = 0; ii < nitems; ii++) {
  if (value[ii] == -1) {
   fds[ii] = -1;
  } else {
   fds[ii] = fcntl(value[ii], F_DUPFD_CLOEXEC, 0);
   if (fds[ii] == -1)
    goto fail;
  }
 }

 nvp = nvpair_allocv(name, NV_TYPE_DESCRIPTOR_ARRAY,
     (uint64_t)(uintptr_t)fds, sizeof(int64_t) * nitems, nitems);

fail:
 if (nvp == ((void*)0)) {
  ERRNO_SAVE();
  for (; ii > 0; ii--) {
   if (fds[ii - 1] != -1)
    close(fds[ii - 1]);
  }
  nv_free(fds);
  ERRNO_RESTORE();
 }

 return (nvp);
}

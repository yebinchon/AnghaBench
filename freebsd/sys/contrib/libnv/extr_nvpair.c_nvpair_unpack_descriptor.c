
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ nvp_type; int nvp_datasize; scalar_t__ nvp_data; } ;
typedef TYPE_1__ nvpair_t ;
typedef size_t int64_t ;
typedef int idx ;


 int EINVAL ;
 int ERRNO_SET (int ) ;
 scalar_t__ NV_TYPE_DESCRIPTOR ;
 int PJDLOG_ASSERT (int) ;
 size_t be64dec (unsigned char const*) ;
 size_t le64dec (unsigned char const*) ;

const unsigned char *
nvpair_unpack_descriptor(bool isbe, nvpair_t *nvp, const unsigned char *ptr,
    size_t *leftp, const int *fds, size_t nfds)
{
 int64_t idx;

 PJDLOG_ASSERT(nvp->nvp_type == NV_TYPE_DESCRIPTOR);

 if (nvp->nvp_datasize != sizeof(idx)) {
  ERRNO_SET(EINVAL);
  return (((void*)0));
 }
 if (*leftp < sizeof(idx)) {
  ERRNO_SET(EINVAL);
  return (((void*)0));
 }

 if (isbe)
  idx = be64dec(ptr);
 else
  idx = le64dec(ptr);

 if (idx < 0) {
  ERRNO_SET(EINVAL);
  return (((void*)0));
 }

 if ((size_t)idx >= nfds) {
  ERRNO_SET(EINVAL);
  return (((void*)0));
 }

 nvp->nvp_data = (uint64_t)fds[idx];

 ptr += sizeof(idx);
 *leftp -= sizeof(idx);

 return (ptr);
}

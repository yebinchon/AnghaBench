
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {scalar_t__ nvp_type; int nvp_datasize; int nvp_data; } ;
typedef TYPE_1__ nvpair_t ;


 int EINVAL ;
 int ERRNO_SET (int ) ;
 scalar_t__ NV_TYPE_NUMBER ;
 int PJDLOG_ASSERT (int) ;
 int be64dec (unsigned char const*) ;
 int le64dec (unsigned char const*) ;

const unsigned char *
nvpair_unpack_number(bool isbe, nvpair_t *nvp, const unsigned char *ptr,
     size_t *leftp)
{

 PJDLOG_ASSERT(nvp->nvp_type == NV_TYPE_NUMBER);

 if (nvp->nvp_datasize != sizeof(uint64_t)) {
  ERRNO_SET(EINVAL);
  return (((void*)0));
 }
 if (*leftp < sizeof(uint64_t)) {
  ERRNO_SET(EINVAL);
  return (((void*)0));
 }

 if (isbe)
  nvp->nvp_data = be64dec(ptr);
 else
  nvp->nvp_data = le64dec(ptr);

 ptr += sizeof(uint64_t);
 *leftp -= sizeof(uint64_t);

 return (ptr);
}

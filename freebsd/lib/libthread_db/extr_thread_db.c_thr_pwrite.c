
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_int ;
struct ps_prochandle {int dummy; } ;
typedef int psaddr_t ;
typedef scalar_t__ ps_err_e ;
typedef int buf ;



 int EFAULT ;
 int EINVAL ;
 int EOVERFLOW ;

 scalar_t__ PS_OK ;
 int be16enc (int *,int ) ;
 int be32enc (int *,int ) ;
 int be64enc (int *,int ) ;
 int le16enc (int *,int ) ;
 int le32enc (int *,int ) ;
 int le64enc (int *,int ) ;
 scalar_t__ ps_pwrite (struct ps_prochandle*,int ,int *,int) ;

__attribute__((used)) static int
thr_pwrite(struct ps_prochandle *ph, psaddr_t addr, uint64_t val,
    u_int size, u_int byteorder)
{
 uint8_t buf[sizeof(val)];
 ps_err_e err;

 if (size > sizeof(buf))
  return (EOVERFLOW);

 switch (byteorder) {
 case 129:
  switch (size) {
  case 1:
   buf[0] = (uint8_t)val;
   break;
  case 2:
   be16enc(buf, (uint16_t)val);
   break;
  case 4:
   be32enc(buf, (uint32_t)val);
   break;
  case 8:
   be64enc(buf, (uint64_t)val);
   break;
  default:
   return (EINVAL);
  }
  break;
 case 128:
  switch (size) {
  case 1:
   buf[0] = (uint8_t)val;
   break;
  case 2:
   le16enc(buf, (uint16_t)val);
   break;
  case 4:
   le32enc(buf, (uint32_t)val);
   break;
  case 8:
   le64enc(buf, (uint64_t)val);
   break;
  default:
   return (EINVAL);
  }
  break;
 default:
  return (EINVAL);
 }

 err = ps_pwrite(ph, addr, buf, size);
 return ((err != PS_OK) ? EFAULT : 0);
}

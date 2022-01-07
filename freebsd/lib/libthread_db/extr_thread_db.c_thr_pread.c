
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int u_int ;
struct ps_prochandle {int dummy; } ;
typedef int psaddr_t ;
typedef scalar_t__ ps_err_e ;
typedef int buf ;



 int EFAULT ;
 int EINVAL ;
 int EOVERFLOW ;

 scalar_t__ PS_OK ;
 int be16dec (int *) ;
 int be32dec (int *) ;
 int be64dec (int *) ;
 int le16dec (int *) ;
 int le32dec (int *) ;
 int le64dec (int *) ;
 scalar_t__ ps_pread (struct ps_prochandle*,int ,int *,int) ;

__attribute__((used)) static int
thr_pread(struct ps_prochandle *ph, psaddr_t addr, uint64_t *val,
    u_int size, u_int byteorder)
{
 uint8_t buf[sizeof(*val)];
 ps_err_e err;

 if (size > sizeof(buf))
  return (EOVERFLOW);

 err = ps_pread(ph, addr, buf, size);
 if (err != PS_OK)
  return (EFAULT);

 switch (byteorder) {
 case 129:
  switch (size) {
  case 1:
   *val = buf[0];
   break;
  case 2:
   *val = be16dec(buf);
   break;
  case 4:
   *val = be32dec(buf);
   break;
  case 8:
   *val = be64dec(buf);
   break;
  default:
   return (EINVAL);
  }
  break;
 case 128:
  switch (size) {
  case 1:
   *val = buf[0];
   break;
  case 2:
   *val = le16dec(buf);
   break;
  case 4:
   *val = le32dec(buf);
   break;
  case 8:
   *val = le64dec(buf);
   break;
  default:
   return (EINVAL);
  }
  break;
 default:
  return (EINVAL);
 }

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINUX_SCM_CREDENTIALS ;
 int LINUX_SCM_RIGHTS ;
 int LINUX_SCM_TIMESTAMP ;




__attribute__((used)) static int
bsd_to_linux_cmsg_type(int cmsg_type)
{

 switch (cmsg_type) {
 case 129:
  return (LINUX_SCM_RIGHTS);
 case 130:
  return (LINUX_SCM_CREDENTIALS);
 case 128:
  return (LINUX_SCM_TIMESTAMP);
 }
 return (-1);
}

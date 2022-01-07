
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCM_CREDS ;
 int SCM_RIGHTS ;

__attribute__((used)) static int
linux_to_bsd_cmsg_type(int cmsg_type)
{

 switch (cmsg_type) {
 case 128:
  return (SCM_RIGHTS);
 case 129:
  return (SCM_CREDS);
 }
 return (-1);
}

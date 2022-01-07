
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
typedef int socklen_t ;
typedef int optval ;


 int IPPROTO_IP ;
 int IP_HDRINCL ;
 int UIO_SYSSPACE ;
 int kern_getsockopt (struct thread*,int,int ,int ,int*,int ,int*) ;

__attribute__((used)) static int
linux_check_hdrincl(struct thread *td, int s)
{
 int error, optval;
 socklen_t size_val;

 size_val = sizeof(optval);
 error = kern_getsockopt(td, s, IPPROTO_IP, IP_HDRINCL,
     &optval, UIO_SYSSPACE, &size_val);
 if (error != 0)
  return (error);

 return (optval == 0);
}

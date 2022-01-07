
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_OK ;
 int RealUid ;
 int endpwent () ;
 int exit (int ) ;
 int setuid (int ) ;

void
stop_sendmail()
{

 endpwent();
 (void) setuid(RealUid);
 exit(EX_OK);
}

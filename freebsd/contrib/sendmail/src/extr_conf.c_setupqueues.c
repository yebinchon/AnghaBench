
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int MaxRunnersPerQueue ;
 int makequeue (char*,int) ;
 int sm_strlcpy (char*,char*,int) ;

__attribute__((used)) static void
setupqueues()
{
 char buf[100];

 MaxRunnersPerQueue = 1;
 (void) sm_strlcpy(buf, "mqueue, P=/var/spool/mqueue", sizeof(buf));
 makequeue(buf, 0);
}

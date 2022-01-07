
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct rpcent {int r_name; } ;
typedef int buf ;


 struct rpcent* getrpcbynumber (scalar_t__) ;
 int snprintf (char*,int,char*,scalar_t__) ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static char *
progstr(uint32_t prog)
{



 static char buf[32];
 static uint32_t lastprog = 0;

 if (lastprog != 0 && prog == lastprog)
  return (buf);




  (void) snprintf(buf, sizeof(buf), "#%u", prog);




 return (buf);
}

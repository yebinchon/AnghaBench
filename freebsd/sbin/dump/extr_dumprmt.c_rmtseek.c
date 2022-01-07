
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;


 int rmtcall (char*,char*) ;
 int snprintf (char*,int,char*,int,int) ;

int
rmtseek(int offset, int pos)
{
 char line[80];

 (void)snprintf(line, sizeof (line), "L%d\n%d\n", offset, pos);
 return (rmtcall("seek", line));
}

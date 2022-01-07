
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;


 int rmtape ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char*) ;
 int write (int ,char*,int ) ;

void
rmtwrite0(int count)
{
 char line[30];

 (void)snprintf(line, sizeof (line), "W%d\n", count);
 write(rmtape, line, strlen(line));
}

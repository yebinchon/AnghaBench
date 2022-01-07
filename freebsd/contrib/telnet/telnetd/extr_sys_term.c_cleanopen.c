
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_NOCTTY ;
 int O_RDWR ;
 int chmod (char*,int) ;
 int chown (char*,int ,int ) ;
 int line ;
 int open (int ,int) ;
 int revoke (char*) ;

int
cleanopen(char *li)
{
 int t;





 (void) chown(li, 0, 0);
 (void) chmod(li, 0600);

 (void) revoke(li);

 t = open(line, O_RDWR|O_NOCTTY);

 if (t < 0)
  return(-1);

 return(t);
}

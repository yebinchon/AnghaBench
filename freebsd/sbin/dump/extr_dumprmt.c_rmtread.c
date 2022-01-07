
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;


 int read (int ,char*,int) ;
 int rmtape ;
 int rmtcall (char*,char*) ;
 int rmtconnaborted (int ) ;
 int snprintf (char*,int,char*,int) ;

int
rmtread(char *buf, int count)
{
 char line[30];
 int n, i, cc;

 (void)snprintf(line, sizeof (line), "R%d\n", count);
 n = rmtcall("read", line);
 if (n < 0)

  return (n);
 for (i = 0; i < n; i += cc) {
  cc = read(rmtape, buf+i, n - i);
  if (cc <= 0)
   rmtconnaborted(0);
 }
 return (n);
}

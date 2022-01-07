
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int resp ;
typedef int ch ;


 int BUFSIZ ;
 int STDERR_FILENO ;
 int errs ;
 int exit (int) ;
 int iamremote ;
 int lostconn (int ) ;
 int read (int ,char*,int) ;
 int remin ;
 int write (int ,char*,int) ;

int
response(void)
{
 char ch, *cp, resp, rbuf[BUFSIZ];

 if (read(remin, &resp, sizeof(resp)) != sizeof(resp))
  lostconn(0);

 cp = rbuf;
 switch(resp) {
 case 0:
  return (0);
 default:
  *cp++ = resp;

 case 1:
 case 2:
  do {
   if (read(remin, &ch, sizeof(ch)) != sizeof(ch))
    lostconn(0);
   *cp++ = ch;
  } while (cp < &rbuf[BUFSIZ] && ch != '\n');

  if (!iamremote)
   write(STDERR_FILENO, rbuf, cp - rbuf);
  ++errs;
  if (resp == 1)
   return (-1);
  exit(1);
 }

}

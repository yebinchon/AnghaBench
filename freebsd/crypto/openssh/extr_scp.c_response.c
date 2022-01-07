
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int visbuf ;
typedef int resp ;
typedef int rbuf ;
typedef int ch ;


 int STDERR_FILENO ;
 int atomicio (int ,int ,char*,int) ;
 int errs ;
 int exit (int) ;
 int iamremote ;
 int lostconn (int ) ;
 int read ;
 int remin ;
 int snmprintf (char*,int,int *,char*,char*) ;
 int strlen (char*) ;
 int vwrite ;

int
response(void)
{
 char ch, *cp, resp, rbuf[2048], visbuf[2048];

 if (atomicio(read, remin, &resp, sizeof(resp)) != sizeof(resp))
  lostconn(0);

 cp = rbuf;
 switch (resp) {
 case 0:
  return (0);
 default:
  *cp++ = resp;

 case 1:
 case 2:
  do {
   if (atomicio(read, remin, &ch, sizeof(ch)) != sizeof(ch))
    lostconn(0);
   *cp++ = ch;
  } while (cp < &rbuf[sizeof(rbuf) - 1] && ch != '\n');

  if (!iamremote) {
   cp[-1] = '\0';
   (void) snmprintf(visbuf, sizeof(visbuf),
       ((void*)0), "%s\n", rbuf);
   (void) atomicio(vwrite, STDERR_FILENO,
       visbuf, strlen(visbuf));
  }
  ++errs;
  if (resp == 1)
   return (-1);
  exit(1);
 }

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct pollfd {int events; int fd; } ;


 int POLLIN ;
 int STDIN_FILENO ;
 int TCIOFLUSH ;
 int nanosleep (struct timespec*,int *) ;
 scalar_t__ poll (struct pollfd*,int,int) ;
 int read (int ,char*,int) ;
 int tcflush (int ,int ) ;

const char *
autobaud(void)
{
 struct pollfd set[1];
 struct timespec timeout;
 char c;
 const char *type = "9600-baud";

 (void)tcflush(0, TCIOFLUSH);
 set[0].fd = STDIN_FILENO;
 set[0].events = POLLIN;
 if (poll(set, 1, 5000) <= 0)
  return (type);
 if (read(STDIN_FILENO, &c, sizeof(char)) != sizeof(char))
  return (type);
 timeout.tv_sec = 0;
 timeout.tv_nsec = 20000;
 (void)nanosleep(&timeout, ((void*)0));
 (void)tcflush(0, TCIOFLUSH);
 switch (c & 0377) {

 case 0200:
  type = "300-baud";
  break;

 case 0346:
  type = "1200-baud";
  break;

 case 015:
 case 0215:
  type = "2400-baud";
  break;

 default:
  type = "4800-baud";
  break;

 case 0377:
  type = "9600-baud";
  break;
 }
 return (type);
}

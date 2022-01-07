
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int snprintf (char*,int,char*,int) ;
 char* strsignal (int) ;

__attribute__((used)) static const char *
sigmsg(int signo)
{
 static char buf[40];
 char *message;


 if ((message = strsignal(signo)) != ((void*)0))
  return message;
 (void)snprintf(buf, sizeof(buf), "Unknown signal: %d", signo);
 return (buf);
}

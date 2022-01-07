
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLNT_PERROR_BUFLEN ;
 char* buf ;
 char* malloc (int ) ;

__attribute__((used)) static char *
_buf(void)
{

 if (buf == ((void*)0))
  buf = malloc(CLNT_PERROR_BUFLEN);
 return (buf);
}

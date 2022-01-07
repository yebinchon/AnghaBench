
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int FILE ;


 scalar_t__ fgets (char*,int,int *) ;
 int remote_write (int *,int,char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void
send_file(SSL* ssl, int fd, FILE* in, char* buf, size_t sz)
{
 while(fgets(buf, (int)sz, in)) {
  remote_write(ssl, fd, buf, strlen(buf));
 }
}

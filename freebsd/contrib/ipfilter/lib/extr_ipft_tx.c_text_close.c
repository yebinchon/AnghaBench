
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int tfd ;

__attribute__((used)) static int text_close()
{
 int cfd = tfd;

 tfd = -1;
 return close(cfd);
}

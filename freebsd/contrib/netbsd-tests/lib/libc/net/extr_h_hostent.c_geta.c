
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int dummy; } ;


 int h_errno ;
 int phostent (struct hostent*) ;
 int printf (char*,int) ;

__attribute__((used)) static void
geta(struct hostent *hp) {
 if (hp == ((void*)0))
  printf("error %d\n", h_errno);
 else
  phostent(hp);
}

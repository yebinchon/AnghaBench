
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
typedef int FILE ;


 int closesocket (int ) ;
 int exit (int ) ;
 scalar_t__ havehost ;
 int sockfd ;

__attribute__((used)) static void
quit(
 struct parse *pcmd,
 FILE *fp
 )
{
 if (havehost)
     closesocket(sockfd);
 exit(0);
}

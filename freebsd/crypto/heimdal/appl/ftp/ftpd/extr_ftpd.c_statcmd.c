
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
struct TYPE_4__ {int sin_addr; } ;
struct TYPE_3__ {char* pw_name; } ;


 int NBBY ;
 size_t TYPE_A ;
 size_t TYPE_E ;
 size_t TYPE_L ;
 int UC (int ) ;
 scalar_t__ askpasswd ;
 int bytesize ;
 int data ;
 struct sockaddr_in data_dest ;
 size_t form ;
 char** formnames ;
 scalar_t__ guest ;
 TYPE_2__ his_addr ;
 int hostname ;
 char* inet_ntoa (int ) ;
 int isdigit (unsigned char) ;
 scalar_t__ logged_in ;
 int lreply (int,char*,int ,char*) ;
 size_t mode ;
 char** modenames ;
 struct sockaddr_in pasv_addr ;
 int pdata ;
 int printf (char*,...) ;
 TYPE_1__* pw ;
 char* remotehost ;
 int reply (int,char*) ;
 size_t stru ;
 char** strunames ;
 size_t type ;
 char** typenames ;
 scalar_t__ usedefault ;
 char* version ;

void
statcmd(void)
{
 reply(211, "End of status");
}

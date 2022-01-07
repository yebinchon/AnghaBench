
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int krb5_socklen_t ;


 int AF_INET ;
 int INADDR_ANY ;
 int memcpy (struct sockaddr*,struct sockaddr_in*,int ) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int min (int,int) ;

__attribute__((used)) static void
ipv4_anyaddr (struct sockaddr *sa, krb5_socklen_t *sa_size, int port)
{
    struct sockaddr_in tmp;

    memset (&tmp, 0, sizeof(tmp));
    tmp.sin_family = AF_INET;
    tmp.sin_port = port;
    tmp.sin_addr.s_addr = INADDR_ANY;
    memcpy(sa, &tmp, min(sizeof(tmp), *sa_size));
    *sa_size = sizeof(tmp);
}

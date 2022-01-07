
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmp ;
struct sockaddr {int dummy; } ;
struct sockaddr_in {int sin_port; struct sockaddr sin_addr; int sin_family; } ;
typedef int krb5_socklen_t ;
struct TYPE_4__ {struct sockaddr_in* data; } ;
struct TYPE_5__ {TYPE_1__ address; } ;
typedef TYPE_2__ krb5_address ;


 int AF_INET ;
 int memcpy (struct sockaddr*,struct sockaddr_in*,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int min (int,int) ;

__attribute__((used)) static void
ipv4_addr2sockaddr (const krb5_address *a,
      struct sockaddr *sa,
      krb5_socklen_t *sa_size,
      int port)
{
    struct sockaddr_in tmp;

    memset (&tmp, 0, sizeof(tmp));
    tmp.sin_family = AF_INET;
    memcpy (&tmp.sin_addr, a->address.data, 4);
    tmp.sin_port = port;
    memcpy(sa, &tmp, min(sizeof(tmp), *sa_size));
    *sa_size = sizeof(tmp);
}

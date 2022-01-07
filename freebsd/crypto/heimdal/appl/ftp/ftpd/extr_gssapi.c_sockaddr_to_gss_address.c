
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct TYPE_3__ {int length; int * value; } ;
typedef TYPE_1__ gss_buffer_desc ;
typedef int OM_uint32 ;




 int GSS_C_AF_INET ;
 int GSS_C_AF_INET6 ;
 int errx (int,char*,int) ;

__attribute__((used)) static void
sockaddr_to_gss_address (struct sockaddr *sa,
    OM_uint32 *addr_type,
    gss_buffer_desc *gss_addr)
{
    switch (sa->sa_family) {
    case 129 : {
 struct sockaddr_in *sin4 = (struct sockaddr_in *)sa;

 gss_addr->length = 4;
 gss_addr->value = &sin4->sin_addr;
 *addr_type = GSS_C_AF_INET;
 break;
    }
    default :
 errx (1, "unknown address family %d", sa->sa_family);

    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int sa ;
typedef int krb5_socklen_t ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_address ;
typedef int int16_t ;
struct TYPE_3__ {int value; } ;
typedef TYPE_1__ gss_buffer_desc ;
typedef int OM_uint32 ;


 int AF_INET ;
 int AF_INET6 ;


 scalar_t__ GSS_S_FAILURE ;
 scalar_t__ krb5_h_addr2sockaddr (int ,int,int ,struct sockaddr*,int*,int ) ;
 scalar_t__ krb5_sockaddr2address (int ,struct sockaddr*,int *) ;

krb5_error_code
_gsskrb5i_address_to_krb5addr(krb5_context context,
         OM_uint32 gss_addr_type,
         gss_buffer_desc *gss_addr,
         int16_t port,
         krb5_address *address)
{
   int addr_type;
   struct sockaddr sa;
   krb5_socklen_t sa_size = sizeof(sa);
   krb5_error_code problem;

   if (gss_addr == ((void*)0))
      return GSS_S_FAILURE;

   switch (gss_addr_type) {





      case 129: addr_type = AF_INET;
                           break;
      default:
                           return GSS_S_FAILURE;
   }

   problem = krb5_h_addr2sockaddr (context,
       addr_type,
                                   gss_addr->value,
                                   &sa,
                                   &sa_size,
                                   port);
   if (problem)
      return GSS_S_FAILURE;

   problem = krb5_sockaddr2address (context, &sa, address);

   return problem;
}

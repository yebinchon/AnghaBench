
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {char* value; int length; } ;
typedef TYPE_1__ gss_buffer_desc ;
typedef int bool_t ;
typedef int XDR ;


 int MAX_GSS_SIZE ;
 int xdr_bytes (int *,char**,int *,int ) ;

bool_t
xdr_gss_buffer_desc(XDR *xdrs, gss_buffer_desc *p)
{
 char *val;
 u_int len;
 bool_t ret;

 val = p->value;
 len = p->length;
 ret = xdr_bytes(xdrs, &val, &len, MAX_GSS_SIZE);
 p->value = val;
 p->length = len;

 return (ret);
}

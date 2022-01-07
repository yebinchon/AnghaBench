
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rad_handle {int dummy; } ;


 int rad_put_attr (struct rad_handle*,int,char const*,int ) ;
 int strlen (char const*) ;

int
rad_put_string(struct rad_handle *h, int type, const char *str)
{
 return rad_put_attr(h, type, str, strlen(str));
}

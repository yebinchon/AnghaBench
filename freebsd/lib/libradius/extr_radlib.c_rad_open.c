
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rad_handle {int dummy; } ;


 struct rad_handle* rad_auth_open () ;

struct rad_handle *
rad_open(void)
{
    return rad_auth_open();
}

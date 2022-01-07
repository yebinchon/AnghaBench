
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_C_INDEFINITE ;
 char* ctime (scalar_t__*) ;
 int printf (char*,...) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void
print_time(OM_uint32 time_rec)
{
    if (time_rec == GSS_C_INDEFINITE) {
 printf("cred never expire\n");
    } else {
 time_t t = time_rec + time(((void*)0));
 printf("expiration time: %s", ctime(&t));
    }
}

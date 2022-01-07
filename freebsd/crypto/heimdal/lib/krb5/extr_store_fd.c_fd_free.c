
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_storage ;


 int FD (int *) ;
 int close (int ) ;

__attribute__((used)) static void
fd_free(krb5_storage * sp)
{
    close(FD(sp));
}

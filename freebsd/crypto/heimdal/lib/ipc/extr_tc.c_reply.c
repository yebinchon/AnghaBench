
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_isemaphore ;
typedef int heim_idata ;
typedef int heim_icred ;


 int heim_ipc_semaphore_signal (int ) ;
 int printf (char*) ;

__attribute__((used)) static void
reply(void *ctx, int errorcode, heim_idata *reply, heim_icred cred)
{
    printf("got reply\n");
    heim_ipc_semaphore_signal((heim_isemaphore)ctx);
}

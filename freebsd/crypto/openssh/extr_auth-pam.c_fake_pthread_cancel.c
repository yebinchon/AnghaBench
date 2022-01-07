
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sp_pthread_t ;


 int SIGCHLD ;
 int SIGTERM ;
 int kill (int ,int ) ;
 int signal (int ,int ) ;
 int sshpam_oldsig ;

__attribute__((used)) static int
pthread_cancel(sp_pthread_t thread)
{
 signal(SIGCHLD, sshpam_oldsig);
 return (kill(thread, SIGTERM));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_fork_child ;
 int OPENSSL_fork_parent ;
 int OPENSSL_fork_prepare ;
 int pthread_atfork (int ,int ,int ) ;

__attribute__((used)) static void fork_once_func(void)
{
    pthread_atfork(OPENSSL_fork_prepare,
                   OPENSSL_fork_parent, OPENSSL_fork_child);
}

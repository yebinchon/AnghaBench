
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rl_callback_read_char () ;

__attribute__((used)) static void edit_read_char(int sock, void *eloop_ctx, void *sock_ctx)
{
 rl_callback_read_char();
}

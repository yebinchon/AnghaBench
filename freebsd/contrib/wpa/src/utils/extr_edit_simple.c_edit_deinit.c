
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDIN_FILENO ;
 int eloop_unregister_read_sock (int ) ;

void edit_deinit(const char *history_file,
   int (*filter_cb)(void *ctx, const char *cmd))
{
 eloop_unregister_read_sock(STDIN_FILENO);
}

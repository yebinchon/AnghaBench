
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dl_phdr_info {int dummy; } ;


 int stub1 () ;
 int tls_callback_sym () ;

__attribute__((used)) static int
dl_iterate_phdr_cb(struct dl_phdr_info *info, size_t size, void *data)
{
 (*tls_callback_sym)();
 return 0;
}

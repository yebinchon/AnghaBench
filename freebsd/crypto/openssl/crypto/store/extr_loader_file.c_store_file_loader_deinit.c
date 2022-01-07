
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scheme; } ;


 TYPE_1__ file_loader ;
 int ossl_store_unregister_loader_int (int ) ;

__attribute__((used)) static void store_file_loader_deinit(void)
{
    ossl_store_unregister_loader_int(file_loader.scheme);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int file; } ;
typedef TYPE_1__ curl_data_t ;


 int pclose (int ) ;

__attribute__((used)) static int curl_data_free(curl_data_t cdata) {
    return pclose(cdata.file);
}

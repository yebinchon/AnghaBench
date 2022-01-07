
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mroot; } ;
typedef TYPE_1__ _VIQREncodingInfo ;


 int mnemonic_destroy (int ) ;

__attribute__((used)) static void
_citrus_VIQR_encoding_module_uninit(_VIQREncodingInfo *ei)
{

 mnemonic_destroy(ei->mroot);
}

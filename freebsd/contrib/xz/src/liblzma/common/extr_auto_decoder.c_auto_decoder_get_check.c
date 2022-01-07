
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lzma_check ;
struct TYPE_3__ {int coder; int (* get_check ) (int ) ;} ;
struct TYPE_4__ {TYPE_1__ next; } ;
typedef TYPE_2__ lzma_auto_coder ;


 int LZMA_CHECK_NONE ;
 int stub1 (int ) ;

__attribute__((used)) static lzma_check
auto_decoder_get_check(const void *coder_ptr)
{
 const lzma_auto_coder *coder = coder_ptr;


 return coder->next.get_check == ((void*)0) ? LZMA_CHECK_NONE
   : coder->next.get_check(coder->next.coder);
}

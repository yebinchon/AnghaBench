
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int b ;
struct TYPE_4__ {int error_tag_never_ever_use_directly; size_t error_result_never_ever_use_directly; } ;
typedef TYPE_1__ BMK_runOutcome_t ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static BMK_runOutcome_t BMK_runOutcome_error(size_t errorResult)
{
    BMK_runOutcome_t b;
    memset(&b, 0, sizeof(b));
    b.error_tag_never_ever_use_directly = 1;
    b.error_result_never_ever_use_directly = errorResult;
    return b;
}

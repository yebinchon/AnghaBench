
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int u32; } ;
struct TYPE_6__ {int state; } ;
struct TYPE_7__ {TYPE_1__ sha256; } ;
struct TYPE_9__ {TYPE_3__ buffer; TYPE_2__ state; } ;
typedef TYPE_4__ lzma_check_state ;


 int transform (int ,int ) ;

__attribute__((used)) static void
process(lzma_check_state *check)
{
 transform(check->state.sha256.state, check->buffer.u32);
 return;
}

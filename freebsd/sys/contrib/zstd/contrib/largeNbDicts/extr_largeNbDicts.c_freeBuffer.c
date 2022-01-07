
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; } ;
typedef TYPE_1__ buffer_t ;


 int free (int ) ;

__attribute__((used)) static void freeBuffer(buffer_t buff)
{
    free(buff.ptr);
}

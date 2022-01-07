
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EdonRState ;


 int EdonRUpdate (int *,void*,size_t) ;

__attribute__((used)) static int
edonr_incremental(void *buf, size_t size, void *arg)
{
 EdonRState *ctx = arg;
 EdonRUpdate(ctx, buf, size * 8);
 return (0);
}

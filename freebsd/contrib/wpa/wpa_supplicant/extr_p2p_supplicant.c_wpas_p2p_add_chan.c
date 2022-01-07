
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p2p_reg_class {size_t channels; int * channel; } ;



__attribute__((used)) static void wpas_p2p_add_chan(struct p2p_reg_class *reg, u8 chan)
{
 reg->channel[reg->channels] = chan;
 reg->channels++;
}

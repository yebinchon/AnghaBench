
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_audio_chinfo {int buffer; scalar_t__ unsubmittedptr; int available_space; } ;


 int VCHIQ_AUDIO_BUFFER_SIZE ;
 int sndbuf_reset (int ) ;

__attribute__((used)) static void
bcm2835_audio_reset_channel(struct bcm2835_audio_chinfo *ch)
{

 ch->available_space = VCHIQ_AUDIO_BUFFER_SIZE;
 ch->unsubmittedptr = 0;
 sndbuf_reset(ch->buffer);
}

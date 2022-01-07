
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_audio_chinfo {scalar_t__ playback_state; scalar_t__ available_space; int starved; int buffer; } ;


 scalar_t__ PLAYBACK_PLAYING ;
 scalar_t__ VCHIQ_AUDIO_PACKET_SIZE ;
 int printf (char*) ;
 scalar_t__ sndbuf_getready (int ) ;

__attribute__((used)) static bool
bcm2835_audio_buffer_should_sleep(struct bcm2835_audio_chinfo *ch)
{

 if (ch->playback_state != PLAYBACK_PLAYING)
  return (1);


 if (sndbuf_getready(ch->buffer) < VCHIQ_AUDIO_PACKET_SIZE) {
  printf("starve\n");
  ch->starved++;
  return (1);
 }


 if (ch->available_space < VCHIQ_AUDIO_PACKET_SIZE) {
  return (1);
 }

 return (0);
}

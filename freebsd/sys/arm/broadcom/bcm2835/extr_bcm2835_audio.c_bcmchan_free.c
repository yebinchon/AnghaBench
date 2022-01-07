
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_audio_chinfo {int buffer; } ;
typedef int kobj_t ;


 int M_DEVBUF ;
 int free (void*,int ) ;
 void* sndbuf_getbuf (int ) ;

__attribute__((used)) static int
bcmchan_free(kobj_t obj, void *data)
{
 struct bcm2835_audio_chinfo *ch = data;
 void *buffer;

 buffer = sndbuf_getbuf(ch->buffer);
 if (buffer)
  free(buffer, M_DEVBUF);

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a10codec_chinfo {unsigned int pos; int channel; scalar_t__ run; scalar_t__ blocksize; int buffer; } ;


 int a10codec_transfer (struct a10codec_chinfo*) ;
 int chn_intr (int ) ;
 unsigned int sndbuf_getsize (int ) ;

__attribute__((used)) static void
a10codec_dmaintr(void *priv)
{
 struct a10codec_chinfo *ch = priv;
 unsigned bufsize;

 bufsize = sndbuf_getsize(ch->buffer);

 ch->pos += ch->blocksize;
 if (ch->pos >= bufsize)
  ch->pos -= bufsize;

 if (ch->run) {
  chn_intr(ch->channel);
  a10codec_transfer(ch);
 }
}

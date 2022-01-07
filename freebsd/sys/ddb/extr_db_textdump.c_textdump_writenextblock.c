
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dumperinfo {int dummy; } ;


 scalar_t__ TEXTDUMP_BLOCKSIZE ;
 int textdump_offset ;
 int textdump_writeblock (struct dumperinfo*,int ,char*) ;

int
textdump_writenextblock(struct dumperinfo *di, char *buffer)
{
 int error;

 error = textdump_writeblock(di, textdump_offset, buffer);
 textdump_offset -= TEXTDUMP_BLOCKSIZE;
 return (error);
}

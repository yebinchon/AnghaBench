
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PPBUFF_SIZE ;
 int free (char*) ;
 int memset (char*,int ,int ) ;

void
passphrase_free(char *ppbuff)
{
 if (ppbuff != ((void*)0)) {
  memset(ppbuff, 0, PPBUFF_SIZE);
  free(ppbuff);
 }
}

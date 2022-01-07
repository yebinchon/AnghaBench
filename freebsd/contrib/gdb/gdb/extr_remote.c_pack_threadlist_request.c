
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int threadref ;


 char* pack_hex_byte (char*,int) ;
 char* pack_nibble (char*,int) ;
 char* pack_threadid (char*,int *) ;

__attribute__((used)) static char *
pack_threadlist_request (char *pkt, int startflag, int threadcount,
    threadref *nextthread)
{
  *pkt++ = 'q';
  *pkt++ = 'L';
  pkt = pack_nibble (pkt, startflag);
  pkt = pack_hex_byte (pkt, threadcount);
  pkt = pack_threadid (pkt, nextthread);
  *pkt = '\0';
  return pkt;
}

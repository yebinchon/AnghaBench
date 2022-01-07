
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int threadref ;


 char* pack_int (char*,int) ;
 char* pack_threadid (char*,int *) ;

__attribute__((used)) static char *
pack_threadinfo_request (char *pkt, int mode, threadref *id)
{
  *pkt++ = 'q';
  *pkt++ = 'P';
  pkt = pack_int (pkt, mode);
  pkt = pack_threadid (pkt, id);
  *pkt = '\0';
  return pkt;
}

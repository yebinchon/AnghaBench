
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _7z_stream_info {int ss; int ci; int pi; } ;


 int free_CodersInfo (int *) ;
 int free_PackInfo (int *) ;
 int free_SubStreamsInfo (int *) ;

__attribute__((used)) static void
free_StreamsInfo(struct _7z_stream_info *si)
{
 free_PackInfo(&(si->pi));
 free_CodersInfo(&(si->ci));
 free_SubStreamsInfo(&(si->ss));
}

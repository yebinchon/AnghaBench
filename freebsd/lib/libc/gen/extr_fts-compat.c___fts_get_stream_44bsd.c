
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FTSENT ;
typedef int FTS ;


 int * fts_get_stream (int *) ;

FTS *
(__fts_get_stream_44bsd)(FTSENT *p)
{
 return (fts_get_stream(p));
}

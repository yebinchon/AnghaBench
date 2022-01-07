
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_boolean_t ;


 int * HEAD_FIFO (int ) ;
 int ISC_FALSE ;
 int ISC_TRUE ;
 int full_recv_fifo ;

isc_boolean_t has_full_recv_buffer(void)
{
 if (HEAD_FIFO(full_recv_fifo) != ((void*)0))
  return (ISC_TRUE);
 else
  return (ISC_FALSE);
}

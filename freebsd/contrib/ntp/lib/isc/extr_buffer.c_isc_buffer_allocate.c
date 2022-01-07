
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int isc_result_t ;
typedef int isc_mem_t ;
struct TYPE_5__ {int * mctx; } ;
typedef TYPE_1__ isc_buffer_t ;


 int ISC_R_NOMEMORY ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int isc_buffer_init (TYPE_1__*,unsigned char*,unsigned int) ;
 TYPE_1__* isc_mem_get (int *,unsigned int) ;

isc_result_t
isc_buffer_allocate(isc_mem_t *mctx, isc_buffer_t **dynbuffer,
      unsigned int length)
{
 isc_buffer_t *dbuf;

 REQUIRE(dynbuffer != ((void*)0));
 REQUIRE(*dynbuffer == ((void*)0));

 dbuf = isc_mem_get(mctx, length + sizeof(isc_buffer_t));
 if (dbuf == ((void*)0))
  return (ISC_R_NOMEMORY);

 isc_buffer_init(dbuf, ((unsigned char *)dbuf) + sizeof(isc_buffer_t),
   length);
 dbuf->mctx = mctx;

 *dynbuffer = dbuf;

 return (ISC_R_SUCCESS);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_buffer_t ;


 int ISC__BUFFER_INIT (int *,int *,int ) ;

void
isc__buffer_initnull(isc_buffer_t *b) {





 ISC__BUFFER_INIT(b, ((void*)0), 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hio {int hio_memsync; scalar_t__ hio_length; scalar_t__ hio_offset; int hio_cmd; scalar_t__ hio_error; scalar_t__ hio_seq; } ;


 int HIO_UNDEF ;

__attribute__((used)) static void
hio_clear(struct hio *hio)
{

 hio->hio_seq = 0;
 hio->hio_error = 0;
 hio->hio_cmd = HIO_UNDEF;
 hio->hio_offset = 0;
 hio->hio_length = 0;
 hio->hio_memsync = 0;
}

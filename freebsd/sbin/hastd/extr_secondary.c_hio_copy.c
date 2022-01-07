
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hio {int hio_memsync; int hio_length; int hio_offset; int hio_cmd; int hio_seq; } ;



__attribute__((used)) static void
hio_copy(const struct hio *srchio, struct hio *dsthio)
{





 dsthio->hio_seq = srchio->hio_seq;
 dsthio->hio_cmd = srchio->hio_cmd;
 dsthio->hio_offset = srchio->hio_offset;
 dsthio->hio_length = srchio->hio_length;
 dsthio->hio_memsync = srchio->hio_memsync;
}

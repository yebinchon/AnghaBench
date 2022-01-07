
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccb_scsiio {scalar_t__ dxfer_len; int data_ptr; } ;


 int do_buff_decode (int ,size_t,void (*) (void*,int,void*,int,char*),void*,char const*,int *) ;

int
csio_decode_visit(struct ccb_scsiio *csio, const char *fmt,
    void (*arg_put)(void *, int, void *, int, char *),
    void *puthook)
{





 if (arg_put == ((void*)0))
  return (-1);

 return (do_buff_decode(csio->data_ptr, (size_t)csio->dxfer_len,
      arg_put, puthook, fmt, ((void*)0)));
}

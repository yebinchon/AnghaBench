
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccb_scsiio {int dxfer_len; int data_ptr; } ;


 int do_encode (int ,int ,int *,int (*) (void*,char*),void*,char const*,int *) ;

int
csio_encode_visit(struct ccb_scsiio *csio, const char *fmt,
    int (*arg_get)(void *hook, char *field_name), void *gethook)
{





 if (arg_get == ((void*)0))
  return (-1);

 return (do_encode(csio->data_ptr, csio->dxfer_len, ((void*)0), arg_get,
    gethook, fmt, ((void*)0)));
}

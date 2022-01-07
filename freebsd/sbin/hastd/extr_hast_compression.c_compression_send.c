
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv {int dummy; } ;
struct hast_resource {int hr_compression; } ;





 int PJDLOG_ABORT (char*,int) ;
 int compression_name (int) ;
 scalar_t__ errno ;
 int free (void*) ;
 unsigned char* hast_hole_compress (void*,size_t*) ;
 unsigned char* hast_lzf_compress (void*,size_t*) ;
 int nv_add_string (struct nv*,int ,char*) ;
 scalar_t__ nv_error (struct nv*) ;

int
compression_send(const struct hast_resource *res, struct nv *nv, void **datap,
    size_t *sizep, bool *freedatap)
{
 unsigned char *newbuf;
 int compression;
 size_t size;

 size = *sizep;
 compression = res->hr_compression;

 switch (compression) {
 case 128:
  return (0);
 case 130:
  newbuf = hast_hole_compress(*datap, &size);
  break;
 case 129:

  newbuf = hast_hole_compress(*datap, &size);
  if (newbuf != ((void*)0))
   compression = 130;
  else
   newbuf = hast_lzf_compress(*datap, &size);
  break;
 default:
  PJDLOG_ABORT("Invalid compression: %d.", res->hr_compression);
 }

 if (newbuf == ((void*)0)) {

  return (0);
 }
 nv_add_string(nv, compression_name(compression), "compression");
 if (nv_error(nv) != 0) {
  free(newbuf);
  errno = nv_error(nv);
  return (-1);
 }
 if (*freedatap)
  free(*datap);
 *freedatap = 1;
 *datap = newbuf;
 *sizep = size;

 return (0);
}

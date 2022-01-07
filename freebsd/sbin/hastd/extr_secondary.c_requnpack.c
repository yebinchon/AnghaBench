
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uintmax_t ;
typedef int uint64_t ;
struct nv {int dummy; } ;
struct hio {int hio_cmd; int hio_error; scalar_t__ hio_seq; int hio_offset; int hio_length; int hio_memsync; } ;
struct hast_resource {int hr_local_sectorsize; int hr_datasize; } ;


 void* EINVAL ;





 int MAXPHYS ;
 int nv_error (struct nv*) ;
 int nv_exists (struct nv*,char*) ;
 void* nv_get_uint64 (struct nv*,char*) ;
 int nv_get_uint8 (struct nv*,char*) ;
 int pjdlog_error (char*,...) ;

__attribute__((used)) static int
requnpack(struct hast_resource *res, struct hio *hio, struct nv *nv)
{

 hio->hio_cmd = nv_get_uint8(nv, "cmd");
 if (hio->hio_cmd == 0) {
  pjdlog_error("Header contains no 'cmd' field.");
  hio->hio_error = EINVAL;
  goto end;
 }
 if (hio->hio_cmd != 130) {
  hio->hio_seq = nv_get_uint64(nv, "seq");
  if (hio->hio_seq == 0) {
   pjdlog_error("Header contains no 'seq' field.");
   hio->hio_error = EINVAL;
   goto end;
  }
 }
 switch (hio->hio_cmd) {
 case 131:
 case 130:
  break;
 case 128:
  hio->hio_memsync = nv_exists(nv, "memsync");

 case 129:
 case 132:
  hio->hio_offset = nv_get_uint64(nv, "offset");
  if (nv_error(nv) != 0) {
   pjdlog_error("Header is missing 'offset' field.");
   hio->hio_error = EINVAL;
   goto end;
  }
  hio->hio_length = nv_get_uint64(nv, "length");
  if (nv_error(nv) != 0) {
   pjdlog_error("Header is missing 'length' field.");
   hio->hio_error = EINVAL;
   goto end;
  }
  if (hio->hio_length == 0) {
   pjdlog_error("Data length is zero.");
   hio->hio_error = EINVAL;
   goto end;
  }
  if (hio->hio_cmd != 132 && hio->hio_length > MAXPHYS) {
   pjdlog_error("Data length is too large (%ju > %ju).",
       (uintmax_t)hio->hio_length, (uintmax_t)MAXPHYS);
   hio->hio_error = EINVAL;
   goto end;
  }
  if ((hio->hio_offset % res->hr_local_sectorsize) != 0) {
   pjdlog_error("Offset %ju is not multiple of sector size.",
       (uintmax_t)hio->hio_offset);
   hio->hio_error = EINVAL;
   goto end;
  }
  if ((hio->hio_length % res->hr_local_sectorsize) != 0) {
   pjdlog_error("Length %ju is not multiple of sector size.",
       (uintmax_t)hio->hio_length);
   hio->hio_error = EINVAL;
   goto end;
  }
  if (hio->hio_offset + hio->hio_length >
      (uint64_t)res->hr_datasize) {
   pjdlog_error("Data offset is too large (%ju > %ju).",
       (uintmax_t)(hio->hio_offset + hio->hio_length),
       (uintmax_t)res->hr_datasize);
   hio->hio_error = EINVAL;
   goto end;
  }
  break;
 default:
  pjdlog_error("Header contains invalid 'cmd' (%hhu).",
      hio->hio_cmd);
  hio->hio_error = EINVAL;
  goto end;
 }
 hio->hio_error = 0;
end:
 return (hio->hio_error);
}

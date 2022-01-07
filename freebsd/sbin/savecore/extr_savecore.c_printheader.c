
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_handle_t ;
typedef void* uint64_t ;
typedef void* time_t ;
struct kerneldumpheader {char const* architecture; int compression; char const* hostname; char const* magic; char const* versionstring; char const* panicstring; char const* parity; int dumptime; int blocksize; int dumplength; int architectureversion; } ;







 char const* ctime (void**) ;
 char const* dtoh32 (int ) ;
 void* dtoh64 (int ) ;
 int xo_emit_h (int *,char*,...) ;
 int xo_flush_h (int *) ;

__attribute__((used)) static void
printheader(xo_handle_t *xo, const struct kerneldumpheader *h,
    const char *device, int bounds, const int status)
{
 uint64_t dumplen;
 time_t t;
 const char *stat_str;
 const char *comp_str;

 xo_flush_h(xo);
 xo_emit_h(xo, "{Lwc:Dump header from device}{:dump_device/%s}\n",
     device);
 xo_emit_h(xo, "{P:  }{Lwc:Architecture}{:architecture/%s}\n",
     h->architecture);
 xo_emit_h(xo,
     "{P:  }{Lwc:Architecture Version}{:architecture_version/%u}\n",
     dtoh32(h->architectureversion));
 dumplen = dtoh64(h->dumplength);
 xo_emit_h(xo, "{P:  }{Lwc:Dump Length}{:dump_length_bytes/%lld}\n",
     (long long)dumplen);
 xo_emit_h(xo, "{P:  }{Lwc:Blocksize}{:blocksize/%d}\n",
     dtoh32(h->blocksize));
 switch (h->compression) {
 case 131:
  comp_str = "none";
  break;
 case 132:
  comp_str = "gzip";
  break;
 case 130:
  comp_str = "zstd";
  break;
 default:
  comp_str = "???";
  break;
 }
 xo_emit_h(xo, "{P:  }{Lwc:Compression}{:compression/%s}\n", comp_str);
 t = dtoh64(h->dumptime);
 xo_emit_h(xo, "{P:  }{Lwc:Dumptime}{:dumptime/%s}", ctime(&t));
 xo_emit_h(xo, "{P:  }{Lwc:Hostname}{:hostname/%s}\n", h->hostname);
 xo_emit_h(xo, "{P:  }{Lwc:Magic}{:magic/%s}\n", h->magic);
 xo_emit_h(xo, "{P:  }{Lwc:Version String}{:version_string/%s}",
     h->versionstring);
 xo_emit_h(xo, "{P:  }{Lwc:Panic String}{:panic_string/%s}\n",
     h->panicstring);
 xo_emit_h(xo, "{P:  }{Lwc:Dump Parity}{:dump_parity/%u}\n", h->parity);
 xo_emit_h(xo, "{P:  }{Lwc:Bounds}{:bounds/%d}\n", bounds);

 switch (status) {
 case 129:
  stat_str = "bad";
  break;
 case 128:
  stat_str = "good";
  break;
 default:
  stat_str = "unknown";
  break;
 }
 xo_emit_h(xo, "{P:  }{Lwc:Dump Status}{:dump_status/%s}\n", stat_str);
 xo_flush_h(xo);
}

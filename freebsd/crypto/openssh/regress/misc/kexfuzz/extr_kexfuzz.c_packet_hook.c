
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;
struct ssh {int dummy; } ;
struct hook_ctx {int* s2c; int* c2s; int trigger_direction; int packet_index; int * dump_path; int * replace_data; struct ssh* client; } ;
typedef int FILE ;


 int C2S ;
 int S2C ;
 scalar_t__ do_debug ;
 int err (int,char*,int *) ;
 int exit (int ) ;
 int fclose (int *) ;
 int * fopen (int *,char*) ;
 int fwrite (int*,int,int,int *) ;
 int printf (char*,...) ;
 int sshbuf_dump (struct sshbuf*,int ) ;
 int sshbuf_get_u8 (int *,int*) ;
 int sshbuf_len (struct sshbuf*) ;
 int* sshbuf_ptr (struct sshbuf*) ;
 int sshbuf_putb (struct sshbuf*,int *) ;
 int sshbuf_reset (struct sshbuf*) ;
 int stdout ;

__attribute__((used)) static int
packet_hook(struct ssh *ssh, struct sshbuf *packet, u_char *typep, void *_ctx)
{
 struct hook_ctx *ctx = (struct hook_ctx *)_ctx;
 int mydirection = ssh == ctx->client ? S2C : C2S;
 int *packet_count = mydirection == S2C ? ctx->s2c : ctx->c2s;
 FILE *dumpfile;
 int r;

 if (do_debug) {
  printf("%s packet %d type %u:\n",
      mydirection == S2C ? "s2c" : "c2s",
      *packet_count, *typep);
  sshbuf_dump(packet, stdout);
 }
 if (mydirection == ctx->trigger_direction &&
     ctx->packet_index == *packet_count) {
  if (ctx->replace_data != ((void*)0)) {
   sshbuf_reset(packet);

   if ((r = sshbuf_get_u8(ctx->replace_data,
       typep)) != 0 ||
       (r = sshbuf_putb(packet, ctx->replace_data)) != 0)
    return r;
   if (do_debug) {
    printf("***** replaced packet type %u\n",
        *typep);
    sshbuf_dump(packet, stdout);
   }
  } else if (ctx->dump_path != ((void*)0)) {
   if ((dumpfile = fopen(ctx->dump_path, "w+")) == ((void*)0))
    err(1, "fopen %s", ctx->dump_path);

   if (fwrite(typep, 1, 1, dumpfile) != 1)
    err(1, "fwrite type %s", ctx->dump_path);
   if (sshbuf_len(packet) != 0 &&
       fwrite(sshbuf_ptr(packet), sshbuf_len(packet),
       1, dumpfile) != 1)
    err(1, "fwrite body %s", ctx->dump_path);
   if (do_debug) {
    printf("***** dumped packet type %u len %zu\n",
        *typep, sshbuf_len(packet));
   }
   fclose(dumpfile);

   exit(0);
  }
 }
 (*packet_count)++;
 return 0;
}

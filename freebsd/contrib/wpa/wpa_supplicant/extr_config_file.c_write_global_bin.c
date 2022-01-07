
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 int * wpabuf_head (struct wpabuf const*) ;
 size_t wpabuf_len (struct wpabuf const*) ;

__attribute__((used)) static void write_global_bin(FILE *f, const char *field,
        const struct wpabuf *val)
{
 size_t i;
 const u8 *pos;

 if (val == ((void*)0))
  return;

 fprintf(f, "%s=", field);
 pos = wpabuf_head(val);
 for (i = 0; i < wpabuf_len(val); i++)
  fprintf(f, "%02X", *pos++);
 fprintf(f, "\n");
}

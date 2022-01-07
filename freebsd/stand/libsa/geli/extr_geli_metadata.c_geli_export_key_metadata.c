
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct preloaded_file {int dummy; } ;
struct keybuf {int dummy; } ;


 int GELI_KEYBUF_SIZE ;
 int MODINFOMD_KEYBUF ;
 int explicit_bzero (struct keybuf*,int ) ;
 int file_addmetadata (struct preloaded_file*,int ,int ,struct keybuf*) ;
 int free (struct keybuf*) ;
 int geli_export_key_buffer (struct keybuf*) ;
 struct keybuf* malloc (int ) ;

void
geli_export_key_metadata(struct preloaded_file *kfp)
{
    struct keybuf *keybuf;

    keybuf = malloc(GELI_KEYBUF_SIZE);
    geli_export_key_buffer(keybuf);
    file_addmetadata(kfp, MODINFOMD_KEYBUF, GELI_KEYBUF_SIZE, keybuf);
    explicit_bzero(keybuf, GELI_KEYBUF_SIZE);
    free(keybuf);
}

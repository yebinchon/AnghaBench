
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_config_blob {char* name; int len; int data; } ;
typedef int FILE ;


 unsigned char* base64_encode (int ,int ,int *) ;
 int fprintf (int *,char*,char*,unsigned char*) ;
 int os_free (unsigned char*) ;

__attribute__((used)) static int wpa_config_write_blob(FILE *f, struct wpa_config_blob *blob)
{
 unsigned char *encoded;

 encoded = base64_encode(blob->data, blob->len, ((void*)0));
 if (encoded == ((void*)0))
  return -1;

 fprintf(f, "\nblob-base64-%s={\n%s}\n", blob->name, encoded);
 os_free(encoded);
 return 0;
}

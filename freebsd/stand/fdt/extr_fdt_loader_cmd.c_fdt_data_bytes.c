
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int sprintf (char*,char*,char const,char*) ;
 int strcat (char*,char*) ;

__attribute__((used)) static int
fdt_data_bytes(const void *data, int len, char **buf)
{
 char *b, *tmp;
 const char *d;
 int i, l;






 l = len * 2;
 if (len > 1)

  l += (len - 1) * 1;

 l += len * 2;

 l += 3;

 b = (char *)malloc(l);
 tmp = (char *)malloc(l);
 if (b == ((void*)0))
  goto error;

 if (tmp == ((void*)0)) {
  free(b);
  goto error;
 }

 b[0] = '\0';
 strcat(b, "[");

 for (i = 0, d = data; i < len; i++) {
  sprintf(tmp, "0x%02x%s", d[i], i < len - 1 ? " " : "");
  strcat(b, tmp);
 }
 strcat(b, "]");
 *buf = b;

 free(tmp);

 return (0);
error:
 return (1);
}

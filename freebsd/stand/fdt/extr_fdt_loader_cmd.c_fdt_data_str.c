
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int sprintf (char*,char*,char const*,char*) ;
 int strcat (char*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
fdt_data_str(const void *data, int len, int count, char **buf)
{
 char *b, *tmp;
 const char *d;
 int buf_len, i, l;






 buf_len = len;
 if (count > 1) {




  buf_len -= count - 1;


  buf_len += count * 2;
 }


 buf_len += count * 2;


 b = (char *)malloc(buf_len);
 tmp = (char *)malloc(buf_len);
 if (b == ((void*)0))
  goto error;

 if (tmp == ((void*)0)) {
  free(b);
  goto error;
 }

 b[0] = '\0';




 i = 0;
 do {
  d = (const char *)data + i;
  l = strlen(d) + 1;

  sprintf(tmp, "\"%s\"%s", d,
      (i + l) < len ? ", " : "");
  strcat(b, tmp);

  i += l;

 } while (i < len);
 *buf = b;

 free(tmp);

 return (0);
error:
 return (1);
}

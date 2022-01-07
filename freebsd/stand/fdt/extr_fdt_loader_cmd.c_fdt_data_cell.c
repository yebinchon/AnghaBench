
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int fdt32_to_cpu (int const) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int sprintf (char*,char*,int,char*) ;
 int strcat (char*,char*) ;

__attribute__((used)) static int
fdt_data_cell(const void *data, int len, char **buf)
{
 char *b, *tmp;
 const uint32_t *c;
 int count, i, l;


 count = len / 4;






 l = len * 2;
 if (count > 1) {

  l += (count - 1) * 1;
 }

 l += count * 2;

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
 strcat(b, "<");

 for (i = 0; i < len; i += 4) {
  c = (const uint32_t *)((const uint8_t *)data + i);
  sprintf(tmp, "0x%08x%s", fdt32_to_cpu(*c),
      i < (len - 4) ? " " : "");
  strcat(b, tmp);
 }
 strcat(b, ">");
 *buf = b;

 free(tmp);

 return (0);
error:
 return (1);
}

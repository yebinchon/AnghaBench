
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_3__ {char* header; char* value; struct TYPE_3__* next; } ;
typedef TYPE_1__ hx509_pem_header ;
typedef int hx509_context ;
typedef int FILE ;


 size_t ENCODE_LINE_LENGTH ;
 int ENOMEM ;
 scalar_t__ base64_encode (char const*,size_t,char**) ;
 int fprintf (int *,char*,char*,...) ;
 int free (char*) ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 int print_pem_stamp (int *,char*,char const*) ;

int
hx509_pem_write(hx509_context context, const char *type,
  hx509_pem_header *headers, FILE *f,
  const void *data, size_t size)
{
    const char *p = data;
    size_t length;
    char *line;



    print_pem_stamp(f, "BEGIN", type);

    while (headers) {
 fprintf(f, "%s: %s\n%s",
  headers->header, headers->value,
  headers->next ? "" : "\n");
 headers = headers->next;
    }

    while (size > 0) {
 ssize_t l;

 length = size;
 if (length > 54)
     length = 54;

 l = base64_encode(p, length, &line);
 if (l < 0) {
     hx509_set_error_string(context, 0, ENOMEM,
       "malloc - out of memory");
     return ENOMEM;
 }
 size -= length;
 fprintf(f, "%s\n", line);
 p += length;
 free(line);
    }

    print_pem_stamp(f, "END", type);

    return 0;
}

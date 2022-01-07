
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct TYPE_4__ {scalar_t__ len; } ;
typedef TYPE_1__ tokenstr_t ;
typedef int FILE ;


 scalar_t__ AUT_HEADER32 ;
 int AU_OFLAG_XML ;
 int au_fetch_tok (TYPE_1__*,scalar_t__*,int) ;
 int au_print_flags_tok (int ,TYPE_1__*,char*,int) ;
 int au_read_rec (int *,scalar_t__**) ;
 char* del ;
 int fflush (int ) ;
 scalar_t__ fgetc (int *) ;
 int free (scalar_t__*) ;
 int oflags ;
 scalar_t__ oneline ;
 scalar_t__ partial ;
 int printf (char*,...) ;
 int stdout ;
 int ungetc (scalar_t__,int *) ;

__attribute__((used)) static int
print_tokens(FILE *fp)
{
 u_char *buf;
 tokenstr_t tok;
 int reclen;
 int bytesread;


 if (partial) {
  u_char type = 0;

  do {
   type = fgetc(fp);
  } while(type != AUT_HEADER32);
  ungetc(type, fp);
 }

 while ((reclen = au_read_rec(fp, &buf)) != -1) {
  bytesread = 0;
  while (bytesread < reclen) {

   if (-1 == au_fetch_tok(&tok, buf + bytesread,
       reclen - bytesread))
    break;
   au_print_flags_tok(stdout, &tok, del, oflags);
   bytesread += tok.len;
   if (oneline) {
    if (!(oflags & AU_OFLAG_XML))
     printf("%s", del);
   } else
    printf("\n");
  }
  free(buf);
  if (oneline)
   printf("\n");
  fflush(stdout);
 }
 return (0);
}

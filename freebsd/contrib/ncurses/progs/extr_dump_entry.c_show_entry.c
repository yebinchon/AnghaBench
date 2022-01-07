
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t used; char* text; } ;


 scalar_t__ F_TCONVERR ;
 scalar_t__ F_TERMCAP ;
 int UChar (char) ;
 int fputs (char*,int ) ;
 scalar_t__ isspace (int ) ;
 TYPE_1__ outbuf ;
 scalar_t__ outform ;
 int putchar (char) ;
 int stdout ;

int
show_entry(void)
{



    if (outbuf.used != 0) {
 bool infodump = (outform != F_TERMCAP && outform != F_TCONVERR);
 char delim = (char) (infodump ? ',' : ':');
 int j;

 for (j = (int) outbuf.used - 1; j > 0; --j) {
     char ch = outbuf.text[j];
     if (ch == '\n') {
  ;
     } else if (isspace(UChar(ch))) {
  outbuf.used = (size_t) j;
     } else if (!infodump && ch == '\\') {
  outbuf.used = (size_t) j;
     } else if (ch == delim && (j == 0 || outbuf.text[j - 1] != '\\')) {
  outbuf.used = (size_t) (j + 1);
     } else {
  break;
     }
 }
 outbuf.text[outbuf.used] = '\0';
    }
    (void) fputs(outbuf.text, stdout);
    putchar('\n');
    return (int) outbuf.used;
}

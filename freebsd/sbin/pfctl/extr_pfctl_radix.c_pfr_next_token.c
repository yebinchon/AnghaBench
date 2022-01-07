
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BUF_SIZE ;
 int EINVAL ;
 int errno ;
 scalar_t__ feof (int *) ;
 char fgetc (int *) ;
 scalar_t__ isspace (char) ;

int
pfr_next_token(char buf[BUF_SIZE], FILE *fp)
{
 static char next_ch = ' ';
 int i = 0;

 for (;;) {

  while (isspace(next_ch) && !feof(fp))
   next_ch = fgetc(fp);

  if (next_ch == '#')
   while (!feof(fp)) {
    next_ch = fgetc(fp);
    if (next_ch == '\n')
     break;
   }
  else
   break;
 }
 if (feof(fp)) {
  next_ch = ' ';
  return (0);
 }
 do {
  if (i < BUF_SIZE)
   buf[i++] = next_ch;
  next_ch = fgetc(fp);
 } while (!feof(fp) && !isspace(next_ch));
 if (i >= BUF_SIZE) {
  errno = EINVAL;
  return (-1);
 }
 buf[i] = '\0';
 return (1);
}

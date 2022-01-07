
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tar {int dummy; } ;
struct archive_read {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int int64_t ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_WARN ;
 int INT64_MAX ;
 scalar_t__ readline (struct archive_read*,struct tar*,char const**,scalar_t__,size_t*) ;
 scalar_t__ tar_min (int,int) ;

__attribute__((used)) static int64_t
gnu_sparse_10_atol(struct archive_read *a, struct tar *tar,
    int64_t *remaining, size_t *unconsumed)
{
 int64_t l, limit, last_digit_limit;
 const char *p;
 ssize_t bytes_read;
 int base, digit;

 base = 10;
 limit = INT64_MAX / base;
 last_digit_limit = INT64_MAX % base;





 do {
  bytes_read = readline(a, tar, &p,
   (ssize_t)tar_min(*remaining, 100), unconsumed);
  if (bytes_read <= 0)
   return (ARCHIVE_FATAL);
  *remaining -= bytes_read;
 } while (p[0] == '#');

 l = 0;
 while (bytes_read > 0) {
  if (*p == '\n')
   return (l);
  if (*p < '0' || *p >= '0' + base)
   return (ARCHIVE_WARN);
  digit = *p - '0';
  if (l > limit || (l == limit && digit > last_digit_limit))
   l = INT64_MAX;
  else
   l = (l * base) + digit;
  p++;
  bytes_read--;
 }

 return (ARCHIVE_WARN);
}

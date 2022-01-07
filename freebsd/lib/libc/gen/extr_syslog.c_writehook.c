
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufcookie {int left; int base; } ;


 int memcpy (int,char const*,int) ;

__attribute__((used)) static int
writehook(void *cookie, const char *buf, int len)
{
 struct bufcookie *h;

 h = (struct bufcookie *)cookie;
 if (len > h->left) {

  len = h->left;
 }
 if (len > 0) {
  (void)memcpy(h->base, buf, len);
  h->base += len;
  h->left -= len;
 }
 return len;
}

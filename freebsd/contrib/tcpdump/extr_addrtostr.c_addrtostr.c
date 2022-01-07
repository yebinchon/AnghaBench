
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int ENOSPC ;
 size_t INET_ADDRSTRLEN ;
 int errno ;

const char *
addrtostr (const void *src, char *dst, size_t size)
{
    const u_char *srcaddr = (const u_char *)src;
    const char digits[] = "0123456789";
    int i;
    const char *orig_dst = dst;

    if (size < INET_ADDRSTRLEN) {
 errno = ENOSPC;
 return ((void*)0);
    }
    for (i = 0; i < 4; ++i) {
     int n = *srcaddr++;
 int non_zerop = 0;

 if (non_zerop || n / 100 > 0) {
     *dst++ = digits[n / 100];
     n %= 100;
     non_zerop = 1;
 }
 if (non_zerop || n / 10 > 0) {
     *dst++ = digits[n / 10];
     n %= 10;
     non_zerop = 1;
 }
 *dst++ = digits[n];
 if (i != 3)
     *dst++ = '.';
    }
    *dst++ = '\0';
    return orig_dst;
}

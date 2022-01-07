
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ closesocket (int) ;

int BIO_closesocket(int sock)
{
    if (closesocket(sock) < 0)
        return 0;
    return 1;
}

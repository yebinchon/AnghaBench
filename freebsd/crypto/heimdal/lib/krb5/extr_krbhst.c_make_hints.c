
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_socktype; int ai_family; } ;


 int AF_UNSPEC ;



 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int memset (struct addrinfo*,int ,int) ;

__attribute__((used)) static void
make_hints(struct addrinfo *hints, int proto)
{
    memset(hints, 0, sizeof(*hints));
    hints->ai_family = AF_UNSPEC;
    switch(proto) {
    case 128 :
 hints->ai_socktype = SOCK_DGRAM;
 break;
    case 130 :
    case 129 :
 hints->ai_socktype = SOCK_STREAM;
 break;
    }
}

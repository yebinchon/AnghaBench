
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {scalar_t__ sin_family; } ;
struct sockaddr {int dummy; } ;
struct in_addr {int s_addr; } ;
struct hostent {char* h_name; int h_length; char** h_addr_list; int h_addrtype; int * h_aliases; } ;
typedef scalar_t__ ssize_t ;
typedef int buf ;
typedef int addr ;


 int AF_INET ;
 int MAX_ADDRS ;
 int SOCK_STREAM ;
 scalar_t__ asprintf (char**,char*,int ,char const*) ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 struct sockaddr_in dns_addr ;
 int dns_req ;
 int free (char*) ;
 int inet_aton (char*,struct in_addr*) ;
 int ntohl (int) ;
 int read (int,char*,int) ;
 int socket (int ,int ,int ) ;
 size_t strlen (char*) ;
 char* strstr (char*,char*) ;
 char* strtok_r (char*,char*,char**) ;
 scalar_t__ write (int,char*,size_t) ;

__attribute__((used)) static struct hostent*
roken_gethostby(const char *hostname)
{
    int s;
    struct sockaddr_in addr;
    char *request = ((void*)0);
    char buf[1024];
    int offset = 0;
    int n;
    char *p, *foo;
    size_t len;

    if(dns_addr.sin_family == 0)
 return ((void*)0);
    addr = dns_addr;
    if (asprintf(&request, "GET %s?%s HTTP/1.0\r\n\r\n", dns_req, hostname) < 0)
 return ((void*)0);
    if(request == ((void*)0))
 return ((void*)0);
    s = socket(AF_INET, SOCK_STREAM, 0);
    if(s < 0) {
 free(request);
 return ((void*)0);
    }
    if(connect(s, (struct sockaddr*)&addr, sizeof(addr)) < 0) {
 close(s);
 free(request);
 return ((void*)0);
    }

    len = strlen(request);
    if(write(s, request, len) != (ssize_t)len) {
 close(s);
 free(request);
 return ((void*)0);
    }
    free(request);
    while(1) {
 n = read(s, buf + offset, sizeof(buf) - offset);
 if(n <= 0)
     break;
 offset += n;
    }
    buf[offset] = '\0';
    close(s);
    p = strstr(buf, "\r\n\r\n");
    if(p) p += 4;
    else return ((void*)0);
    foo = ((void*)0);
    p = strtok_r(p, " \t\r\n", &foo);
    if(p == ((void*)0))
 return ((void*)0);
    {


 static struct hostent he;
 static char addrs[4 * 16];
 static char *addr_list[16 + 1];
 int num_addrs = 0;

 he.h_name = p;
 he.h_aliases = ((void*)0);
 he.h_addrtype = AF_INET;
 he.h_length = 4;

 while((p = strtok_r(((void*)0), " \t\r\n", &foo)) && num_addrs < 16) {
     struct in_addr ip;
     inet_aton(p, &ip);
     ip.s_addr = ntohl(ip.s_addr);
     addr_list[num_addrs] = &addrs[num_addrs * 4];
     addrs[num_addrs * 4 + 0] = (ip.s_addr >> 24) & 0xff;
     addrs[num_addrs * 4 + 1] = (ip.s_addr >> 16) & 0xff;
     addrs[num_addrs * 4 + 2] = (ip.s_addr >> 8) & 0xff;
     addrs[num_addrs * 4 + 3] = (ip.s_addr >> 0) & 0xff;
     addr_list[++num_addrs] = ((void*)0);
 }
 he.h_addr_list = addr_list;
 return &he;
    }
}

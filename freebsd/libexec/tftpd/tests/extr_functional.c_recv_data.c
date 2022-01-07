
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int RECV (char*,char const*,size_t) ;

__attribute__((used)) static void
recv_data(uint16_t blocknum, const char* contents, size_t contents_len)
{
 char hdr[] = {0, 3, blocknum >> 8, blocknum & 0xFF};
 RECV(hdr, contents, contents_len);
}

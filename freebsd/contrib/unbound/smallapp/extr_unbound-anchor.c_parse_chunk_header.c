
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strtol (char*,char**,int) ;

__attribute__((used)) static int
parse_chunk_header(char* buf, size_t* result)
{
 char* e = ((void*)0);
 size_t v = (size_t)strtol(buf, &e, 16);
 if(e == buf)
  return 0;
 *result = v;
 return 1;
}

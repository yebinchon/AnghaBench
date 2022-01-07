
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* MDXFileChunk (char const*,char*,int ,int ) ;

char *
MDXFile(const char *filename, char *buf)
{
 return (MDXFileChunk(filename, buf, 0, 0));
}

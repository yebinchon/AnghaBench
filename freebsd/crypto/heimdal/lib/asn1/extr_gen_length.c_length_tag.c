
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t
length_tag(unsigned int tag)
{
    size_t len = 0;

    if(tag <= 30)
 return 1;
    while(tag) {
 tag /= 128;
 len++;
    }
    return len + 1;
}

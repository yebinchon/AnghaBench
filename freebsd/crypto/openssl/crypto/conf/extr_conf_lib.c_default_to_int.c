
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF ;



__attribute__((used)) static int default_to_int(const CONF *conf, char c)
{
    return (int)(c - '0');
}

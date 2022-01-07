
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long HASHTABSIZE ;

__attribute__((used)) static int
hash_function(const char *string)
{
    long sum = 0;

    while (*string) {
 sum += (long) (*string + (*(string + 1) << 8));
 string++;
    }

    return (int) (sum % HASHTABSIZE);
}

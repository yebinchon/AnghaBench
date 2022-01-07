
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int ASN1_BAD_LENGTH ;
 int ENOMEM ;
 int free (char*) ;
 int generalizedtime2time (char*,int *) ;
 char* malloc (size_t) ;
 int memcpy (char*,unsigned char const*,size_t) ;

__attribute__((used)) static int
der_get_time (const unsigned char *p, size_t len,
       time_t *data, size_t *size)
{
    char *times;
    int e;

    if (len > len + 1 || len == 0)
 return ASN1_BAD_LENGTH;

    times = malloc(len + 1);
    if (times == ((void*)0))
 return ENOMEM;
    memcpy(times, p, len);
    times[len] = '\0';
    e = generalizedtime2time(times, data);
    free (times);
    if(size) *size = len;
    return e;
}

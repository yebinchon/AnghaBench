
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MB ;
 int expand_number (char const*,size_t*) ;
 size_t strtoul (char const*,char**,int ) ;

int
vm_parse_memsize(const char *optarg, size_t *ret_memsize)
{
 char *endptr;
 size_t optval;
 int error;

 optval = strtoul(optarg, &endptr, 0);
 if (*optarg != '\0' && *endptr == '\0') {





  if (optval < MB)
   optval *= MB;
  *ret_memsize = optval;
  error = 0;
 } else
  error = expand_number(optarg, ret_memsize);

 return (error);
}

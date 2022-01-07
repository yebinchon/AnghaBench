
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rad_handle {char const* errmsg; } ;



const char *
rad_strerror(struct rad_handle *h)
{
 return h->errmsg;
}

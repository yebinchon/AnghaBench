
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tac_handle {char const* errmsg; } ;



const char *
tac_strerror(struct tac_handle *h)
{
 return h->errmsg;
}

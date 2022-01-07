
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct escape_filter_ctx {int escape_char; scalar_t__ escape_pending; } ;


 struct escape_filter_ctx* xcalloc (int,int) ;

void *
client_new_escape_filter_ctx(int escape_char)
{
 struct escape_filter_ctx *ret;

 ret = xcalloc(1, sizeof(*ret));
 ret->escape_pending = 0;
 ret->escape_char = escape_char;
 return (void *)ret;
}

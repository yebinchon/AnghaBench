
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rad_handle {scalar_t__ pass_len; scalar_t__ pass_pos; int pass; } ;


 int memset (int ,int ,scalar_t__) ;

__attribute__((used)) static void
clear_password(struct rad_handle *h)
{
 if (h->pass_len != 0) {
  memset(h->pass, 0, h->pass_len);
  h->pass_len = 0;
 }
 h->pass_pos = 0;
}

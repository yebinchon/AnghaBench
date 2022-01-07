
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



__attribute__((used)) static void
append_id_w(wchar_t **wp, int id)
{
 if (id < 0)
  id = 0;
 if (id > 9)
  append_id_w(wp, id / 10);
 *(*wp)++ = L"0123456789"[id % 10];
}

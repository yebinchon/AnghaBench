
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int cp_qschar(int ch)
{
 return ch && (ch != '"' && ch != '\r' && ch != '\n');
}

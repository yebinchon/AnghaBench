
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EditLine ;



__attribute__((used)) static char *
prompt(EditLine *el)
{
 return ("sftp> ");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum svn_wc_status_kind { ____Placeholder_svn_wc_status_kind } svn_wc_status_kind ;
__attribute__((used)) static char
generate_status_code(enum svn_wc_status_kind status)
{
  switch (status)
    {
    case 132: return ' ';
    case 131: return ' ';
    case 140: return 'A';
    case 134: return '!';
    case 135: return '!';
    case 138: return 'D';
    case 129: return 'R';
    case 133: return 'M';
    case 139: return 'C';
    case 130: return '~';
    case 136: return 'I';
    case 137: return 'X';
    case 128: return '?';
    default: return '?';
    }
}

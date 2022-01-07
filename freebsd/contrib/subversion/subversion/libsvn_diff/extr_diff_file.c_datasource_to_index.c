
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_diff_datasource_e ;







__attribute__((used)) static int
datasource_to_index(svn_diff_datasource_e datasource)
{
  switch (datasource)
    {
    case 128:
      return 0;

    case 129:
      return 1;

    case 130:
      return 2;

    case 131:
      return 3;
    }

  return -1;
}

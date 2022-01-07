
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int node_status; int text_status; int conflicted; int versioned; } ;
typedef TYPE_1__ svn_client_status_t ;
typedef enum svn_wc_status_kind { ____Placeholder_svn_wc_status_kind } svn_wc_status_kind ;



 int svn_wc_status_missing ;


__attribute__((used)) static enum svn_wc_status_kind
combined_status(const svn_client_status_t *status)
{
  enum svn_wc_status_kind new_status = status->node_status;

  switch (status->node_status)
    {
      case 129:
        if (!status->versioned && status->conflicted)
          {

            new_status = svn_wc_status_missing;
            break;
          }

      case 128:

        new_status = status->text_status;
        break;
      default:
        break;
    }

  return new_status;
}

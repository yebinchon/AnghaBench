
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int window_buf; } ;
struct rar5 {TYPE_1__ cstate; } ;
struct archive_read {int dummy; } ;
typedef int int64_t ;


 int push_data (struct archive_read*,struct rar5*,int ,int ,int ) ;

__attribute__((used)) static void push_window_data(struct archive_read* a, struct rar5* rar,
    int64_t idx_begin, int64_t idx_end)
{
 push_data(a, rar, rar->cstate.window_buf, idx_begin, idx_end);
}

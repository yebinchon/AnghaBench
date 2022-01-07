
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kind; int text; } ;
typedef TYPE_1__ svn_element__payload_t ;
typedef int svn_boolean_t ;


 int FALSE ;
 scalar_t__ svn_node_file ;
 int svn_stringbuf_compare (int ,int ) ;

__attribute__((used)) static svn_boolean_t
text_equal(svn_element__payload_t *initial_payload,
           svn_element__payload_t *final_payload)
{
  if (!initial_payload || !final_payload
      || initial_payload->kind != svn_node_file
      || final_payload->kind != svn_node_file)
    {
      return FALSE;
    }

  return svn_stringbuf_compare(initial_payload->text,
                               final_payload->text);
}

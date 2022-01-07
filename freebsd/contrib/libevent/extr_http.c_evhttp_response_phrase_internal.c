
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; char const** responses; scalar_t__ num_responses; } ;


 scalar_t__ MEMBERSOF (TYPE_1__*) ;
 TYPE_1__* response_classes ;

__attribute__((used)) static const char *
evhttp_response_phrase_internal(int code)
{
 int klass = code / 100 - 1;
 int subcode = code % 100;


 if (klass < 0 || klass >= (int) MEMBERSOF(response_classes))
  return "Unknown Status Class";


 if (subcode >= (int) response_classes[klass].num_responses)
  return response_classes[klass].name;

 return response_classes[klass].responses[subcode];
}

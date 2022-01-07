
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_result {int rcode; scalar_t__ bogus; scalar_t__ secure; } ;



__attribute__((used)) static const char*
secure_str(struct ub_result* result)
{
 if(result->rcode != 0 && result->rcode != 3) return "(error)";
 if(result->secure) return "(secure)";
 if(result->bogus) return "(BOGUS (security failure))";
 return "(insecure)";
}

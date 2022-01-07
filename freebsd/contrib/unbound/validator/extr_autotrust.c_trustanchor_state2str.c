
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int autr_state_type ;
__attribute__((used)) static const char*
trustanchor_state2str(autr_state_type s)
{
        switch (s) {
                case 129: return "  START  ";
                case 133: return " ADDPEND ";
                case 128: return "  VALID  ";
                case 132: return " MISSING ";
                case 130: return " REVOKED ";
                case 131: return " REMOVED ";
        }
        return " UNKNOWN ";
}

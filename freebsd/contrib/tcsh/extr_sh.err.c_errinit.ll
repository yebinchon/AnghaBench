; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.err.c_errinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.err.c_errinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Syntax Error\00", align 1
@elst = common dso_local global i64* null, align 8
@ERR_SYNTAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"%s is not allowed\00", align 1
@ERR_NOTALLOWED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"Word too long\00", align 1
@ERR_WTOOLONG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"$< line too long\00", align 1
@ERR_LTOOLONG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"No file for $0\00", align 1
@ERR_DOLZERO = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"Incomplete [] modifier\00", align 1
@ERR_INCBR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"$ expansion must end before ]\00", align 1
@ERR_EXPORD = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"Bad : modifier in $ '%c'\00", align 1
@ERR_BADMOD = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"Subscript error\00", align 1
@ERR_SUBSCRIPT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c"Badly formed number\00", align 1
@ERR_BADNUM = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"No more words\00", align 1
@ERR_NOMORE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [18 x i8] c"Missing file name\00", align 1
@ERR_FILENAME = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [20 x i8] c"Internal glob error\00", align 1
@ERR_GLOB = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [18 x i8] c"Command not found\00", align 1
@ERR_COMMAND = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [18 x i8] c"Too few arguments\00", align 1
@ERR_TOOFEW = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [19 x i8] c"Too many arguments\00", align 1
@ERR_TOOMANY = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [28 x i8] c"Too dangerous to alias that\00", align 1
@ERR_DANGER = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"Empty if\00", align 1
@ERR_EMPTYIF = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"Improper then\00", align 1
@ERR_IMPRTHEN = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [24 x i8] c"Words not parenthesized\00", align 1
@ERR_NOPAREN = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [13 x i8] c"%s not found\00", align 1
@ERR_NOTFOUND = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [14 x i8] c"Improper mask\00", align 1
@ERR_MASK = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [14 x i8] c"No such limit\00", align 1
@ERR_LIMIT = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [19 x i8] c"Argument too large\00", align 1
@ERR_TOOLARGE = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [33 x i8] c"Improper or unknown scale factor\00", align 1
@ERR_SCALEF = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [19 x i8] c"Undefined variable\00", align 1
@ERR_UNDVAR = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [30 x i8] c"Directory stack not that deep\00", align 1
@ERR_DEEP = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [18 x i8] c"Bad signal number\00", align 1
@ERR_BADSIG = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [38 x i8] c"Unknown signal; kill -l lists signals\00", align 1
@ERR_UNKSIG = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [39 x i8] c"Variable name must begin with a letter\00", align 1
@ERR_VARBEGIN = common dso_local global i64 0, align 8
@.str.30 = private unnamed_addr constant [23 x i8] c"Variable name too long\00", align 1
@ERR_VARTOOLONG = common dso_local global i64 0, align 8
@.str.31 = private unnamed_addr constant [51 x i8] c"Variable name must contain alphanumeric characters\00", align 1
@ERR_VARALNUM = common dso_local global i64 0, align 8
@.str.32 = private unnamed_addr constant [29 x i8] c"No job control in this shell\00", align 1
@ERR_JOBCONTROL = common dso_local global i64 0, align 8
@.str.33 = private unnamed_addr constant [18 x i8] c"Expression Syntax\00", align 1
@ERR_EXPRESSION = common dso_local global i64 0, align 8
@.str.34 = private unnamed_addr constant [18 x i8] c"No home directory\00", align 1
@ERR_NOHOMEDIR = common dso_local global i64 0, align 8
@.str.35 = private unnamed_addr constant [31 x i8] c"Can't change to home directory\00", align 1
@ERR_CANTCHANGE = common dso_local global i64 0, align 8
@.str.36 = private unnamed_addr constant [21 x i8] c"Invalid null command\00", align 1
@ERR_NULLCOM = common dso_local global i64 0, align 8
@.str.37 = private unnamed_addr constant [30 x i8] c"Assignment missing expression\00", align 1
@ERR_ASSIGN = common dso_local global i64 0, align 8
@.str.38 = private unnamed_addr constant [17 x i8] c"Unknown operator\00", align 1
@ERR_UNKNOWNOP = common dso_local global i64 0, align 8
@.str.39 = private unnamed_addr constant [10 x i8] c"Ambiguous\00", align 1
@ERR_AMBIG = common dso_local global i64 0, align 8
@.str.40 = private unnamed_addr constant [16 x i8] c"%s: File exists\00", align 1
@ERR_EXISTS = common dso_local global i64 0, align 8
@.str.41 = private unnamed_addr constant [34 x i8] c"Argument for -c ends in backslash\00", align 1
@ERR_ARGC = common dso_local global i64 0, align 8
@.str.42 = private unnamed_addr constant [12 x i8] c"Interrupted\00", align 1
@ERR_INTR = common dso_local global i64 0, align 8
@.str.43 = private unnamed_addr constant [23 x i8] c"Subscript out of range\00", align 1
@ERR_RANGE = common dso_local global i64 0, align 8
@.str.44 = private unnamed_addr constant [14 x i8] c"Line overflow\00", align 1
@ERR_OVERFLOW = common dso_local global i64 0, align 8
@.str.45 = private unnamed_addr constant [12 x i8] c"No such job\00", align 1
@ERR_NOSUCHJOB = common dso_local global i64 0, align 8
@.str.46 = private unnamed_addr constant [20 x i8] c"Can't from terminal\00", align 1
@ERR_TERMINAL = common dso_local global i64 0, align 8
@.str.47 = private unnamed_addr constant [21 x i8] c"Not in while/foreach\00", align 1
@ERR_NOTWHILE = common dso_local global i64 0, align 8
@.str.48 = private unnamed_addr constant [18 x i8] c"No more processes\00", align 1
@ERR_NOPROC = common dso_local global i64 0, align 8
@.str.49 = private unnamed_addr constant [9 x i8] c"No match\00", align 1
@ERR_NOMATCH = common dso_local global i64 0, align 8
@.str.50 = private unnamed_addr constant [13 x i8] c"Missing '%c'\00", align 1
@ERR_MISSING = common dso_local global i64 0, align 8
@.str.51 = private unnamed_addr constant [15 x i8] c"Unmatched '%c'\00", align 1
@ERR_UNMATCHED = common dso_local global i64 0, align 8
@.str.52 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@ERR_NOMEM = common dso_local global i64 0, align 8
@.str.53 = private unnamed_addr constant [16 x i8] c"Can't make pipe\00", align 1
@ERR_PIPE = common dso_local global i64 0, align 8
@.str.54 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@ERR_SYSTEM = common dso_local global i64 0, align 8
@.str.55 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ERR_STRING = common dso_local global i64 0, align 8
@.str.56 = private unnamed_addr constant [19 x i8] c"Usage: jobs [ -l ]\00", align 1
@ERR_JOBS = common dso_local global i64 0, align 8
@.str.57 = private unnamed_addr constant [41 x i8] c"Arguments should be jobs or process id's\00", align 1
@ERR_JOBARGS = common dso_local global i64 0, align 8
@.str.58 = private unnamed_addr constant [15 x i8] c"No current job\00", align 1
@ERR_JOBCUR = common dso_local global i64 0, align 8
@.str.59 = private unnamed_addr constant [16 x i8] c"No previous job\00", align 1
@ERR_JOBPREV = common dso_local global i64 0, align 8
@.str.60 = private unnamed_addr constant [23 x i8] c"No job matches pattern\00", align 1
@ERR_JOBPAT = common dso_local global i64 0, align 8
@.str.61 = private unnamed_addr constant [36 x i8] c"Fork nesting > %d; maybe `...` loop\00", align 1
@ERR_NESTING = common dso_local global i64 0, align 8
@.str.62 = private unnamed_addr constant [28 x i8] c"No job control in subshells\00", align 1
@ERR_JOBCTRLSUB = common dso_local global i64 0, align 8
@.str.63 = private unnamed_addr constant [33 x i8] c"Sync fault: Process %d not found\00", align 1
@ERR_SYNC = common dso_local global i64 0, align 8
@.str.64 = private unnamed_addr constant [25 x i8] c"%sThere are stopped jobs\00", align 1
@ERR_STOPPED = common dso_local global i64 0, align 8
@.str.65 = private unnamed_addr constant [19 x i8] c"No other directory\00", align 1
@ERR_NODIR = common dso_local global i64 0, align 8
@.str.66 = private unnamed_addr constant [22 x i8] c"Directory stack empty\00", align 1
@ERR_EMPTY = common dso_local global i64 0, align 8
@.str.67 = private unnamed_addr constant [14 x i8] c"Bad directory\00", align 1
@ERR_BADDIR = common dso_local global i64 0, align 8
@.str.68 = private unnamed_addr constant [18 x i8] c"Usage: %s [-%s]%s\00", align 1
@ERR_DIRUS = common dso_local global i64 0, align 8
@.str.69 = private unnamed_addr constant [23 x i8] c"No operand for -h flag\00", align 1
@ERR_HFLAG = common dso_local global i64 0, align 8
@.str.70 = private unnamed_addr constant [18 x i8] c"Not a login shell\00", align 1
@ERR_NOTLOGIN = common dso_local global i64 0, align 8
@.str.71 = private unnamed_addr constant [14 x i8] c"Division by 0\00", align 1
@ERR_DIV0 = common dso_local global i64 0, align 8
@.str.72 = private unnamed_addr constant [9 x i8] c"Mod by 0\00", align 1
@ERR_MOD0 = common dso_local global i64 0, align 8
@.str.73 = private unnamed_addr constant [32 x i8] c"Bad scaling; did you mean \22%s\22?\00", align 1
@ERR_BADSCALE = common dso_local global i64 0, align 8
@.str.74 = private unnamed_addr constant [34 x i8] c"Can't suspend a login shell (yet)\00", align 1
@ERR_SUSPLOG = common dso_local global i64 0, align 8
@.str.75 = private unnamed_addr constant [17 x i8] c"Unknown user: %s\00", align 1
@ERR_UNKUSER = common dso_local global i64 0, align 8
@.str.76 = private unnamed_addr constant [22 x i8] c"No $home variable set\00", align 1
@ERR_NOHOME = common dso_local global i64 0, align 8
@.str.77 = private unnamed_addr constant [42 x i8] c"Usage: history [-%s] [# number of events]\00", align 1
@ERR_HISTUS = common dso_local global i64 0, align 8
@.str.78 = private unnamed_addr constant [36 x i8] c"$, ! or < not allowed with $# or $?\00", align 1
@ERR_SPDOLLT = common dso_local global i64 0, align 8
@.str.79 = private unnamed_addr constant [25 x i8] c"Newline in variable name\00", align 1
@ERR_NEWLINE = common dso_local global i64 0, align 8
@.str.80 = private unnamed_addr constant [28 x i8] c"* not allowed with $# or $?\00", align 1
@ERR_SPSTAR = common dso_local global i64 0, align 8
@.str.81 = private unnamed_addr constant [35 x i8] c"$?<digit> or $#<digit> not allowed\00", align 1
@ERR_DIGIT = common dso_local global i64 0, align 8
@.str.82 = private unnamed_addr constant [22 x i8] c"Illegal variable name\00", align 1
@ERR_VARILL = common dso_local global i64 0, align 8
@.str.83 = private unnamed_addr constant [26 x i8] c"Newline in variable index\00", align 1
@ERR_NLINDEX = common dso_local global i64 0, align 8
@.str.84 = private unnamed_addr constant [26 x i8] c"Expansion buffer overflow\00", align 1
@ERR_EXPOVFL = common dso_local global i64 0, align 8
@.str.85 = private unnamed_addr constant [16 x i8] c"Variable syntax\00", align 1
@ERR_VARSYN = common dso_local global i64 0, align 8
@.str.86 = private unnamed_addr constant [11 x i8] c"Bad ! form\00", align 1
@ERR_BADBANG = common dso_local global i64 0, align 8
@.str.87 = private unnamed_addr constant [23 x i8] c"No previous substitute\00", align 1
@ERR_NOSUBST = common dso_local global i64 0, align 8
@.str.88 = private unnamed_addr constant [15 x i8] c"Bad substitute\00", align 1
@ERR_BADSUBST = common dso_local global i64 0, align 8
@.str.89 = private unnamed_addr constant [27 x i8] c"No previous left hand side\00", align 1
@ERR_LHS = common dso_local global i64 0, align 8
@.str.90 = private unnamed_addr constant [25 x i8] c"Right hand side too long\00", align 1
@ERR_RHSLONG = common dso_local global i64 0, align 8
@.str.91 = private unnamed_addr constant [21 x i8] c"Bad ! modifier: '%c'\00", align 1
@ERR_BADBANGMOD = common dso_local global i64 0, align 8
@.str.92 = private unnamed_addr constant [16 x i8] c"Modifier failed\00", align 1
@ERR_MODFAIL = common dso_local global i64 0, align 8
@.str.93 = private unnamed_addr constant [29 x i8] c"Substitution buffer overflow\00", align 1
@ERR_SUBOVFL = common dso_local global i64 0, align 8
@.str.94 = private unnamed_addr constant [19 x i8] c"Bad ! arg selector\00", align 1
@ERR_BADBANGARG = common dso_local global i64 0, align 8
@.str.95 = private unnamed_addr constant [15 x i8] c"No prev search\00", align 1
@ERR_NOSEARCH = common dso_local global i64 0, align 8
@.str.96 = private unnamed_addr constant [20 x i8] c"%s: Event not found\00", align 1
@ERR_NOEVENT = common dso_local global i64 0, align 8
@.str.97 = private unnamed_addr constant [13 x i8] c"Too many )'s\00", align 1
@ERR_TOOMANYRP = common dso_local global i64 0, align 8
@.str.98 = private unnamed_addr constant [13 x i8] c"Too many ('s\00", align 1
@ERR_TOOMANYLP = common dso_local global i64 0, align 8
@.str.99 = private unnamed_addr constant [15 x i8] c"Badly placed (\00", align 1
@ERR_BADPLP = common dso_local global i64 0, align 8
@.str.100 = private unnamed_addr constant [26 x i8] c"Missing name for redirect\00", align 1
@ERR_MISRED = common dso_local global i64 0, align 8
@.str.101 = private unnamed_addr constant [26 x i8] c"Ambiguous output redirect\00", align 1
@ERR_OUTRED = common dso_local global i64 0, align 8
@.str.102 = private unnamed_addr constant [21 x i8] c"Can't << within ()'s\00", align 1
@ERR_REDPAR = common dso_local global i64 0, align 8
@.str.103 = private unnamed_addr constant [25 x i8] c"Ambiguous input redirect\00", align 1
@ERR_INRED = common dso_local global i64 0, align 8
@.str.104 = private unnamed_addr constant [18 x i8] c"Badly placed ()'s\00", align 1
@ERR_BADPLPS = common dso_local global i64 0, align 8
@.str.105 = private unnamed_addr constant [11 x i8] c"Alias loop\00", align 1
@ERR_ALIASLOOP = common dso_local global i64 0, align 8
@.str.106 = private unnamed_addr constant [23 x i8] c"No $watch variable set\00", align 1
@ERR_NOWATCH = common dso_local global i64 0, align 8
@.str.107 = private unnamed_addr constant [20 x i8] c"No scheduled events\00", align 1
@ERR_NOSCHED = common dso_local global i64 0, align 8
@.str.108 = private unnamed_addr constant [55 x i8] c"Usage: sched -<item#>.\0AUsage: sched [+]hh:mm <command>\00", align 1
@ERR_SCHEDUSAGE = common dso_local global i64 0, align 8
@.str.109 = private unnamed_addr constant [31 x i8] c"Not that many scheduled events\00", align 1
@ERR_SCHEDEV = common dso_local global i64 0, align 8
@.str.110 = private unnamed_addr constant [18 x i8] c"No command to run\00", align 1
@ERR_SCHEDCOM = common dso_local global i64 0, align 8
@.str.111 = private unnamed_addr constant [23 x i8] c"Invalid time for event\00", align 1
@ERR_SCHEDTIME = common dso_local global i64 0, align 8
@.str.112 = private unnamed_addr constant [38 x i8] c"Relative time inconsistent with am/pm\00", align 1
@ERR_SCHEDREL = common dso_local global i64 0, align 8
@.str.113 = private unnamed_addr constant [28 x i8] c"Out of termcap string space\00", align 1
@ERR_TCNOSTR = common dso_local global i64 0, align 8
@.str.114 = private unnamed_addr constant [25 x i8] c"Usage: settc %s [yes|no]\00", align 1
@ERR_SETTCUS = common dso_local global i64 0, align 8
@.str.115 = private unnamed_addr constant [24 x i8] c"Unknown capability `%s'\00", align 1
@ERR_TCCAP = common dso_local global i64 0, align 8
@.str.116 = private unnamed_addr constant [33 x i8] c"Unknown termcap parameter '%%%c'\00", align 1
@ERR_TCPARM = common dso_local global i64 0, align 8
@.str.117 = private unnamed_addr constant [33 x i8] c"Too many arguments for `%s' (%d)\00", align 1
@ERR_TCARGS = common dso_local global i64 0, align 8
@.str.118 = private unnamed_addr constant [27 x i8] c"`%s' requires %d arguments\00", align 1
@ERR_TCNARGS = common dso_local global i64 0, align 8
@.str.119 = private unnamed_addr constant [46 x i8] c"Usage: echotc [-v|-s] [<capability> [<args>]]\00", align 1
@ERR_TCUSAGE = common dso_local global i64 0, align 8
@.str.120 = private unnamed_addr constant [35 x i8] c"%s: %s. Binary file not executable\00", align 1
@ERR_ARCH = common dso_local global i64 0, align 8
@.str.121 = private unnamed_addr constant [16 x i8] c"!# History loop\00", align 1
@ERR_HISTLOOP = common dso_local global i64 0, align 8
@.str.122 = private unnamed_addr constant [23 x i8] c"Malformed file inquiry\00", align 1
@ERR_FILEINQ = common dso_local global i64 0, align 8
@.str.123 = private unnamed_addr constant [18 x i8] c"Selector overflow\00", align 1
@ERR_SELOVFL = common dso_local global i64 0, align 8
@.str.124 = private unnamed_addr constant [71 x i8] c"Unknown option: `-%s'\0AUsage: %s [ -bcdefilmnqstvVxX ] [ argument ... ]\00", align 1
@ERR_TCSHUSAGE = common dso_local global i64 0, align 8
@.str.125 = private unnamed_addr constant [26 x i8] c"\0AInvalid completion: \22%s\22\00", align 1
@ERR_COMPCOM = common dso_local global i64 0, align 8
@.str.126 = private unnamed_addr constant [18 x i8] c"\0AInvalid %s: '%c'\00", align 1
@ERR_COMPINV = common dso_local global i64 0, align 8
@.str.127 = private unnamed_addr constant [38 x i8] c"\0AMissing separator '%c' after %s \22%s\22\00", align 1
@ERR_COMPMIS = common dso_local global i64 0, align 8
@.str.128 = private unnamed_addr constant [21 x i8] c"\0AIncomplete %s: \22%s\22\00", align 1
@ERR_COMPINC = common dso_local global i64 0, align 8
@.str.129 = private unnamed_addr constant [23 x i8] c"No operand for -m flag\00", align 1
@ERR_MFLAG = common dso_local global i64 0, align 8
@.str.130 = private unnamed_addr constant [30 x i8] c"Usage: unlimit [-fh] [limits]\00", align 1
@ERR_ULIMUS = common dso_local global i64 0, align 8
@.str.131 = private unnamed_addr constant [17 x i8] c"$%S is read-only\00", align 1
@ERR_READONLY = common dso_local global i64 0, align 8
@.str.132 = private unnamed_addr constant [21 x i8] c"No such job (badjob)\00", align 1
@ERR_BADJOB = common dso_local global i64 0, align 8
@.str.133 = private unnamed_addr constant [32 x i8] c"Unknown colorls variable '%c%c'\00", align 1
@ERR_BADCOLORVAR = common dso_local global i64 0, align 8
@.str.134 = private unnamed_addr constant [23 x i8] c"Unexpected end of file\00", align 1
@ERR_EOF = common dso_local global i64 0, align 8
@NLS_MAXSET = common dso_local global i64 0, align 8
@NO_ERRORS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @errinit() #0 {
  %1 = call i64 @CSAVS(i32 1, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %2 = load i64*, i64** @elst, align 8
  %3 = load i64, i64* @ERR_SYNTAX, align 8
  %4 = getelementptr inbounds i64, i64* %2, i64 %3
  store i64 %1, i64* %4, align 8
  %5 = call i64 @CSAVS(i32 1, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i64*, i64** @elst, align 8
  %7 = load i64, i64* @ERR_NOTALLOWED, align 8
  %8 = getelementptr inbounds i64, i64* %6, i64 %7
  store i64 %5, i64* %8, align 8
  %9 = call i64 @CSAVS(i32 1, i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %10 = load i64*, i64** @elst, align 8
  %11 = load i64, i64* @ERR_WTOOLONG, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  store i64 %9, i64* %12, align 8
  %13 = call i64 @CSAVS(i32 1, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %14 = load i64*, i64** @elst, align 8
  %15 = load i64, i64* @ERR_LTOOLONG, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  store i64 %13, i64* %16, align 8
  %17 = call i64 @CSAVS(i32 1, i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %18 = load i64*, i64** @elst, align 8
  %19 = load i64, i64* @ERR_DOLZERO, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  store i64 %17, i64* %20, align 8
  %21 = call i64 @CSAVS(i32 1, i32 6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %22 = load i64*, i64** @elst, align 8
  %23 = load i64, i64* @ERR_INCBR, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64 %21, i64* %24, align 8
  %25 = call i64 @CSAVS(i32 1, i32 7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %26 = load i64*, i64** @elst, align 8
  %27 = load i64, i64* @ERR_EXPORD, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  store i64 %25, i64* %28, align 8
  %29 = call i64 @CSAVS(i32 1, i32 8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %30 = load i64*, i64** @elst, align 8
  %31 = load i64, i64* @ERR_BADMOD, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  store i64 %29, i64* %32, align 8
  %33 = call i64 @CSAVS(i32 1, i32 9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %34 = load i64*, i64** @elst, align 8
  %35 = load i64, i64* @ERR_SUBSCRIPT, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  store i64 %33, i64* %36, align 8
  %37 = call i64 @CSAVS(i32 1, i32 10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %38 = load i64*, i64** @elst, align 8
  %39 = load i64, i64* @ERR_BADNUM, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64 %37, i64* %40, align 8
  %41 = call i64 @CSAVS(i32 1, i32 11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %42 = load i64*, i64** @elst, align 8
  %43 = load i64, i64* @ERR_NOMORE, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  store i64 %41, i64* %44, align 8
  %45 = call i64 @CSAVS(i32 1, i32 12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %46 = load i64*, i64** @elst, align 8
  %47 = load i64, i64* @ERR_FILENAME, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  store i64 %45, i64* %48, align 8
  %49 = call i64 @CSAVS(i32 1, i32 13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %50 = load i64*, i64** @elst, align 8
  %51 = load i64, i64* @ERR_GLOB, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64 %49, i64* %52, align 8
  %53 = call i64 @CSAVS(i32 1, i32 14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %54 = load i64*, i64** @elst, align 8
  %55 = load i64, i64* @ERR_COMMAND, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  store i64 %53, i64* %56, align 8
  %57 = call i64 @CSAVS(i32 1, i32 15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %58 = load i64*, i64** @elst, align 8
  %59 = load i64, i64* @ERR_TOOFEW, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  store i64 %57, i64* %60, align 8
  %61 = call i64 @CSAVS(i32 1, i32 16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %62 = load i64*, i64** @elst, align 8
  %63 = load i64, i64* @ERR_TOOMANY, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 %61, i64* %64, align 8
  %65 = call i64 @CSAVS(i32 1, i32 17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %66 = load i64*, i64** @elst, align 8
  %67 = load i64, i64* @ERR_DANGER, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  store i64 %65, i64* %68, align 8
  %69 = call i64 @CSAVS(i32 1, i32 18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %70 = load i64*, i64** @elst, align 8
  %71 = load i64, i64* @ERR_EMPTYIF, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  store i64 %69, i64* %72, align 8
  %73 = call i64 @CSAVS(i32 1, i32 19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  %74 = load i64*, i64** @elst, align 8
  %75 = load i64, i64* @ERR_IMPRTHEN, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  store i64 %73, i64* %76, align 8
  %77 = call i64 @CSAVS(i32 1, i32 20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0))
  %78 = load i64*, i64** @elst, align 8
  %79 = load i64, i64* @ERR_NOPAREN, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  store i64 %77, i64* %80, align 8
  %81 = call i64 @CSAVS(i32 1, i32 21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  %82 = load i64*, i64** @elst, align 8
  %83 = load i64, i64* @ERR_NOTFOUND, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  store i64 %81, i64* %84, align 8
  %85 = call i64 @CSAVS(i32 1, i32 22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0))
  %86 = load i64*, i64** @elst, align 8
  %87 = load i64, i64* @ERR_MASK, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  store i64 %85, i64* %88, align 8
  %89 = call i64 @CSAVS(i32 1, i32 23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  %90 = load i64*, i64** @elst, align 8
  %91 = load i64, i64* @ERR_LIMIT, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  store i64 %89, i64* %92, align 8
  %93 = call i64 @CSAVS(i32 1, i32 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0))
  %94 = load i64*, i64** @elst, align 8
  %95 = load i64, i64* @ERR_TOOLARGE, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  store i64 %93, i64* %96, align 8
  %97 = call i64 @CSAVS(i32 1, i32 25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0))
  %98 = load i64*, i64** @elst, align 8
  %99 = load i64, i64* @ERR_SCALEF, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  store i64 %97, i64* %100, align 8
  %101 = call i64 @CSAVS(i32 1, i32 26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  %102 = load i64*, i64** @elst, align 8
  %103 = load i64, i64* @ERR_UNDVAR, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  store i64 %101, i64* %104, align 8
  %105 = call i64 @CSAVS(i32 1, i32 27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i64 0, i64 0))
  %106 = load i64*, i64** @elst, align 8
  %107 = load i64, i64* @ERR_DEEP, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  store i64 %105, i64* %108, align 8
  %109 = call i64 @CSAVS(i32 1, i32 28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0))
  %110 = load i64*, i64** @elst, align 8
  %111 = load i64, i64* @ERR_BADSIG, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  store i64 %109, i64* %112, align 8
  %113 = call i64 @CSAVS(i32 1, i32 29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i64 0, i64 0))
  %114 = load i64*, i64** @elst, align 8
  %115 = load i64, i64* @ERR_UNKSIG, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  store i64 %113, i64* %116, align 8
  %117 = call i64 @CSAVS(i32 1, i32 30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0))
  %118 = load i64*, i64** @elst, align 8
  %119 = load i64, i64* @ERR_VARBEGIN, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  store i64 %117, i64* %120, align 8
  %121 = call i64 @CSAVS(i32 1, i32 31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0))
  %122 = load i64*, i64** @elst, align 8
  %123 = load i64, i64* @ERR_VARTOOLONG, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  store i64 %121, i64* %124, align 8
  %125 = call i64 @CSAVS(i32 1, i32 32, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i64 0, i64 0))
  %126 = load i64*, i64** @elst, align 8
  %127 = load i64, i64* @ERR_VARALNUM, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  store i64 %125, i64* %128, align 8
  %129 = call i64 @CSAVS(i32 1, i32 33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i64 0, i64 0))
  %130 = load i64*, i64** @elst, align 8
  %131 = load i64, i64* @ERR_JOBCONTROL, align 8
  %132 = getelementptr inbounds i64, i64* %130, i64 %131
  store i64 %129, i64* %132, align 8
  %133 = call i64 @CSAVS(i32 1, i32 34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0))
  %134 = load i64*, i64** @elst, align 8
  %135 = load i64, i64* @ERR_EXPRESSION, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  store i64 %133, i64* %136, align 8
  %137 = call i64 @CSAVS(i32 1, i32 35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0))
  %138 = load i64*, i64** @elst, align 8
  %139 = load i64, i64* @ERR_NOHOMEDIR, align 8
  %140 = getelementptr inbounds i64, i64* %138, i64 %139
  store i64 %137, i64* %140, align 8
  %141 = call i64 @CSAVS(i32 1, i32 36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0))
  %142 = load i64*, i64** @elst, align 8
  %143 = load i64, i64* @ERR_CANTCHANGE, align 8
  %144 = getelementptr inbounds i64, i64* %142, i64 %143
  store i64 %141, i64* %144, align 8
  %145 = call i64 @CSAVS(i32 1, i32 37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i64 0, i64 0))
  %146 = load i64*, i64** @elst, align 8
  %147 = load i64, i64* @ERR_NULLCOM, align 8
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  store i64 %145, i64* %148, align 8
  %149 = call i64 @CSAVS(i32 1, i32 38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0))
  %150 = load i64*, i64** @elst, align 8
  %151 = load i64, i64* @ERR_ASSIGN, align 8
  %152 = getelementptr inbounds i64, i64* %150, i64 %151
  store i64 %149, i64* %152, align 8
  %153 = call i64 @CSAVS(i32 1, i32 39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0))
  %154 = load i64*, i64** @elst, align 8
  %155 = load i64, i64* @ERR_UNKNOWNOP, align 8
  %156 = getelementptr inbounds i64, i64* %154, i64 %155
  store i64 %153, i64* %156, align 8
  %157 = call i64 @CSAVS(i32 1, i32 40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0))
  %158 = load i64*, i64** @elst, align 8
  %159 = load i64, i64* @ERR_AMBIG, align 8
  %160 = getelementptr inbounds i64, i64* %158, i64 %159
  store i64 %157, i64* %160, align 8
  %161 = call i64 @CSAVS(i32 1, i32 41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i64 0, i64 0))
  %162 = load i64*, i64** @elst, align 8
  %163 = load i64, i64* @ERR_EXISTS, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  store i64 %161, i64* %164, align 8
  %165 = call i64 @CSAVS(i32 1, i32 42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i64 0, i64 0))
  %166 = load i64*, i64** @elst, align 8
  %167 = load i64, i64* @ERR_ARGC, align 8
  %168 = getelementptr inbounds i64, i64* %166, i64 %167
  store i64 %165, i64* %168, align 8
  %169 = call i64 @CSAVS(i32 1, i32 43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0))
  %170 = load i64*, i64** @elst, align 8
  %171 = load i64, i64* @ERR_INTR, align 8
  %172 = getelementptr inbounds i64, i64* %170, i64 %171
  store i64 %169, i64* %172, align 8
  %173 = call i64 @CSAVS(i32 1, i32 44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0))
  %174 = load i64*, i64** @elst, align 8
  %175 = load i64, i64* @ERR_RANGE, align 8
  %176 = getelementptr inbounds i64, i64* %174, i64 %175
  store i64 %173, i64* %176, align 8
  %177 = call i64 @CSAVS(i32 1, i32 45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0))
  %178 = load i64*, i64** @elst, align 8
  %179 = load i64, i64* @ERR_OVERFLOW, align 8
  %180 = getelementptr inbounds i64, i64* %178, i64 %179
  store i64 %177, i64* %180, align 8
  %181 = call i64 @CSAVS(i32 1, i32 46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0))
  %182 = load i64*, i64** @elst, align 8
  %183 = load i64, i64* @ERR_NOSUCHJOB, align 8
  %184 = getelementptr inbounds i64, i64* %182, i64 %183
  store i64 %181, i64* %184, align 8
  %185 = call i64 @CSAVS(i32 1, i32 47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i64 0, i64 0))
  %186 = load i64*, i64** @elst, align 8
  %187 = load i64, i64* @ERR_TERMINAL, align 8
  %188 = getelementptr inbounds i64, i64* %186, i64 %187
  store i64 %185, i64* %188, align 8
  %189 = call i64 @CSAVS(i32 1, i32 48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0))
  %190 = load i64*, i64** @elst, align 8
  %191 = load i64, i64* @ERR_NOTWHILE, align 8
  %192 = getelementptr inbounds i64, i64* %190, i64 %191
  store i64 %189, i64* %192, align 8
  %193 = call i64 @CSAVS(i32 1, i32 49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i64 0, i64 0))
  %194 = load i64*, i64** @elst, align 8
  %195 = load i64, i64* @ERR_NOPROC, align 8
  %196 = getelementptr inbounds i64, i64* %194, i64 %195
  store i64 %193, i64* %196, align 8
  %197 = call i64 @CSAVS(i32 1, i32 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0))
  %198 = load i64*, i64** @elst, align 8
  %199 = load i64, i64* @ERR_NOMATCH, align 8
  %200 = getelementptr inbounds i64, i64* %198, i64 %199
  store i64 %197, i64* %200, align 8
  %201 = call i64 @CSAVS(i32 1, i32 51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i64 0, i64 0))
  %202 = load i64*, i64** @elst, align 8
  %203 = load i64, i64* @ERR_MISSING, align 8
  %204 = getelementptr inbounds i64, i64* %202, i64 %203
  store i64 %201, i64* %204, align 8
  %205 = call i64 @CSAVS(i32 1, i32 52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i64 0, i64 0))
  %206 = load i64*, i64** @elst, align 8
  %207 = load i64, i64* @ERR_UNMATCHED, align 8
  %208 = getelementptr inbounds i64, i64* %206, i64 %207
  store i64 %205, i64* %208, align 8
  %209 = call i64 @CSAVS(i32 1, i32 53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i64 0, i64 0))
  %210 = load i64*, i64** @elst, align 8
  %211 = load i64, i64* @ERR_NOMEM, align 8
  %212 = getelementptr inbounds i64, i64* %210, i64 %211
  store i64 %209, i64* %212, align 8
  %213 = call i64 @CSAVS(i32 1, i32 54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i64 0, i64 0))
  %214 = load i64*, i64** @elst, align 8
  %215 = load i64, i64* @ERR_PIPE, align 8
  %216 = getelementptr inbounds i64, i64* %214, i64 %215
  store i64 %213, i64* %216, align 8
  %217 = call i64 @CSAVS(i32 1, i32 55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0))
  %218 = load i64*, i64** @elst, align 8
  %219 = load i64, i64* @ERR_SYSTEM, align 8
  %220 = getelementptr inbounds i64, i64* %218, i64 %219
  store i64 %217, i64* %220, align 8
  %221 = call i64 @CSAVS(i32 1, i32 56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0))
  %222 = load i64*, i64** @elst, align 8
  %223 = load i64, i64* @ERR_STRING, align 8
  %224 = getelementptr inbounds i64, i64* %222, i64 %223
  store i64 %221, i64* %224, align 8
  %225 = call i64 @CSAVS(i32 1, i32 57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.56, i64 0, i64 0))
  %226 = load i64*, i64** @elst, align 8
  %227 = load i64, i64* @ERR_JOBS, align 8
  %228 = getelementptr inbounds i64, i64* %226, i64 %227
  store i64 %225, i64* %228, align 8
  %229 = call i64 @CSAVS(i32 1, i32 58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.57, i64 0, i64 0))
  %230 = load i64*, i64** @elst, align 8
  %231 = load i64, i64* @ERR_JOBARGS, align 8
  %232 = getelementptr inbounds i64, i64* %230, i64 %231
  store i64 %229, i64* %232, align 8
  %233 = call i64 @CSAVS(i32 1, i32 59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i64 0, i64 0))
  %234 = load i64*, i64** @elst, align 8
  %235 = load i64, i64* @ERR_JOBCUR, align 8
  %236 = getelementptr inbounds i64, i64* %234, i64 %235
  store i64 %233, i64* %236, align 8
  %237 = call i64 @CSAVS(i32 1, i32 60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i64 0, i64 0))
  %238 = load i64*, i64** @elst, align 8
  %239 = load i64, i64* @ERR_JOBPREV, align 8
  %240 = getelementptr inbounds i64, i64* %238, i64 %239
  store i64 %237, i64* %240, align 8
  %241 = call i64 @CSAVS(i32 1, i32 61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.60, i64 0, i64 0))
  %242 = load i64*, i64** @elst, align 8
  %243 = load i64, i64* @ERR_JOBPAT, align 8
  %244 = getelementptr inbounds i64, i64* %242, i64 %243
  store i64 %241, i64* %244, align 8
  %245 = call i64 @CSAVS(i32 1, i32 62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i64 0, i64 0))
  %246 = load i64*, i64** @elst, align 8
  %247 = load i64, i64* @ERR_NESTING, align 8
  %248 = getelementptr inbounds i64, i64* %246, i64 %247
  store i64 %245, i64* %248, align 8
  %249 = call i64 @CSAVS(i32 1, i32 63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.62, i64 0, i64 0))
  %250 = load i64*, i64** @elst, align 8
  %251 = load i64, i64* @ERR_JOBCTRLSUB, align 8
  %252 = getelementptr inbounds i64, i64* %250, i64 %251
  store i64 %249, i64* %252, align 8
  %253 = call i64 @CSAVS(i32 1, i32 64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.63, i64 0, i64 0))
  %254 = load i64*, i64** @elst, align 8
  %255 = load i64, i64* @ERR_SYNC, align 8
  %256 = getelementptr inbounds i64, i64* %254, i64 %255
  store i64 %253, i64* %256, align 8
  %257 = call i64 @CSAVS(i32 1, i32 66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.64, i64 0, i64 0))
  %258 = load i64*, i64** @elst, align 8
  %259 = load i64, i64* @ERR_STOPPED, align 8
  %260 = getelementptr inbounds i64, i64* %258, i64 %259
  store i64 %257, i64* %260, align 8
  %261 = call i64 @CSAVS(i32 1, i32 67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i64 0, i64 0))
  %262 = load i64*, i64** @elst, align 8
  %263 = load i64, i64* @ERR_NODIR, align 8
  %264 = getelementptr inbounds i64, i64* %262, i64 %263
  store i64 %261, i64* %264, align 8
  %265 = call i64 @CSAVS(i32 1, i32 68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i64 0, i64 0))
  %266 = load i64*, i64** @elst, align 8
  %267 = load i64, i64* @ERR_EMPTY, align 8
  %268 = getelementptr inbounds i64, i64* %266, i64 %267
  store i64 %265, i64* %268, align 8
  %269 = call i64 @CSAVS(i32 1, i32 69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i64 0, i64 0))
  %270 = load i64*, i64** @elst, align 8
  %271 = load i64, i64* @ERR_BADDIR, align 8
  %272 = getelementptr inbounds i64, i64* %270, i64 %271
  store i64 %269, i64* %272, align 8
  %273 = call i64 @CSAVS(i32 1, i32 70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i64 0, i64 0))
  %274 = load i64*, i64** @elst, align 8
  %275 = load i64, i64* @ERR_DIRUS, align 8
  %276 = getelementptr inbounds i64, i64* %274, i64 %275
  store i64 %273, i64* %276, align 8
  %277 = call i64 @CSAVS(i32 1, i32 71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.69, i64 0, i64 0))
  %278 = load i64*, i64** @elst, align 8
  %279 = load i64, i64* @ERR_HFLAG, align 8
  %280 = getelementptr inbounds i64, i64* %278, i64 %279
  store i64 %277, i64* %280, align 8
  %281 = call i64 @CSAVS(i32 1, i32 72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i64 0, i64 0))
  %282 = load i64*, i64** @elst, align 8
  %283 = load i64, i64* @ERR_NOTLOGIN, align 8
  %284 = getelementptr inbounds i64, i64* %282, i64 %283
  store i64 %281, i64* %284, align 8
  %285 = call i64 @CSAVS(i32 1, i32 73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.71, i64 0, i64 0))
  %286 = load i64*, i64** @elst, align 8
  %287 = load i64, i64* @ERR_DIV0, align 8
  %288 = getelementptr inbounds i64, i64* %286, i64 %287
  store i64 %285, i64* %288, align 8
  %289 = call i64 @CSAVS(i32 1, i32 74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i64 0, i64 0))
  %290 = load i64*, i64** @elst, align 8
  %291 = load i64, i64* @ERR_MOD0, align 8
  %292 = getelementptr inbounds i64, i64* %290, i64 %291
  store i64 %289, i64* %292, align 8
  %293 = call i64 @CSAVS(i32 1, i32 75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.73, i64 0, i64 0))
  %294 = load i64*, i64** @elst, align 8
  %295 = load i64, i64* @ERR_BADSCALE, align 8
  %296 = getelementptr inbounds i64, i64* %294, i64 %295
  store i64 %293, i64* %296, align 8
  %297 = call i64 @CSAVS(i32 1, i32 76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.74, i64 0, i64 0))
  %298 = load i64*, i64** @elst, align 8
  %299 = load i64, i64* @ERR_SUSPLOG, align 8
  %300 = getelementptr inbounds i64, i64* %298, i64 %299
  store i64 %297, i64* %300, align 8
  %301 = call i64 @CSAVS(i32 1, i32 77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.75, i64 0, i64 0))
  %302 = load i64*, i64** @elst, align 8
  %303 = load i64, i64* @ERR_UNKUSER, align 8
  %304 = getelementptr inbounds i64, i64* %302, i64 %303
  store i64 %301, i64* %304, align 8
  %305 = call i64 @CSAVS(i32 1, i32 78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.76, i64 0, i64 0))
  %306 = load i64*, i64** @elst, align 8
  %307 = load i64, i64* @ERR_NOHOME, align 8
  %308 = getelementptr inbounds i64, i64* %306, i64 %307
  store i64 %305, i64* %308, align 8
  %309 = call i64 @CSAVS(i32 1, i32 79, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.77, i64 0, i64 0))
  %310 = load i64*, i64** @elst, align 8
  %311 = load i64, i64* @ERR_HISTUS, align 8
  %312 = getelementptr inbounds i64, i64* %310, i64 %311
  store i64 %309, i64* %312, align 8
  %313 = call i64 @CSAVS(i32 1, i32 80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.78, i64 0, i64 0))
  %314 = load i64*, i64** @elst, align 8
  %315 = load i64, i64* @ERR_SPDOLLT, align 8
  %316 = getelementptr inbounds i64, i64* %314, i64 %315
  store i64 %313, i64* %316, align 8
  %317 = call i64 @CSAVS(i32 1, i32 81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.79, i64 0, i64 0))
  %318 = load i64*, i64** @elst, align 8
  %319 = load i64, i64* @ERR_NEWLINE, align 8
  %320 = getelementptr inbounds i64, i64* %318, i64 %319
  store i64 %317, i64* %320, align 8
  %321 = call i64 @CSAVS(i32 1, i32 82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.80, i64 0, i64 0))
  %322 = load i64*, i64** @elst, align 8
  %323 = load i64, i64* @ERR_SPSTAR, align 8
  %324 = getelementptr inbounds i64, i64* %322, i64 %323
  store i64 %321, i64* %324, align 8
  %325 = call i64 @CSAVS(i32 1, i32 83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.81, i64 0, i64 0))
  %326 = load i64*, i64** @elst, align 8
  %327 = load i64, i64* @ERR_DIGIT, align 8
  %328 = getelementptr inbounds i64, i64* %326, i64 %327
  store i64 %325, i64* %328, align 8
  %329 = call i64 @CSAVS(i32 1, i32 84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.82, i64 0, i64 0))
  %330 = load i64*, i64** @elst, align 8
  %331 = load i64, i64* @ERR_VARILL, align 8
  %332 = getelementptr inbounds i64, i64* %330, i64 %331
  store i64 %329, i64* %332, align 8
  %333 = call i64 @CSAVS(i32 1, i32 85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.83, i64 0, i64 0))
  %334 = load i64*, i64** @elst, align 8
  %335 = load i64, i64* @ERR_NLINDEX, align 8
  %336 = getelementptr inbounds i64, i64* %334, i64 %335
  store i64 %333, i64* %336, align 8
  %337 = call i64 @CSAVS(i32 1, i32 86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.84, i64 0, i64 0))
  %338 = load i64*, i64** @elst, align 8
  %339 = load i64, i64* @ERR_EXPOVFL, align 8
  %340 = getelementptr inbounds i64, i64* %338, i64 %339
  store i64 %337, i64* %340, align 8
  %341 = call i64 @CSAVS(i32 1, i32 87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.85, i64 0, i64 0))
  %342 = load i64*, i64** @elst, align 8
  %343 = load i64, i64* @ERR_VARSYN, align 8
  %344 = getelementptr inbounds i64, i64* %342, i64 %343
  store i64 %341, i64* %344, align 8
  %345 = call i64 @CSAVS(i32 1, i32 88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i64 0, i64 0))
  %346 = load i64*, i64** @elst, align 8
  %347 = load i64, i64* @ERR_BADBANG, align 8
  %348 = getelementptr inbounds i64, i64* %346, i64 %347
  store i64 %345, i64* %348, align 8
  %349 = call i64 @CSAVS(i32 1, i32 89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.87, i64 0, i64 0))
  %350 = load i64*, i64** @elst, align 8
  %351 = load i64, i64* @ERR_NOSUBST, align 8
  %352 = getelementptr inbounds i64, i64* %350, i64 %351
  store i64 %349, i64* %352, align 8
  %353 = call i64 @CSAVS(i32 1, i32 90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.88, i64 0, i64 0))
  %354 = load i64*, i64** @elst, align 8
  %355 = load i64, i64* @ERR_BADSUBST, align 8
  %356 = getelementptr inbounds i64, i64* %354, i64 %355
  store i64 %353, i64* %356, align 8
  %357 = call i64 @CSAVS(i32 1, i32 91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.89, i64 0, i64 0))
  %358 = load i64*, i64** @elst, align 8
  %359 = load i64, i64* @ERR_LHS, align 8
  %360 = getelementptr inbounds i64, i64* %358, i64 %359
  store i64 %357, i64* %360, align 8
  %361 = call i64 @CSAVS(i32 1, i32 92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.90, i64 0, i64 0))
  %362 = load i64*, i64** @elst, align 8
  %363 = load i64, i64* @ERR_RHSLONG, align 8
  %364 = getelementptr inbounds i64, i64* %362, i64 %363
  store i64 %361, i64* %364, align 8
  %365 = call i64 @CSAVS(i32 1, i32 93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.91, i64 0, i64 0))
  %366 = load i64*, i64** @elst, align 8
  %367 = load i64, i64* @ERR_BADBANGMOD, align 8
  %368 = getelementptr inbounds i64, i64* %366, i64 %367
  store i64 %365, i64* %368, align 8
  %369 = call i64 @CSAVS(i32 1, i32 94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.92, i64 0, i64 0))
  %370 = load i64*, i64** @elst, align 8
  %371 = load i64, i64* @ERR_MODFAIL, align 8
  %372 = getelementptr inbounds i64, i64* %370, i64 %371
  store i64 %369, i64* %372, align 8
  %373 = call i64 @CSAVS(i32 1, i32 95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.93, i64 0, i64 0))
  %374 = load i64*, i64** @elst, align 8
  %375 = load i64, i64* @ERR_SUBOVFL, align 8
  %376 = getelementptr inbounds i64, i64* %374, i64 %375
  store i64 %373, i64* %376, align 8
  %377 = call i64 @CSAVS(i32 1, i32 96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.94, i64 0, i64 0))
  %378 = load i64*, i64** @elst, align 8
  %379 = load i64, i64* @ERR_BADBANGARG, align 8
  %380 = getelementptr inbounds i64, i64* %378, i64 %379
  store i64 %377, i64* %380, align 8
  %381 = call i64 @CSAVS(i32 1, i32 97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.95, i64 0, i64 0))
  %382 = load i64*, i64** @elst, align 8
  %383 = load i64, i64* @ERR_NOSEARCH, align 8
  %384 = getelementptr inbounds i64, i64* %382, i64 %383
  store i64 %381, i64* %384, align 8
  %385 = call i64 @CSAVS(i32 1, i32 98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.96, i64 0, i64 0))
  %386 = load i64*, i64** @elst, align 8
  %387 = load i64, i64* @ERR_NOEVENT, align 8
  %388 = getelementptr inbounds i64, i64* %386, i64 %387
  store i64 %385, i64* %388, align 8
  %389 = call i64 @CSAVS(i32 1, i32 99, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.97, i64 0, i64 0))
  %390 = load i64*, i64** @elst, align 8
  %391 = load i64, i64* @ERR_TOOMANYRP, align 8
  %392 = getelementptr inbounds i64, i64* %390, i64 %391
  store i64 %389, i64* %392, align 8
  %393 = call i64 @CSAVS(i32 1, i32 100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.98, i64 0, i64 0))
  %394 = load i64*, i64** @elst, align 8
  %395 = load i64, i64* @ERR_TOOMANYLP, align 8
  %396 = getelementptr inbounds i64, i64* %394, i64 %395
  store i64 %393, i64* %396, align 8
  %397 = call i64 @CSAVS(i32 1, i32 101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.99, i64 0, i64 0))
  %398 = load i64*, i64** @elst, align 8
  %399 = load i64, i64* @ERR_BADPLP, align 8
  %400 = getelementptr inbounds i64, i64* %398, i64 %399
  store i64 %397, i64* %400, align 8
  %401 = call i64 @CSAVS(i32 1, i32 102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.100, i64 0, i64 0))
  %402 = load i64*, i64** @elst, align 8
  %403 = load i64, i64* @ERR_MISRED, align 8
  %404 = getelementptr inbounds i64, i64* %402, i64 %403
  store i64 %401, i64* %404, align 8
  %405 = call i64 @CSAVS(i32 1, i32 103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.101, i64 0, i64 0))
  %406 = load i64*, i64** @elst, align 8
  %407 = load i64, i64* @ERR_OUTRED, align 8
  %408 = getelementptr inbounds i64, i64* %406, i64 %407
  store i64 %405, i64* %408, align 8
  %409 = call i64 @CSAVS(i32 1, i32 104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.102, i64 0, i64 0))
  %410 = load i64*, i64** @elst, align 8
  %411 = load i64, i64* @ERR_REDPAR, align 8
  %412 = getelementptr inbounds i64, i64* %410, i64 %411
  store i64 %409, i64* %412, align 8
  %413 = call i64 @CSAVS(i32 1, i32 105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.103, i64 0, i64 0))
  %414 = load i64*, i64** @elst, align 8
  %415 = load i64, i64* @ERR_INRED, align 8
  %416 = getelementptr inbounds i64, i64* %414, i64 %415
  store i64 %413, i64* %416, align 8
  %417 = call i64 @CSAVS(i32 1, i32 106, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.104, i64 0, i64 0))
  %418 = load i64*, i64** @elst, align 8
  %419 = load i64, i64* @ERR_BADPLPS, align 8
  %420 = getelementptr inbounds i64, i64* %418, i64 %419
  store i64 %417, i64* %420, align 8
  %421 = call i64 @CSAVS(i32 1, i32 107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i64 0, i64 0))
  %422 = load i64*, i64** @elst, align 8
  %423 = load i64, i64* @ERR_ALIASLOOP, align 8
  %424 = getelementptr inbounds i64, i64* %422, i64 %423
  store i64 %421, i64* %424, align 8
  %425 = call i64 @CSAVS(i32 1, i32 108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.106, i64 0, i64 0))
  %426 = load i64*, i64** @elst, align 8
  %427 = load i64, i64* @ERR_NOWATCH, align 8
  %428 = getelementptr inbounds i64, i64* %426, i64 %427
  store i64 %425, i64* %428, align 8
  %429 = call i64 @CSAVS(i32 1, i32 109, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.107, i64 0, i64 0))
  %430 = load i64*, i64** @elst, align 8
  %431 = load i64, i64* @ERR_NOSCHED, align 8
  %432 = getelementptr inbounds i64, i64* %430, i64 %431
  store i64 %429, i64* %432, align 8
  %433 = call i64 @CSAVS(i32 1, i32 110, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.108, i64 0, i64 0))
  %434 = load i64*, i64** @elst, align 8
  %435 = load i64, i64* @ERR_SCHEDUSAGE, align 8
  %436 = getelementptr inbounds i64, i64* %434, i64 %435
  store i64 %433, i64* %436, align 8
  %437 = call i64 @CSAVS(i32 1, i32 111, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.109, i64 0, i64 0))
  %438 = load i64*, i64** @elst, align 8
  %439 = load i64, i64* @ERR_SCHEDEV, align 8
  %440 = getelementptr inbounds i64, i64* %438, i64 %439
  store i64 %437, i64* %440, align 8
  %441 = call i64 @CSAVS(i32 1, i32 112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.110, i64 0, i64 0))
  %442 = load i64*, i64** @elst, align 8
  %443 = load i64, i64* @ERR_SCHEDCOM, align 8
  %444 = getelementptr inbounds i64, i64* %442, i64 %443
  store i64 %441, i64* %444, align 8
  %445 = call i64 @CSAVS(i32 1, i32 113, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.111, i64 0, i64 0))
  %446 = load i64*, i64** @elst, align 8
  %447 = load i64, i64* @ERR_SCHEDTIME, align 8
  %448 = getelementptr inbounds i64, i64* %446, i64 %447
  store i64 %445, i64* %448, align 8
  %449 = call i64 @CSAVS(i32 1, i32 114, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.112, i64 0, i64 0))
  %450 = load i64*, i64** @elst, align 8
  %451 = load i64, i64* @ERR_SCHEDREL, align 8
  %452 = getelementptr inbounds i64, i64* %450, i64 %451
  store i64 %449, i64* %452, align 8
  %453 = call i64 @CSAVS(i32 1, i32 115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.113, i64 0, i64 0))
  %454 = load i64*, i64** @elst, align 8
  %455 = load i64, i64* @ERR_TCNOSTR, align 8
  %456 = getelementptr inbounds i64, i64* %454, i64 %455
  store i64 %453, i64* %456, align 8
  %457 = call i64 @CSAVS(i32 1, i32 116, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i64 0, i64 0))
  %458 = load i64*, i64** @elst, align 8
  %459 = load i64, i64* @ERR_SETTCUS, align 8
  %460 = getelementptr inbounds i64, i64* %458, i64 %459
  store i64 %457, i64* %460, align 8
  %461 = call i64 @CSAVS(i32 1, i32 117, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.115, i64 0, i64 0))
  %462 = load i64*, i64** @elst, align 8
  %463 = load i64, i64* @ERR_TCCAP, align 8
  %464 = getelementptr inbounds i64, i64* %462, i64 %463
  store i64 %461, i64* %464, align 8
  %465 = call i64 @CSAVS(i32 1, i32 118, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.116, i64 0, i64 0))
  %466 = load i64*, i64** @elst, align 8
  %467 = load i64, i64* @ERR_TCPARM, align 8
  %468 = getelementptr inbounds i64, i64* %466, i64 %467
  store i64 %465, i64* %468, align 8
  %469 = call i64 @CSAVS(i32 1, i32 119, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.117, i64 0, i64 0))
  %470 = load i64*, i64** @elst, align 8
  %471 = load i64, i64* @ERR_TCARGS, align 8
  %472 = getelementptr inbounds i64, i64* %470, i64 %471
  store i64 %469, i64* %472, align 8
  %473 = call i64 @CSAVS(i32 1, i32 120, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.118, i64 0, i64 0))
  %474 = load i64*, i64** @elst, align 8
  %475 = load i64, i64* @ERR_TCNARGS, align 8
  %476 = getelementptr inbounds i64, i64* %474, i64 %475
  store i64 %473, i64* %476, align 8
  %477 = call i64 @CSAVS(i32 1, i32 121, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.119, i64 0, i64 0))
  %478 = load i64*, i64** @elst, align 8
  %479 = load i64, i64* @ERR_TCUSAGE, align 8
  %480 = getelementptr inbounds i64, i64* %478, i64 %479
  store i64 %477, i64* %480, align 8
  %481 = call i64 @CSAVS(i32 1, i32 122, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.120, i64 0, i64 0))
  %482 = load i64*, i64** @elst, align 8
  %483 = load i64, i64* @ERR_ARCH, align 8
  %484 = getelementptr inbounds i64, i64* %482, i64 %483
  store i64 %481, i64* %484, align 8
  %485 = call i64 @CSAVS(i32 1, i32 123, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.121, i64 0, i64 0))
  %486 = load i64*, i64** @elst, align 8
  %487 = load i64, i64* @ERR_HISTLOOP, align 8
  %488 = getelementptr inbounds i64, i64* %486, i64 %487
  store i64 %485, i64* %488, align 8
  %489 = call i64 @CSAVS(i32 1, i32 124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.122, i64 0, i64 0))
  %490 = load i64*, i64** @elst, align 8
  %491 = load i64, i64* @ERR_FILEINQ, align 8
  %492 = getelementptr inbounds i64, i64* %490, i64 %491
  store i64 %489, i64* %492, align 8
  %493 = call i64 @CSAVS(i32 1, i32 125, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.123, i64 0, i64 0))
  %494 = load i64*, i64** @elst, align 8
  %495 = load i64, i64* @ERR_SELOVFL, align 8
  %496 = getelementptr inbounds i64, i64* %494, i64 %495
  store i64 %493, i64* %496, align 8
  %497 = call i64 @CSAVS(i32 1, i32 128, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.124, i64 0, i64 0))
  %498 = load i64*, i64** @elst, align 8
  %499 = load i64, i64* @ERR_TCSHUSAGE, align 8
  %500 = getelementptr inbounds i64, i64* %498, i64 %499
  store i64 %497, i64* %500, align 8
  %501 = call i64 @CSAVS(i32 1, i32 129, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.125, i64 0, i64 0))
  %502 = load i64*, i64** @elst, align 8
  %503 = load i64, i64* @ERR_COMPCOM, align 8
  %504 = getelementptr inbounds i64, i64* %502, i64 %503
  store i64 %501, i64* %504, align 8
  %505 = call i64 @CSAVS(i32 1, i32 130, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.126, i64 0, i64 0))
  %506 = load i64*, i64** @elst, align 8
  %507 = load i64, i64* @ERR_COMPINV, align 8
  %508 = getelementptr inbounds i64, i64* %506, i64 %507
  store i64 %505, i64* %508, align 8
  %509 = call i64 @CSAVS(i32 1, i32 131, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.127, i64 0, i64 0))
  %510 = load i64*, i64** @elst, align 8
  %511 = load i64, i64* @ERR_COMPMIS, align 8
  %512 = getelementptr inbounds i64, i64* %510, i64 %511
  store i64 %509, i64* %512, align 8
  %513 = call i64 @CSAVS(i32 1, i32 132, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.128, i64 0, i64 0))
  %514 = load i64*, i64** @elst, align 8
  %515 = load i64, i64* @ERR_COMPINC, align 8
  %516 = getelementptr inbounds i64, i64* %514, i64 %515
  store i64 %513, i64* %516, align 8
  %517 = call i64 @CSAVS(i32 1, i32 133, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.129, i64 0, i64 0))
  %518 = load i64*, i64** @elst, align 8
  %519 = load i64, i64* @ERR_MFLAG, align 8
  %520 = getelementptr inbounds i64, i64* %518, i64 %519
  store i64 %517, i64* %520, align 8
  %521 = call i64 @CSAVS(i32 1, i32 134, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.130, i64 0, i64 0))
  %522 = load i64*, i64** @elst, align 8
  %523 = load i64, i64* @ERR_ULIMUS, align 8
  %524 = getelementptr inbounds i64, i64* %522, i64 %523
  store i64 %521, i64* %524, align 8
  %525 = call i64 @CSAVS(i32 1, i32 135, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.131, i64 0, i64 0))
  %526 = load i64*, i64** @elst, align 8
  %527 = load i64, i64* @ERR_READONLY, align 8
  %528 = getelementptr inbounds i64, i64* %526, i64 %527
  store i64 %525, i64* %528, align 8
  %529 = call i64 @CSAVS(i32 1, i32 136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.132, i64 0, i64 0))
  %530 = load i64*, i64** @elst, align 8
  %531 = load i64, i64* @ERR_BADJOB, align 8
  %532 = getelementptr inbounds i64, i64* %530, i64 %531
  store i64 %529, i64* %532, align 8
  %533 = call i64 @CSAVS(i32 1, i32 137, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.133, i64 0, i64 0))
  %534 = load i64*, i64** @elst, align 8
  %535 = load i64, i64* @ERR_BADCOLORVAR, align 8
  %536 = getelementptr inbounds i64, i64* %534, i64 %535
  store i64 %533, i64* %536, align 8
  %537 = call i64 @CSAVS(i32 1, i32 138, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.134, i64 0, i64 0))
  %538 = load i64*, i64** @elst, align 8
  %539 = load i64, i64* @ERR_EOF, align 8
  %540 = getelementptr inbounds i64, i64* %538, i64 %539
  store i64 %537, i64* %540, align 8
  ret void
}

declare dso_local i64 @CSAVS(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

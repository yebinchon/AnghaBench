; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_print_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_print_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32 }
%struct.pf_rule = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i8*, i64, i32, i64, i32, i32, i32, i64, i32, i32*, double, i32, i32, i32, i32*, i32, i8*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_11__, %struct.TYPE_10__, i64, i64, %struct.TYPE_9__, i64, i64, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32*, i64 }
%struct.TYPE_7__ = type { i32*, i64 }
%struct.icmpcodeent = type { i8* }
%struct.protoent = type { i8* }
%struct.icmptypeent = type { i8* }

@print_rule.actiontypes = internal global [10 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"scrub\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"no scrub\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"nat\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"no nat\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"binat\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"no binat\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"rdr\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"no rdr\00", align 1
@print_rule.anchortypes = internal global [10 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0)], align 16
@.str.10 = private unnamed_addr constant [7 x i8] c"anchor\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"nat-anchor\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"binat-anchor\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"rdr-anchor\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"@%d \00", align 1
@PF_NORDR = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"action(%d)\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"%s \22%s\22\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c" pass\00", align 1
@PF_DROP = common dso_local global i64 0, align 8
@PFRULE_RETURN = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [8 x i8] c" return\00", align 1
@PFRULE_RETURNRST = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [12 x i8] c" return-rst\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c" return-rst(ttl %d)\00", align 1
@PFRULE_RETURNICMP = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [13 x i8] c" return-icmp\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"(%u)\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c" return-icmp6\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"(%u, \00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"(%s, \00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"%u)\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"%s)\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c" drop\00", align 1
@PF_IN = common dso_local global i64 0, align 8
@.str.31 = private unnamed_addr constant [4 x i8] c" in\00", align 1
@PF_OUT = common dso_local global i64 0, align 8
@.str.32 = private unnamed_addr constant [5 x i8] c" out\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c" log\00", align 1
@PF_LOG = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@PF_LOG_ALL = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [6 x i8] c"%sall\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.37 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PF_LOG_SOCKET_LOOKUP = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [7 x i8] c"%suser\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"%sto pflog%u\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c" quick\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c" on ! %s\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c" on %s\00", align 1
@PF_ROUTETO = common dso_local global i64 0, align 8
@.str.44 = private unnamed_addr constant [10 x i8] c" route-to\00", align 1
@PF_REPLYTO = common dso_local global i64 0, align 8
@.str.45 = private unnamed_addr constant [10 x i8] c" reply-to\00", align 1
@PF_DUPTO = common dso_local global i64 0, align 8
@.str.46 = private unnamed_addr constant [8 x i8] c" dup-to\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c" \00", align 1
@PF_PASS = common dso_local global i64 0, align 8
@.str.48 = private unnamed_addr constant [6 x i8] c" inet\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c" inet6\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c" proto %s\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c" proto %u\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@UID_MAX = common dso_local global i32 0, align 4
@.str.53 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@GID_MAX = common dso_local global i32 0, align 4
@.str.54 = private unnamed_addr constant [8 x i8] c" flags \00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@PFRULE_FRAGMENT = common dso_local global i32 0, align 4
@.str.56 = private unnamed_addr constant [11 x i8] c" flags any\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c" icmp-type\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c" icmp6-type\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c" code %s\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c" code %u\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c" tos 0x%2.2x\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c" prio %u\00", align 1
@PF_PRIO_ZERO = common dso_local global i64 0, align 8
@PFSTATE_SETMASK = common dso_local global i32 0, align 4
@.str.65 = private unnamed_addr constant [7 x i8] c" set (\00", align 1
@PFSTATE_SETPRIO = common dso_local global i32 0, align 4
@.str.66 = private unnamed_addr constant [11 x i8] c"%s prio %u\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"%s prio(%u, %u)\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c" )\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c" no state\00", align 1
@PF_STATE_NORMAL = common dso_local global i64 0, align 8
@.str.71 = private unnamed_addr constant [12 x i8] c" keep state\00", align 1
@PF_STATE_MODULATE = common dso_local global i64 0, align 8
@.str.72 = private unnamed_addr constant [16 x i8] c" modulate state\00", align 1
@PF_STATE_SYNPROXY = common dso_local global i64 0, align 8
@.str.73 = private unnamed_addr constant [16 x i8] c" synproxy state\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@UINT_MAX = common dso_local global double 0.000000e+00, align 8
@.str.75 = private unnamed_addr constant [18 x i8] c" probability %s%%\00", align 1
@PFRULE_NOSYNC = common dso_local global i32 0, align 4
@PFRULE_SRCTRACK = common dso_local global i32 0, align 4
@PFRULE_IFBOUND = common dso_local global i32 0, align 4
@PFRULE_STATESLOPPY = common dso_local global i32 0, align 4
@PFTM_MAX = common dso_local global i32 0, align 4
@.str.76 = private unnamed_addr constant [7 x i8] c"max %u\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"no-sync\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"source-track\00", align 1
@PFRULE_RULESRCTRACK = common dso_local global i32 0, align 4
@.str.79 = private unnamed_addr constant [6 x i8] c" rule\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c" global\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"max-src-states %u\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"max-src-conn %u\00", align 1
@.str.83 = private unnamed_addr constant [24 x i8] c"max-src-conn-rate %u/%u\00", align 1
@.str.84 = private unnamed_addr constant [17 x i8] c"max-src-nodes %u\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"overload <%s>\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c" flush\00", align 1
@PF_FLUSH_GLOBAL = common dso_local global i32 0, align 4
@.str.87 = private unnamed_addr constant [9 x i8] c"if-bound\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"sloppy\00", align 1
@pf_timeouts = common dso_local global %struct.TYPE_12__* null, align 8
@.str.89 = private unnamed_addr constant [6 x i8] c"%s %u\00", align 1
@.str.90 = private unnamed_addr constant [12 x i8] c"inv.timeout\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c" fragment\00", align 1
@PFRULE_NODF = common dso_local global i32 0, align 4
@.str.92 = private unnamed_addr constant [7 x i8] c" no-df\00", align 1
@PFRULE_RANDOMID = common dso_local global i32 0, align 4
@.str.93 = private unnamed_addr constant [11 x i8] c" random-id\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c" min-ttl %d\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c" max-mss %d\00", align 1
@PFRULE_SET_TOS = common dso_local global i32 0, align 4
@.str.96 = private unnamed_addr constant [17 x i8] c" set-tos 0x%2.2x\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c" allow-opts\00", align 1
@PF_SCRUB = common dso_local global i64 0, align 8
@PFRULE_REASSEMBLE_TCP = common dso_local global i32 0, align 4
@.str.98 = private unnamed_addr constant [16 x i8] c" reassemble tcp\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c" fragment reassemble\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c" label \22%s\22\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c" queue(%s, %s)\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c" queue %s\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c" tag %s\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c" !\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c" tagged %s\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c" rtable %u\00", align 1
@.str.107 = private unnamed_addr constant [14 x i8] c" divert-reply\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c" divert-to \00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c" port %u\00", align 1
@PF_NAT = common dso_local global i64 0, align 8
@PF_BINAT = common dso_local global i64 0, align 8
@PF_RDR = common dso_local global i64 0, align 8
@.str.111 = private unnamed_addr constant [5 x i8] c" -> \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_rule(%struct.pf_rule* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pf_rule*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.icmpcodeent*, align 8
  %12 = alloca %struct.icmpcodeent*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.protoent*, align 8
  %15 = alloca %struct.icmptypeent*, align 8
  %16 = alloca %struct.icmpcodeent*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca [20 x i8], align 16
  %19 = alloca i32, align 4
  %20 = alloca [48 x i8], align 16
  store %struct.pf_rule* %0, %struct.pf_rule** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %25 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %23, %4
  %29 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %30 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PF_NORDR, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %36 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 %37)
  br label %84

39:                                               ; preds = %28
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %39
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 95
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %52 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [10 x i8*], [10 x i8*]* @print_rule.anchortypes, i64 0, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* %56)
  br label %67

58:                                               ; preds = %44
  %59 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %60 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [10 x i8*], [10 x i8*]* @print_rule.anchortypes, i64 0, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* %64, i8* %65)
  br label %67

67:                                               ; preds = %58, %50
  br label %83

68:                                               ; preds = %39
  %69 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %70 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [10 x i8*], [10 x i8*]* @print_rule.actiontypes, i64 0, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* %74)
  %76 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %77 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %76, i32 0, i32 51
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %68
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %68
  br label %83

83:                                               ; preds = %82, %67
  br label %84

84:                                               ; preds = %83, %34
  %85 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %86 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* @PF_DROP, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %217

91:                                               ; preds = %84
  %92 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %93 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @PFRULE_RETURN, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  br label %216

100:                                              ; preds = %91
  %101 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %102 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @PFRULE_RETURNRST, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %100
  %108 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %109 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %107
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  br label %119

114:                                              ; preds = %107
  %115 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %116 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %114, %112
  br label %215

120:                                              ; preds = %100
  %121 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %122 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @PFRULE_RETURNICMP, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %212

127:                                              ; preds = %120
  %128 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %129 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = ashr i32 %130, 8
  %132 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %133 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, 255
  %136 = call %struct.icmpcodeent* @geticmpcodebynumber(i32 %131, i32 %135, i32 129)
  store %struct.icmpcodeent* %136, %struct.icmpcodeent** %11, align 8
  %137 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %138 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = ashr i32 %139, 8
  %141 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %142 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 255
  %145 = call %struct.icmpcodeent* @geticmpcodebynumber(i32 %140, i32 %144, i32 128)
  store %struct.icmpcodeent* %145, %struct.icmpcodeent** %12, align 8
  %146 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %147 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  switch i32 %148, label %181 [
    i32 129, label %149
    i32 128, label %165
  ]

149:                                              ; preds = %127
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  %151 = load %struct.icmpcodeent*, %struct.icmpcodeent** %11, align 8
  %152 = icmp eq %struct.icmpcodeent* %151, null
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  %154 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %155 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = and i32 %156, 255
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i32 %157)
  br label %164

159:                                              ; preds = %149
  %160 = load %struct.icmpcodeent*, %struct.icmpcodeent** %11, align 8
  %161 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* %162)
  br label %164

164:                                              ; preds = %159, %153
  br label %211

165:                                              ; preds = %127
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  %167 = load %struct.icmpcodeent*, %struct.icmpcodeent** %12, align 8
  %168 = icmp eq %struct.icmpcodeent* %167, null
  br i1 %168, label %169, label %175

169:                                              ; preds = %165
  %170 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %171 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, 255
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i32 %173)
  br label %180

175:                                              ; preds = %165
  %176 = load %struct.icmpcodeent*, %struct.icmpcodeent** %12, align 8
  %177 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* %178)
  br label %180

180:                                              ; preds = %175, %169
  br label %211

181:                                              ; preds = %127
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  %183 = load %struct.icmpcodeent*, %struct.icmpcodeent** %11, align 8
  %184 = icmp eq %struct.icmpcodeent* %183, null
  br i1 %184, label %185, label %191

185:                                              ; preds = %181
  %186 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %187 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = and i32 %188, 255
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i32 %189)
  br label %196

191:                                              ; preds = %181
  %192 = load %struct.icmpcodeent*, %struct.icmpcodeent** %11, align 8
  %193 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i8* %194)
  br label %196

196:                                              ; preds = %191, %185
  %197 = load %struct.icmpcodeent*, %struct.icmpcodeent** %12, align 8
  %198 = icmp eq %struct.icmpcodeent* %197, null
  br i1 %198, label %199, label %205

199:                                              ; preds = %196
  %200 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %201 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, 255
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i32 %203)
  br label %210

205:                                              ; preds = %196
  %206 = load %struct.icmpcodeent*, %struct.icmpcodeent** %12, align 8
  %207 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* %208)
  br label %210

210:                                              ; preds = %205, %199
  br label %211

211:                                              ; preds = %210, %180, %164
  br label %214

212:                                              ; preds = %120
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0))
  br label %214

214:                                              ; preds = %212, %211
  br label %215

215:                                              ; preds = %214, %119
  br label %216

216:                                              ; preds = %215, %98
  br label %217

217:                                              ; preds = %216, %84
  %218 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %219 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %218, i32 0, i32 7
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @PF_IN, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %217
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0))
  br label %234

225:                                              ; preds = %217
  %226 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %227 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %226, i32 0, i32 7
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @PF_OUT, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %225
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  br label %233

233:                                              ; preds = %231, %225
  br label %234

234:                                              ; preds = %233, %223
  %235 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %236 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %235, i32 0, i32 8
  %237 = load i32, i32* %236, align 8
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %300

239:                                              ; preds = %234
  %240 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  %241 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %242 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %241, i32 0, i32 8
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @PF_LOG, align 4
  %245 = xor i32 %244, -1
  %246 = and i32 %243, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %253, label %248

248:                                              ; preds = %239
  %249 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %250 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %249, i32 0, i32 9
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %299

253:                                              ; preds = %248, %239
  store i32 0, i32* %13, align 4
  %254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0))
  %255 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %256 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %255, i32 0, i32 8
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @PF_LOG_ALL, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %253
  %262 = load i32, i32* %13, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %13, align 4
  %264 = icmp ne i32 %262, 0
  %265 = zext i1 %264 to i64
  %266 = select i1 %264, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i64 0, i64 0)
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i8* %266)
  br label %268

268:                                              ; preds = %261, %253
  %269 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %270 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %269, i32 0, i32 8
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @PF_LOG_SOCKET_LOOKUP, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %282

275:                                              ; preds = %268
  %276 = load i32, i32* %13, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %13, align 4
  %278 = icmp ne i32 %276, 0
  %279 = zext i1 %278 to i64
  %280 = select i1 %278, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i64 0, i64 0)
  %281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i8* %280)
  br label %282

282:                                              ; preds = %275, %268
  %283 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %284 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %283, i32 0, i32 9
  %285 = load i32, i32* %284, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %297

287:                                              ; preds = %282
  %288 = load i32, i32* %13, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %13, align 4
  %290 = icmp ne i32 %288, 0
  %291 = zext i1 %290 to i64
  %292 = select i1 %290, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i64 0, i64 0)
  %293 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %294 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %293, i32 0, i32 9
  %295 = load i32, i32* %294, align 4
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i8* %292, i32 %295)
  br label %297

297:                                              ; preds = %287, %282
  %298 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  br label %299

299:                                              ; preds = %297, %248
  br label %300

300:                                              ; preds = %299, %234
  %301 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %302 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %301, i32 0, i32 50
  %303 = load i64, i64* %302, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %300
  %306 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0))
  br label %307

307:                                              ; preds = %305, %300
  %308 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %309 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %308, i32 0, i32 10
  %310 = load i8*, i8** %309, align 8
  %311 = getelementptr inbounds i8, i8* %310, i64 0
  %312 = load i8, i8* %311, align 1
  %313 = icmp ne i8 %312, 0
  br i1 %313, label %314, label %330

314:                                              ; preds = %307
  %315 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %316 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %315, i32 0, i32 49
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %314
  %320 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %321 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %320, i32 0, i32 10
  %322 = load i8*, i8** %321, align 8
  %323 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0), i8* %322)
  br label %329

324:                                              ; preds = %314
  %325 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %326 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %325, i32 0, i32 10
  %327 = load i8*, i8** %326, align 8
  %328 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i8* %327)
  br label %329

329:                                              ; preds = %324, %319
  br label %330

330:                                              ; preds = %329, %307
  %331 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %332 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %331, i32 0, i32 11
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %370

335:                                              ; preds = %330
  %336 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %337 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %336, i32 0, i32 11
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* @PF_ROUTETO, align 8
  %340 = icmp eq i64 %338, %339
  br i1 %340, label %341, label %343

341:                                              ; preds = %335
  %342 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0))
  br label %361

343:                                              ; preds = %335
  %344 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %345 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %344, i32 0, i32 11
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @PF_REPLYTO, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %349, label %351

349:                                              ; preds = %343
  %350 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i64 0, i64 0))
  br label %360

351:                                              ; preds = %343
  %352 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %353 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %352, i32 0, i32 11
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @PF_DUPTO, align 8
  %356 = icmp eq i64 %354, %355
  br i1 %356, label %357, label %359

357:                                              ; preds = %351
  %358 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0))
  br label %359

359:                                              ; preds = %357, %351
  br label %360

360:                                              ; preds = %359, %349
  br label %361

361:                                              ; preds = %360, %341
  %362 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0))
  %363 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %364 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %363, i32 0, i32 37
  %365 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %366 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %365, i32 0, i32 6
  %367 = load i32, i32* %366, align 8
  %368 = load i64, i64* @PF_PASS, align 8
  %369 = call i32 @print_pool(%struct.TYPE_11__* %364, i32 0, i32 0, i32 %367, i64 %368)
  br label %370

370:                                              ; preds = %361, %330
  %371 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %372 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %371, i32 0, i32 6
  %373 = load i32, i32* %372, align 8
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %385

375:                                              ; preds = %370
  %376 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %377 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %376, i32 0, i32 6
  %378 = load i32, i32* %377, align 8
  %379 = icmp eq i32 %378, 129
  br i1 %379, label %380, label %382

380:                                              ; preds = %375
  %381 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0))
  br label %384

382:                                              ; preds = %375
  %383 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0))
  br label %384

384:                                              ; preds = %382, %380
  br label %385

385:                                              ; preds = %384, %370
  %386 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %387 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %386, i32 0, i32 12
  %388 = load i32, i32* %387, align 8
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %407

390:                                              ; preds = %385
  %391 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %392 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %391, i32 0, i32 12
  %393 = load i32, i32* %392, align 8
  %394 = call %struct.protoent* @getprotobynumber(i32 %393)
  store %struct.protoent* %394, %struct.protoent** %14, align 8
  %395 = icmp ne %struct.protoent* %394, null
  br i1 %395, label %396, label %401

396:                                              ; preds = %390
  %397 = load %struct.protoent*, %struct.protoent** %14, align 8
  %398 = getelementptr inbounds %struct.protoent, %struct.protoent* %397, i32 0, i32 0
  %399 = load i8*, i8** %398, align 8
  %400 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i64 0, i64 0), i8* %399)
  br label %406

401:                                              ; preds = %390
  %402 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %403 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %402, i32 0, i32 12
  %404 = load i32, i32* %403, align 8
  %405 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0), i32 %404)
  br label %406

406:                                              ; preds = %401, %396
  br label %407

407:                                              ; preds = %406, %385
  %408 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %409 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %408, i32 0, i32 48
  %410 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %411 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %410, i32 0, i32 47
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %414 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %413, i32 0, i32 46
  %415 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %416 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %415, i32 0, i32 6
  %417 = load i32, i32* %416, align 8
  %418 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %419 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %418, i32 0, i32 12
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* %7, align 4
  %422 = load i32, i32* %8, align 4
  %423 = call i32 @print_fromto(i32* %409, i32 %412, i32* %414, i32 %417, i32 %420, i32 %421, i32 %422)
  %424 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %425 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %424, i32 0, i32 45
  %426 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %425, i32 0, i32 1
  %427 = load i64, i64* %426, align 8
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %448

429:                                              ; preds = %407
  %430 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %431 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %430, i32 0, i32 45
  %432 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %431, i32 0, i32 1
  %433 = load i64, i64* %432, align 8
  %434 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %435 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %434, i32 0, i32 45
  %436 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %435, i32 0, i32 0
  %437 = load i32*, i32** %436, align 8
  %438 = getelementptr inbounds i32, i32* %437, i64 0
  %439 = load i32, i32* %438, align 4
  %440 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %441 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %440, i32 0, i32 45
  %442 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %441, i32 0, i32 0
  %443 = load i32*, i32** %442, align 8
  %444 = getelementptr inbounds i32, i32* %443, i64 1
  %445 = load i32, i32* %444, align 4
  %446 = load i32, i32* @UID_MAX, align 4
  %447 = call i32 @print_ugid(i64 %433, i32 %439, i32 %445, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i32 %446)
  br label %448

448:                                              ; preds = %429, %407
  %449 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %450 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %449, i32 0, i32 44
  %451 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %450, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %473

454:                                              ; preds = %448
  %455 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %456 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %455, i32 0, i32 44
  %457 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %456, i32 0, i32 1
  %458 = load i64, i64* %457, align 8
  %459 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %460 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %459, i32 0, i32 44
  %461 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %460, i32 0, i32 0
  %462 = load i32*, i32** %461, align 8
  %463 = getelementptr inbounds i32, i32* %462, i64 0
  %464 = load i32, i32* %463, align 4
  %465 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %466 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %465, i32 0, i32 44
  %467 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %466, i32 0, i32 0
  %468 = load i32*, i32** %467, align 8
  %469 = getelementptr inbounds i32, i32* %468, i64 1
  %470 = load i32, i32* %469, align 4
  %471 = load i32, i32* @GID_MAX, align 4
  %472 = call i32 @print_ugid(i64 %458, i32 %464, i32 %470, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0), i32 %471)
  br label %473

473:                                              ; preds = %454, %448
  %474 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %475 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %474, i32 0, i32 43
  %476 = load i64, i64* %475, align 8
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %483, label %478

478:                                              ; preds = %473
  %479 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %480 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %479, i32 0, i32 42
  %481 = load i64, i64* %480, align 8
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %494

483:                                              ; preds = %478, %473
  %484 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0))
  %485 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %486 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %485, i32 0, i32 43
  %487 = load i64, i64* %486, align 8
  %488 = call i32 @print_flags(i64 %487)
  %489 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0))
  %490 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %491 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %490, i32 0, i32 42
  %492 = load i64, i64* %491, align 8
  %493 = call i32 @print_flags(i64 %492)
  br label %532

494:                                              ; preds = %478
  %495 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %496 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %495, i32 0, i32 1
  %497 = load i32, i32* %496, align 4
  %498 = sext i32 %497 to i64
  %499 = load i64, i64* @PF_PASS, align 8
  %500 = icmp eq i64 %498, %499
  br i1 %500, label %501, label %531

501:                                              ; preds = %494
  %502 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %503 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %502, i32 0, i32 12
  %504 = load i32, i32* %503, align 8
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %512

506:                                              ; preds = %501
  %507 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %508 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %507, i32 0, i32 12
  %509 = load i32, i32* %508, align 8
  %510 = load i32, i32* @IPPROTO_TCP, align 4
  %511 = icmp eq i32 %509, %510
  br i1 %511, label %512, label %531

512:                                              ; preds = %506, %501
  %513 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %514 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %513, i32 0, i32 2
  %515 = load i32, i32* %514, align 8
  %516 = load i32, i32* @PFRULE_FRAGMENT, align 4
  %517 = and i32 %515, %516
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %531, label %519

519:                                              ; preds = %512
  %520 = load i8*, i8** %6, align 8
  %521 = getelementptr inbounds i8, i8* %520, i64 0
  %522 = load i8, i8* %521, align 1
  %523 = icmp ne i8 %522, 0
  br i1 %523, label %531, label %524

524:                                              ; preds = %519
  %525 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %526 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %525, i32 0, i32 13
  %527 = load i64, i64* %526, align 8
  %528 = icmp ne i64 %527, 0
  br i1 %528, label %529, label %531

529:                                              ; preds = %524
  %530 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0))
  br label %531

531:                                              ; preds = %529, %524, %519, %512, %506, %494
  br label %532

532:                                              ; preds = %531, %483
  %533 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %534 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %533, i32 0, i32 14
  %535 = load i32, i32* %534, align 8
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %601

537:                                              ; preds = %532
  %538 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %539 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %538, i32 0, i32 14
  %540 = load i32, i32* %539, align 8
  %541 = sub nsw i32 %540, 1
  %542 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %543 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %542, i32 0, i32 6
  %544 = load i32, i32* %543, align 8
  %545 = call %struct.icmptypeent* @geticmptypebynumber(i32 %541, i32 %544)
  store %struct.icmptypeent* %545, %struct.icmptypeent** %15, align 8
  %546 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %547 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %546, i32 0, i32 6
  %548 = load i32, i32* %547, align 8
  %549 = icmp ne i32 %548, 128
  br i1 %549, label %550, label %552

550:                                              ; preds = %537
  %551 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i64 0, i64 0))
  br label %554

552:                                              ; preds = %537
  %553 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0))
  br label %554

554:                                              ; preds = %552, %550
  %555 = load %struct.icmptypeent*, %struct.icmptypeent** %15, align 8
  %556 = icmp ne %struct.icmptypeent* %555, null
  br i1 %556, label %557, label %562

557:                                              ; preds = %554
  %558 = load %struct.icmptypeent*, %struct.icmptypeent** %15, align 8
  %559 = getelementptr inbounds %struct.icmptypeent, %struct.icmptypeent* %558, i32 0, i32 0
  %560 = load i8*, i8** %559, align 8
  %561 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0), i8* %560)
  br label %568

562:                                              ; preds = %554
  %563 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %564 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %563, i32 0, i32 14
  %565 = load i32, i32* %564, align 8
  %566 = sub nsw i32 %565, 1
  %567 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0), i32 %566)
  br label %568

568:                                              ; preds = %562, %557
  %569 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %570 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %569, i32 0, i32 15
  %571 = load i32, i32* %570, align 4
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %573, label %600

573:                                              ; preds = %568
  %574 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %575 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %574, i32 0, i32 14
  %576 = load i32, i32* %575, align 8
  %577 = sub nsw i32 %576, 1
  %578 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %579 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %578, i32 0, i32 15
  %580 = load i32, i32* %579, align 4
  %581 = sub nsw i32 %580, 1
  %582 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %583 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %582, i32 0, i32 6
  %584 = load i32, i32* %583, align 8
  %585 = call %struct.icmpcodeent* @geticmpcodebynumber(i32 %577, i32 %581, i32 %584)
  store %struct.icmpcodeent* %585, %struct.icmpcodeent** %16, align 8
  %586 = load %struct.icmpcodeent*, %struct.icmpcodeent** %16, align 8
  %587 = icmp ne %struct.icmpcodeent* %586, null
  br i1 %587, label %588, label %593

588:                                              ; preds = %573
  %589 = load %struct.icmpcodeent*, %struct.icmpcodeent** %16, align 8
  %590 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %589, i32 0, i32 0
  %591 = load i8*, i8** %590, align 8
  %592 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i8* %591)
  br label %599

593:                                              ; preds = %573
  %594 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %595 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %594, i32 0, i32 15
  %596 = load i32, i32* %595, align 4
  %597 = sub nsw i32 %596, 1
  %598 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i64 0, i64 0), i32 %597)
  br label %599

599:                                              ; preds = %593, %588
  br label %600

600:                                              ; preds = %599, %568
  br label %601

601:                                              ; preds = %600, %532
  %602 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %603 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %602, i32 0, i32 16
  %604 = load i32, i32* %603, align 8
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %611

606:                                              ; preds = %601
  %607 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %608 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %607, i32 0, i32 16
  %609 = load i32, i32* %608, align 8
  %610 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i64 0, i64 0), i32 %609)
  br label %611

611:                                              ; preds = %606, %601
  %612 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %613 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %612, i32 0, i32 17
  %614 = load i64, i64* %613, align 8
  %615 = icmp ne i64 %614, 0
  br i1 %615, label %616, label %630

616:                                              ; preds = %611
  %617 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %618 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %617, i32 0, i32 17
  %619 = load i64, i64* %618, align 8
  %620 = load i64, i64* @PF_PRIO_ZERO, align 8
  %621 = icmp eq i64 %619, %620
  br i1 %621, label %622, label %623

622:                                              ; preds = %616
  br label %627

623:                                              ; preds = %616
  %624 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %625 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %624, i32 0, i32 17
  %626 = load i64, i64* %625, align 8
  br label %627

627:                                              ; preds = %623, %622
  %628 = phi i64 [ 0, %622 ], [ %626, %623 ]
  %629 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i64 0, i64 0), i64 %628)
  br label %630

630:                                              ; preds = %627, %611
  %631 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %632 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %631, i32 0, i32 18
  %633 = load i32, i32* %632, align 8
  %634 = load i32, i32* @PFSTATE_SETMASK, align 4
  %635 = and i32 %633, %634
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %681

637:                                              ; preds = %630
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i64 0, i64 0), i8** %17, align 8
  %638 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0))
  %639 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %640 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %639, i32 0, i32 18
  %641 = load i32, i32* %640, align 8
  %642 = load i32, i32* @PFSTATE_SETPRIO, align 4
  %643 = and i32 %641, %642
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %645, label %679

645:                                              ; preds = %637
  %646 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %647 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %646, i32 0, i32 19
  %648 = load i32*, i32** %647, align 8
  %649 = getelementptr inbounds i32, i32* %648, i64 0
  %650 = load i32, i32* %649, align 4
  %651 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %652 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %651, i32 0, i32 19
  %653 = load i32*, i32** %652, align 8
  %654 = getelementptr inbounds i32, i32* %653, i64 1
  %655 = load i32, i32* %654, align 4
  %656 = icmp eq i32 %650, %655
  br i1 %656, label %657, label %665

657:                                              ; preds = %645
  %658 = load i8*, i8** %17, align 8
  %659 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %660 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %659, i32 0, i32 19
  %661 = load i32*, i32** %660, align 8
  %662 = getelementptr inbounds i32, i32* %661, i64 0
  %663 = load i32, i32* %662, align 4
  %664 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i64 0, i64 0), i8* %658, i32 %663)
  br label %678

665:                                              ; preds = %645
  %666 = load i8*, i8** %17, align 8
  %667 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %668 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %667, i32 0, i32 19
  %669 = load i32*, i32** %668, align 8
  %670 = getelementptr inbounds i32, i32* %669, i64 0
  %671 = load i32, i32* %670, align 4
  %672 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %673 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %672, i32 0, i32 19
  %674 = load i32*, i32** %673, align 8
  %675 = getelementptr inbounds i32, i32* %674, i64 1
  %676 = load i32, i32* %675, align 4
  %677 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i64 0, i64 0), i8* %666, i32 %671, i32 %676)
  br label %678

678:                                              ; preds = %665, %657
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), i8** %17, align 8
  br label %679

679:                                              ; preds = %678, %637
  %680 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0))
  br label %681

681:                                              ; preds = %679, %630
  %682 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %683 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %682, i32 0, i32 13
  %684 = load i64, i64* %683, align 8
  %685 = icmp ne i64 %684, 0
  br i1 %685, label %700, label %686

686:                                              ; preds = %681
  %687 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %688 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %687, i32 0, i32 1
  %689 = load i32, i32* %688, align 4
  %690 = sext i32 %689 to i64
  %691 = load i64, i64* @PF_PASS, align 8
  %692 = icmp eq i64 %690, %691
  br i1 %692, label %693, label %700

693:                                              ; preds = %686
  %694 = load i8*, i8** %6, align 8
  %695 = getelementptr inbounds i8, i8* %694, i64 0
  %696 = load i8, i8* %695, align 1
  %697 = icmp ne i8 %696, 0
  br i1 %697, label %700, label %698

698:                                              ; preds = %693
  %699 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i64 0, i64 0))
  br label %727

700:                                              ; preds = %693, %686, %681
  %701 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %702 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %701, i32 0, i32 13
  %703 = load i64, i64* %702, align 8
  %704 = load i64, i64* @PF_STATE_NORMAL, align 8
  %705 = icmp eq i64 %703, %704
  br i1 %705, label %706, label %708

706:                                              ; preds = %700
  %707 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i64 0, i64 0))
  br label %726

708:                                              ; preds = %700
  %709 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %710 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %709, i32 0, i32 13
  %711 = load i64, i64* %710, align 8
  %712 = load i64, i64* @PF_STATE_MODULATE, align 8
  %713 = icmp eq i64 %711, %712
  br i1 %713, label %714, label %716

714:                                              ; preds = %708
  %715 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.72, i64 0, i64 0))
  br label %725

716:                                              ; preds = %708
  %717 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %718 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %717, i32 0, i32 13
  %719 = load i64, i64* %718, align 8
  %720 = load i64, i64* @PF_STATE_SYNPROXY, align 8
  %721 = icmp eq i64 %719, %720
  br i1 %721, label %722, label %724

722:                                              ; preds = %716
  %723 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i64 0, i64 0))
  br label %724

724:                                              ; preds = %722, %716
  br label %725

725:                                              ; preds = %724, %714
  br label %726

726:                                              ; preds = %725, %706
  br label %727

727:                                              ; preds = %726, %698
  %728 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %729 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %728, i32 0, i32 20
  %730 = load double, double* %729, align 8
  %731 = fcmp une double %730, 0.000000e+00
  br i1 %731, label %732, label %778

732:                                              ; preds = %727
  %733 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 0
  %734 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %735 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %734, i32 0, i32 20
  %736 = load double, double* %735, align 8
  %737 = fmul double %736, 1.000000e+02
  %738 = load double, double* @UINT_MAX, align 8
  %739 = fadd double %738, 1.000000e+00
  %740 = fdiv double %737, %739
  %741 = call i32 @snprintf(i8* %733, i32 20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), double %740)
  %742 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 0
  %743 = call i32 @strlen(i8* %742)
  %744 = sub nsw i32 %743, 1
  store i32 %744, i32* %9, align 4
  br label %745

745:                                              ; preds = %772, %732
  %746 = load i32, i32* %9, align 4
  %747 = icmp sgt i32 %746, 0
  br i1 %747, label %748, label %775

748:                                              ; preds = %745
  %749 = load i32, i32* %9, align 4
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 %750
  %752 = load i8, i8* %751, align 1
  %753 = sext i8 %752 to i32
  %754 = icmp eq i32 %753, 48
  br i1 %754, label %755, label %759

755:                                              ; preds = %748
  %756 = load i32, i32* %9, align 4
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 %757
  store i8 0, i8* %758, align 1
  br label %771

759:                                              ; preds = %748
  %760 = load i32, i32* %9, align 4
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 %761
  %763 = load i8, i8* %762, align 1
  %764 = sext i8 %763 to i32
  %765 = icmp eq i32 %764, 46
  br i1 %765, label %766, label %770

766:                                              ; preds = %759
  %767 = load i32, i32* %9, align 4
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 %768
  store i8 0, i8* %769, align 1
  br label %770

770:                                              ; preds = %766, %759
  br label %775

771:                                              ; preds = %755
  br label %772

772:                                              ; preds = %771
  %773 = load i32, i32* %9, align 4
  %774 = add nsw i32 %773, -1
  store i32 %774, i32* %9, align 4
  br label %745

775:                                              ; preds = %770, %745
  %776 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 0
  %777 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i64 0, i64 0), i8* %776)
  br label %778

778:                                              ; preds = %775, %727
  store i32 0, i32* %10, align 4
  %779 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %780 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %779, i32 0, i32 21
  %781 = load i32, i32* %780, align 8
  %782 = icmp ne i32 %781, 0
  br i1 %782, label %793, label %783

783:                                              ; preds = %778
  %784 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %785 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %784, i32 0, i32 22
  %786 = load i32, i32* %785, align 4
  %787 = icmp ne i32 %786, 0
  br i1 %787, label %793, label %788

788:                                              ; preds = %783
  %789 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %790 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %789, i32 0, i32 23
  %791 = load i32, i32* %790, align 8
  %792 = icmp ne i32 %791, 0
  br i1 %792, label %793, label %794

793:                                              ; preds = %788, %783, %778
  store i32 1, i32* %10, align 4
  br label %794

794:                                              ; preds = %793, %788
  %795 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %796 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %795, i32 0, i32 2
  %797 = load i32, i32* %796, align 8
  %798 = load i32, i32* @PFRULE_NOSYNC, align 4
  %799 = and i32 %797, %798
  %800 = icmp ne i32 %799, 0
  br i1 %800, label %801, label %802

801:                                              ; preds = %794
  store i32 1, i32* %10, align 4
  br label %802

802:                                              ; preds = %801, %794
  %803 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %804 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %803, i32 0, i32 2
  %805 = load i32, i32* %804, align 8
  %806 = load i32, i32* @PFRULE_SRCTRACK, align 4
  %807 = and i32 %805, %806
  %808 = icmp ne i32 %807, 0
  br i1 %808, label %809, label %810

809:                                              ; preds = %802
  store i32 1, i32* %10, align 4
  br label %810

810:                                              ; preds = %809, %802
  %811 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %812 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %811, i32 0, i32 2
  %813 = load i32, i32* %812, align 8
  %814 = load i32, i32* @PFRULE_IFBOUND, align 4
  %815 = and i32 %813, %814
  %816 = icmp ne i32 %815, 0
  br i1 %816, label %817, label %818

817:                                              ; preds = %810
  store i32 1, i32* %10, align 4
  br label %818

818:                                              ; preds = %817, %810
  %819 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %820 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %819, i32 0, i32 2
  %821 = load i32, i32* %820, align 8
  %822 = load i32, i32* @PFRULE_STATESLOPPY, align 4
  %823 = and i32 %821, %822
  %824 = icmp ne i32 %823, 0
  br i1 %824, label %825, label %826

825:                                              ; preds = %818
  store i32 1, i32* %10, align 4
  br label %826

826:                                              ; preds = %825, %818
  store i32 0, i32* %9, align 4
  br label %827

827:                                              ; preds = %847, %826
  %828 = load i32, i32* %10, align 4
  %829 = icmp ne i32 %828, 0
  br i1 %829, label %834, label %830

830:                                              ; preds = %827
  %831 = load i32, i32* %9, align 4
  %832 = load i32, i32* @PFTM_MAX, align 4
  %833 = icmp slt i32 %831, %832
  br label %834

834:                                              ; preds = %830, %827
  %835 = phi i1 [ false, %827 ], [ %833, %830 ]
  br i1 %835, label %836, label %850

836:                                              ; preds = %834
  %837 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %838 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %837, i32 0, i32 24
  %839 = load i32*, i32** %838, align 8
  %840 = load i32, i32* %9, align 4
  %841 = sext i32 %840 to i64
  %842 = getelementptr inbounds i32, i32* %839, i64 %841
  %843 = load i32, i32* %842, align 4
  %844 = icmp ne i32 %843, 0
  br i1 %844, label %845, label %846

845:                                              ; preds = %836
  store i32 1, i32* %10, align 4
  br label %846

846:                                              ; preds = %845, %836
  br label %847

847:                                              ; preds = %846
  %848 = load i32, i32* %9, align 4
  %849 = add nsw i32 %848, 1
  store i32 %849, i32* %9, align 4
  br label %827

850:                                              ; preds = %834
  %851 = load i32, i32* %10, align 4
  %852 = icmp ne i32 %851, 0
  br i1 %852, label %853, label %1104

853:                                              ; preds = %850
  %854 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0))
  %855 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %856 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %855, i32 0, i32 21
  %857 = load i32, i32* %856, align 8
  %858 = icmp ne i32 %857, 0
  br i1 %858, label %859, label %864

859:                                              ; preds = %853
  %860 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %861 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %860, i32 0, i32 21
  %862 = load i32, i32* %861, align 8
  %863 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i32 %862)
  store i32 0, i32* %10, align 4
  br label %864

864:                                              ; preds = %859, %853
  %865 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %866 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %865, i32 0, i32 2
  %867 = load i32, i32* %866, align 8
  %868 = load i32, i32* @PFRULE_NOSYNC, align 4
  %869 = and i32 %867, %868
  %870 = icmp ne i32 %869, 0
  br i1 %870, label %871, label %878

871:                                              ; preds = %864
  %872 = load i32, i32* %10, align 4
  %873 = icmp ne i32 %872, 0
  br i1 %873, label %876, label %874

874:                                              ; preds = %871
  %875 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0))
  br label %876

876:                                              ; preds = %874, %871
  %877 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %878

878:                                              ; preds = %876, %864
  %879 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %880 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %879, i32 0, i32 2
  %881 = load i32, i32* %880, align 8
  %882 = load i32, i32* @PFRULE_SRCTRACK, align 4
  %883 = and i32 %881, %882
  %884 = icmp ne i32 %883, 0
  br i1 %884, label %885, label %903

885:                                              ; preds = %878
  %886 = load i32, i32* %10, align 4
  %887 = icmp ne i32 %886, 0
  br i1 %887, label %890, label %888

888:                                              ; preds = %885
  %889 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0))
  br label %890

890:                                              ; preds = %888, %885
  %891 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.78, i64 0, i64 0))
  %892 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %893 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %892, i32 0, i32 2
  %894 = load i32, i32* %893, align 8
  %895 = load i32, i32* @PFRULE_RULESRCTRACK, align 4
  %896 = and i32 %894, %895
  %897 = icmp ne i32 %896, 0
  br i1 %897, label %898, label %900

898:                                              ; preds = %890
  %899 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i64 0, i64 0))
  br label %902

900:                                              ; preds = %890
  %901 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0))
  br label %902

902:                                              ; preds = %900, %898
  store i32 0, i32* %10, align 4
  br label %903

903:                                              ; preds = %902, %878
  %904 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %905 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %904, i32 0, i32 23
  %906 = load i32, i32* %905, align 8
  %907 = icmp ne i32 %906, 0
  br i1 %907, label %908, label %918

908:                                              ; preds = %903
  %909 = load i32, i32* %10, align 4
  %910 = icmp ne i32 %909, 0
  br i1 %910, label %913, label %911

911:                                              ; preds = %908
  %912 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0))
  br label %913

913:                                              ; preds = %911, %908
  %914 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %915 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %914, i32 0, i32 23
  %916 = load i32, i32* %915, align 8
  %917 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.81, i64 0, i64 0), i32 %916)
  store i32 0, i32* %10, align 4
  br label %918

918:                                              ; preds = %913, %903
  %919 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %920 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %919, i32 0, i32 25
  %921 = load i32, i32* %920, align 8
  %922 = icmp ne i32 %921, 0
  br i1 %922, label %923, label %933

923:                                              ; preds = %918
  %924 = load i32, i32* %10, align 4
  %925 = icmp ne i32 %924, 0
  br i1 %925, label %928, label %926

926:                                              ; preds = %923
  %927 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0))
  br label %928

928:                                              ; preds = %926, %923
  %929 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %930 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %929, i32 0, i32 25
  %931 = load i32, i32* %930, align 8
  %932 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.82, i64 0, i64 0), i32 %931)
  store i32 0, i32* %10, align 4
  br label %933

933:                                              ; preds = %928, %918
  %934 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %935 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %934, i32 0, i32 41
  %936 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %935, i32 0, i32 0
  %937 = load i32, i32* %936, align 8
  %938 = icmp ne i32 %937, 0
  br i1 %938, label %939, label %954

939:                                              ; preds = %933
  %940 = load i32, i32* %10, align 4
  %941 = icmp ne i32 %940, 0
  br i1 %941, label %944, label %942

942:                                              ; preds = %939
  %943 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0))
  br label %944

944:                                              ; preds = %942, %939
  %945 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %946 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %945, i32 0, i32 41
  %947 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %946, i32 0, i32 0
  %948 = load i32, i32* %947, align 8
  %949 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %950 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %949, i32 0, i32 41
  %951 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %950, i32 0, i32 1
  %952 = load i32, i32* %951, align 4
  %953 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.83, i64 0, i64 0), i32 %948, i32 %952)
  store i32 0, i32* %10, align 4
  br label %954

954:                                              ; preds = %944, %933
  %955 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %956 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %955, i32 0, i32 22
  %957 = load i32, i32* %956, align 4
  %958 = icmp ne i32 %957, 0
  br i1 %958, label %959, label %969

959:                                              ; preds = %954
  %960 = load i32, i32* %10, align 4
  %961 = icmp ne i32 %960, 0
  br i1 %961, label %964, label %962

962:                                              ; preds = %959
  %963 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0))
  br label %964

964:                                              ; preds = %962, %959
  %965 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %966 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %965, i32 0, i32 22
  %967 = load i32, i32* %966, align 4
  %968 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i64 0, i64 0), i32 %967)
  store i32 0, i32* %10, align 4
  br label %969

969:                                              ; preds = %964, %954
  %970 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %971 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %970, i32 0, i32 26
  %972 = load i8*, i8** %971, align 8
  %973 = getelementptr inbounds i8, i8* %972, i64 0
  %974 = load i8, i8* %973, align 1
  %975 = icmp ne i8 %974, 0
  br i1 %975, label %976, label %1002

976:                                              ; preds = %969
  %977 = load i32, i32* %10, align 4
  %978 = icmp ne i32 %977, 0
  br i1 %978, label %981, label %979

979:                                              ; preds = %976
  %980 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0))
  br label %981

981:                                              ; preds = %979, %976
  %982 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %983 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %982, i32 0, i32 26
  %984 = load i8*, i8** %983, align 8
  %985 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i64 0, i64 0), i8* %984)
  %986 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %987 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %986, i32 0, i32 27
  %988 = load i32, i32* %987, align 8
  %989 = icmp ne i32 %988, 0
  br i1 %989, label %990, label %992

990:                                              ; preds = %981
  %991 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i64 0, i64 0))
  br label %992

992:                                              ; preds = %990, %981
  %993 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %994 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %993, i32 0, i32 27
  %995 = load i32, i32* %994, align 8
  %996 = load i32, i32* @PF_FLUSH_GLOBAL, align 4
  %997 = and i32 %995, %996
  %998 = icmp ne i32 %997, 0
  br i1 %998, label %999, label %1001

999:                                              ; preds = %992
  %1000 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0))
  br label %1001

1001:                                             ; preds = %999, %992
  br label %1002

1002:                                             ; preds = %1001, %969
  %1003 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1004 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1003, i32 0, i32 2
  %1005 = load i32, i32* %1004, align 8
  %1006 = load i32, i32* @PFRULE_IFBOUND, align 4
  %1007 = and i32 %1005, %1006
  %1008 = icmp ne i32 %1007, 0
  br i1 %1008, label %1009, label %1016

1009:                                             ; preds = %1002
  %1010 = load i32, i32* %10, align 4
  %1011 = icmp ne i32 %1010, 0
  br i1 %1011, label %1014, label %1012

1012:                                             ; preds = %1009
  %1013 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0))
  br label %1014

1014:                                             ; preds = %1012, %1009
  %1015 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %1016

1016:                                             ; preds = %1014, %1002
  %1017 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1018 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1017, i32 0, i32 2
  %1019 = load i32, i32* %1018, align 8
  %1020 = load i32, i32* @PFRULE_STATESLOPPY, align 4
  %1021 = and i32 %1019, %1020
  %1022 = icmp ne i32 %1021, 0
  br i1 %1022, label %1023, label %1030

1023:                                             ; preds = %1016
  %1024 = load i32, i32* %10, align 4
  %1025 = icmp ne i32 %1024, 0
  br i1 %1025, label %1028, label %1026

1026:                                             ; preds = %1023
  %1027 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0))
  br label %1028

1028:                                             ; preds = %1026, %1023
  %1029 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %1030

1030:                                             ; preds = %1028, %1016
  store i32 0, i32* %9, align 4
  br label %1031

1031:                                             ; preds = %1099, %1030
  %1032 = load i32, i32* %9, align 4
  %1033 = load i32, i32* @PFTM_MAX, align 4
  %1034 = icmp slt i32 %1032, %1033
  br i1 %1034, label %1035, label %1102

1035:                                             ; preds = %1031
  %1036 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1037 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1036, i32 0, i32 24
  %1038 = load i32*, i32** %1037, align 8
  %1039 = load i32, i32* %9, align 4
  %1040 = sext i32 %1039 to i64
  %1041 = getelementptr inbounds i32, i32* %1038, i64 %1040
  %1042 = load i32, i32* %1041, align 4
  %1043 = icmp ne i32 %1042, 0
  br i1 %1043, label %1044, label %1098

1044:                                             ; preds = %1035
  %1045 = load i32, i32* %10, align 4
  %1046 = icmp ne i32 %1045, 0
  br i1 %1046, label %1049, label %1047

1047:                                             ; preds = %1044
  %1048 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0))
  br label %1049

1049:                                             ; preds = %1047, %1044
  store i32 0, i32* %10, align 4
  store i32 0, i32* %19, align 4
  br label %1050

1050:                                             ; preds = %1069, %1049
  %1051 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pf_timeouts, align 8
  %1052 = load i32, i32* %19, align 4
  %1053 = sext i32 %1052 to i64
  %1054 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1051, i64 %1053
  %1055 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1054, i32 0, i32 0
  %1056 = load i8*, i8** %1055, align 8
  %1057 = icmp ne i8* %1056, null
  br i1 %1057, label %1058, label %1072

1058:                                             ; preds = %1050
  %1059 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pf_timeouts, align 8
  %1060 = load i32, i32* %19, align 4
  %1061 = sext i32 %1060 to i64
  %1062 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1059, i64 %1061
  %1063 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1062, i32 0, i32 1
  %1064 = load i32, i32* %1063, align 8
  %1065 = load i32, i32* %9, align 4
  %1066 = icmp eq i32 %1064, %1065
  br i1 %1066, label %1067, label %1068

1067:                                             ; preds = %1058
  br label %1072

1068:                                             ; preds = %1058
  br label %1069

1069:                                             ; preds = %1068
  %1070 = load i32, i32* %19, align 4
  %1071 = add nsw i32 %1070, 1
  store i32 %1071, i32* %19, align 4
  br label %1050

1072:                                             ; preds = %1067, %1050
  %1073 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pf_timeouts, align 8
  %1074 = load i32, i32* %19, align 4
  %1075 = sext i32 %1074 to i64
  %1076 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1073, i64 %1075
  %1077 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1076, i32 0, i32 0
  %1078 = load i8*, i8** %1077, align 8
  %1079 = icmp eq i8* %1078, null
  br i1 %1079, label %1080, label %1081

1080:                                             ; preds = %1072
  br label %1088

1081:                                             ; preds = %1072
  %1082 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pf_timeouts, align 8
  %1083 = load i32, i32* %19, align 4
  %1084 = sext i32 %1083 to i64
  %1085 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1082, i64 %1084
  %1086 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1085, i32 0, i32 0
  %1087 = load i8*, i8** %1086, align 8
  br label %1088

1088:                                             ; preds = %1081, %1080
  %1089 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.90, i64 0, i64 0), %1080 ], [ %1087, %1081 ]
  %1090 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1091 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1090, i32 0, i32 24
  %1092 = load i32*, i32** %1091, align 8
  %1093 = load i32, i32* %9, align 4
  %1094 = sext i32 %1093 to i64
  %1095 = getelementptr inbounds i32, i32* %1092, i64 %1094
  %1096 = load i32, i32* %1095, align 4
  %1097 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i64 0, i64 0), i8* %1089, i32 %1096)
  br label %1098

1098:                                             ; preds = %1088, %1035
  br label %1099

1099:                                             ; preds = %1098
  %1100 = load i32, i32* %9, align 4
  %1101 = add nsw i32 %1100, 1
  store i32 %1101, i32* %9, align 4
  br label %1031

1102:                                             ; preds = %1031
  %1103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  br label %1104

1104:                                             ; preds = %1102, %850
  %1105 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1106 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1105, i32 0, i32 2
  %1107 = load i32, i32* %1106, align 8
  %1108 = load i32, i32* @PFRULE_FRAGMENT, align 4
  %1109 = and i32 %1107, %1108
  %1110 = icmp ne i32 %1109, 0
  br i1 %1110, label %1111, label %1113

1111:                                             ; preds = %1104
  %1112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i64 0, i64 0))
  br label %1113

1113:                                             ; preds = %1111, %1104
  %1114 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1115 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1114, i32 0, i32 2
  %1116 = load i32, i32* %1115, align 8
  %1117 = load i32, i32* @PFRULE_NODF, align 4
  %1118 = and i32 %1116, %1117
  %1119 = icmp ne i32 %1118, 0
  br i1 %1119, label %1120, label %1122

1120:                                             ; preds = %1113
  %1121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i64 0, i64 0))
  br label %1122

1122:                                             ; preds = %1120, %1113
  %1123 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1124 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1123, i32 0, i32 2
  %1125 = load i32, i32* %1124, align 8
  %1126 = load i32, i32* @PFRULE_RANDOMID, align 4
  %1127 = and i32 %1125, %1126
  %1128 = icmp ne i32 %1127, 0
  br i1 %1128, label %1129, label %1131

1129:                                             ; preds = %1122
  %1130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i64 0, i64 0))
  br label %1131

1131:                                             ; preds = %1129, %1122
  %1132 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1133 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1132, i32 0, i32 28
  %1134 = load i32, i32* %1133, align 4
  %1135 = icmp ne i32 %1134, 0
  br i1 %1135, label %1136, label %1141

1136:                                             ; preds = %1131
  %1137 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1138 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1137, i32 0, i32 28
  %1139 = load i32, i32* %1138, align 4
  %1140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i64 0, i64 0), i32 %1139)
  br label %1141

1141:                                             ; preds = %1136, %1131
  %1142 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1143 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1142, i32 0, i32 29
  %1144 = load i32, i32* %1143, align 8
  %1145 = icmp ne i32 %1144, 0
  br i1 %1145, label %1146, label %1151

1146:                                             ; preds = %1141
  %1147 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1148 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1147, i32 0, i32 29
  %1149 = load i32, i32* %1148, align 8
  %1150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.95, i64 0, i64 0), i32 %1149)
  br label %1151

1151:                                             ; preds = %1146, %1141
  %1152 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1153 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1152, i32 0, i32 2
  %1154 = load i32, i32* %1153, align 8
  %1155 = load i32, i32* @PFRULE_SET_TOS, align 4
  %1156 = and i32 %1154, %1155
  %1157 = icmp ne i32 %1156, 0
  br i1 %1157, label %1158, label %1163

1158:                                             ; preds = %1151
  %1159 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1160 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1159, i32 0, i32 30
  %1161 = load i32, i32* %1160, align 4
  %1162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.96, i64 0, i64 0), i32 %1161)
  br label %1163

1163:                                             ; preds = %1158, %1151
  %1164 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1165 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1164, i32 0, i32 40
  %1166 = load i64, i64* %1165, align 8
  %1167 = icmp ne i64 %1166, 0
  br i1 %1167, label %1168, label %1170

1168:                                             ; preds = %1163
  %1169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i64 0, i64 0))
  br label %1170

1170:                                             ; preds = %1168, %1163
  %1171 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1172 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1171, i32 0, i32 1
  %1173 = load i32, i32* %1172, align 4
  %1174 = sext i32 %1173 to i64
  %1175 = load i64, i64* @PF_SCRUB, align 8
  %1176 = icmp eq i64 %1174, %1175
  br i1 %1176, label %1177, label %1188

1177:                                             ; preds = %1170
  %1178 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1179 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1178, i32 0, i32 2
  %1180 = load i32, i32* %1179, align 8
  %1181 = load i32, i32* @PFRULE_REASSEMBLE_TCP, align 4
  %1182 = and i32 %1180, %1181
  %1183 = icmp ne i32 %1182, 0
  br i1 %1183, label %1184, label %1186

1184:                                             ; preds = %1177
  %1185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.98, i64 0, i64 0))
  br label %1186

1186:                                             ; preds = %1184, %1177
  %1187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.99, i64 0, i64 0))
  br label %1188

1188:                                             ; preds = %1186, %1170
  %1189 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1190 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1189, i32 0, i32 31
  %1191 = load i8*, i8** %1190, align 8
  %1192 = getelementptr inbounds i8, i8* %1191, i64 0
  %1193 = load i8, i8* %1192, align 1
  %1194 = icmp ne i8 %1193, 0
  br i1 %1194, label %1195, label %1200

1195:                                             ; preds = %1188
  %1196 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1197 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1196, i32 0, i32 31
  %1198 = load i8*, i8** %1197, align 8
  %1199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i64 0, i64 0), i8* %1198)
  br label %1200

1200:                                             ; preds = %1195, %1188
  %1201 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1202 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1201, i32 0, i32 32
  %1203 = load i8*, i8** %1202, align 8
  %1204 = getelementptr inbounds i8, i8* %1203, i64 0
  %1205 = load i8, i8* %1204, align 1
  %1206 = sext i8 %1205 to i32
  %1207 = icmp ne i32 %1206, 0
  br i1 %1207, label %1208, label %1224

1208:                                             ; preds = %1200
  %1209 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1210 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1209, i32 0, i32 33
  %1211 = load i8*, i8** %1210, align 8
  %1212 = getelementptr inbounds i8, i8* %1211, i64 0
  %1213 = load i8, i8* %1212, align 1
  %1214 = sext i8 %1213 to i32
  %1215 = icmp ne i32 %1214, 0
  br i1 %1215, label %1216, label %1224

1216:                                             ; preds = %1208
  %1217 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1218 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1217, i32 0, i32 32
  %1219 = load i8*, i8** %1218, align 8
  %1220 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1221 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1220, i32 0, i32 33
  %1222 = load i8*, i8** %1221, align 8
  %1223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.101, i64 0, i64 0), i8* %1219, i8* %1222)
  br label %1237

1224:                                             ; preds = %1208, %1200
  %1225 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1226 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1225, i32 0, i32 32
  %1227 = load i8*, i8** %1226, align 8
  %1228 = getelementptr inbounds i8, i8* %1227, i64 0
  %1229 = load i8, i8* %1228, align 1
  %1230 = icmp ne i8 %1229, 0
  br i1 %1230, label %1231, label %1236

1231:                                             ; preds = %1224
  %1232 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1233 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1232, i32 0, i32 32
  %1234 = load i8*, i8** %1233, align 8
  %1235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.102, i64 0, i64 0), i8* %1234)
  br label %1236

1236:                                             ; preds = %1231, %1224
  br label %1237

1237:                                             ; preds = %1236, %1216
  %1238 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1239 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1238, i32 0, i32 34
  %1240 = load i8*, i8** %1239, align 8
  %1241 = getelementptr inbounds i8, i8* %1240, i64 0
  %1242 = load i8, i8* %1241, align 1
  %1243 = icmp ne i8 %1242, 0
  br i1 %1243, label %1244, label %1249

1244:                                             ; preds = %1237
  %1245 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1246 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1245, i32 0, i32 34
  %1247 = load i8*, i8** %1246, align 8
  %1248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.103, i64 0, i64 0), i8* %1247)
  br label %1249

1249:                                             ; preds = %1244, %1237
  %1250 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1251 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1250, i32 0, i32 35
  %1252 = load i8*, i8** %1251, align 8
  %1253 = getelementptr inbounds i8, i8* %1252, i64 0
  %1254 = load i8, i8* %1253, align 1
  %1255 = icmp ne i8 %1254, 0
  br i1 %1255, label %1256, label %1268

1256:                                             ; preds = %1249
  %1257 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1258 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1257, i32 0, i32 39
  %1259 = load i64, i64* %1258, align 8
  %1260 = icmp ne i64 %1259, 0
  br i1 %1260, label %1261, label %1263

1261:                                             ; preds = %1256
  %1262 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i64 0, i64 0))
  br label %1263

1263:                                             ; preds = %1261, %1256
  %1264 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1265 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1264, i32 0, i32 35
  %1266 = load i8*, i8** %1265, align 8
  %1267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i64 0, i64 0), i8* %1266)
  br label %1268

1268:                                             ; preds = %1263, %1249
  %1269 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1270 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1269, i32 0, i32 36
  %1271 = load i32, i32* %1270, align 8
  %1272 = icmp ne i32 %1271, -1
  br i1 %1272, label %1273, label %1278

1273:                                             ; preds = %1268
  %1274 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1275 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1274, i32 0, i32 36
  %1276 = load i32, i32* %1275, align 8
  %1277 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.106, i64 0, i64 0), i32 %1276)
  br label %1278

1278:                                             ; preds = %1273, %1268
  %1279 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1280 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1279, i32 0, i32 38
  %1281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1280, i32 0, i32 0
  %1282 = load i64, i64* %1281, align 8
  %1283 = icmp ne i64 %1282, 0
  br i1 %1283, label %1284, label %1319

1284:                                             ; preds = %1278
  %1285 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1286 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1285, i32 0, i32 38
  %1287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1286, i32 0, i32 1
  %1288 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1289 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1288, i32 0, i32 6
  %1290 = load i32, i32* %1289, align 8
  %1291 = call i64 @PF_AZERO(i32* %1287, i32 %1290)
  %1292 = icmp ne i64 %1291, 0
  br i1 %1292, label %1293, label %1295

1293:                                             ; preds = %1284
  %1294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.107, i64 0, i64 0))
  br label %1318

1295:                                             ; preds = %1284
  %1296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.108, i64 0, i64 0))
  %1297 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1298 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1297, i32 0, i32 6
  %1299 = load i32, i32* %1298, align 8
  %1300 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1301 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1300, i32 0, i32 38
  %1302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1301, i32 0, i32 1
  %1303 = getelementptr inbounds [48 x i8], [48 x i8]* %20, i64 0, i64 0
  %1304 = call i32* @inet_ntop(i32 %1299, i32* %1302, i8* %1303, i32 48)
  %1305 = icmp eq i32* %1304, null
  br i1 %1305, label %1306, label %1308

1306:                                             ; preds = %1295
  %1307 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i64 0, i64 0))
  br label %1311

1308:                                             ; preds = %1295
  %1309 = getelementptr inbounds [48 x i8], [48 x i8]* %20, i64 0, i64 0
  %1310 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* %1309)
  br label %1311

1311:                                             ; preds = %1308, %1306
  %1312 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1313 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1312, i32 0, i32 38
  %1314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1313, i32 0, i32 0
  %1315 = load i64, i64* %1314, align 8
  %1316 = call i32 @ntohs(i64 %1315)
  %1317 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.110, i64 0, i64 0), i32 %1316)
  br label %1318

1318:                                             ; preds = %1311, %1293
  br label %1319

1319:                                             ; preds = %1318, %1278
  %1320 = load i8*, i8** %6, align 8
  %1321 = getelementptr inbounds i8, i8* %1320, i64 0
  %1322 = load i8, i8* %1321, align 1
  %1323 = icmp ne i8 %1322, 0
  br i1 %1323, label %1369, label %1324

1324:                                             ; preds = %1319
  %1325 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1326 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1325, i32 0, i32 1
  %1327 = load i32, i32* %1326, align 4
  %1328 = sext i32 %1327 to i64
  %1329 = load i64, i64* @PF_NAT, align 8
  %1330 = icmp eq i64 %1328, %1329
  br i1 %1330, label %1345, label %1331

1331:                                             ; preds = %1324
  %1332 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1333 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1332, i32 0, i32 1
  %1334 = load i32, i32* %1333, align 4
  %1335 = sext i32 %1334 to i64
  %1336 = load i64, i64* @PF_BINAT, align 8
  %1337 = icmp eq i64 %1335, %1336
  br i1 %1337, label %1345, label %1338

1338:                                             ; preds = %1331
  %1339 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1340 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1339, i32 0, i32 1
  %1341 = load i32, i32* %1340, align 4
  %1342 = sext i32 %1341 to i64
  %1343 = load i64, i64* @PF_RDR, align 8
  %1344 = icmp eq i64 %1342, %1343
  br i1 %1344, label %1345, label %1369

1345:                                             ; preds = %1338, %1331, %1324
  %1346 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i64 0, i64 0))
  %1347 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1348 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1347, i32 0, i32 37
  %1349 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1350 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1349, i32 0, i32 37
  %1351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1350, i32 0, i32 0
  %1352 = load i32*, i32** %1351, align 8
  %1353 = getelementptr inbounds i32, i32* %1352, i64 0
  %1354 = load i32, i32* %1353, align 4
  %1355 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1356 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1355, i32 0, i32 37
  %1357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1356, i32 0, i32 0
  %1358 = load i32*, i32** %1357, align 8
  %1359 = getelementptr inbounds i32, i32* %1358, i64 1
  %1360 = load i32, i32* %1359, align 4
  %1361 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1362 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1361, i32 0, i32 6
  %1363 = load i32, i32* %1362, align 8
  %1364 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %1365 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %1364, i32 0, i32 1
  %1366 = load i32, i32* %1365, align 4
  %1367 = sext i32 %1366 to i64
  %1368 = call i32 @print_pool(%struct.TYPE_11__* %1348, i32 %1354, i32 %1360, i32 %1363, i64 %1367)
  br label %1369

1369:                                             ; preds = %1345, %1338, %1319
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.icmpcodeent* @geticmpcodebynumber(i32, i32, i32) #1

declare dso_local i32 @print_pool(%struct.TYPE_11__*, i32, i32, i32, i64) #1

declare dso_local %struct.protoent* @getprotobynumber(i32) #1

declare dso_local i32 @print_fromto(i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @print_ugid(i64, i32, i32, i8*, i32) #1

declare dso_local i32 @print_flags(i64) #1

declare dso_local %struct.icmptypeent* @geticmptypebynumber(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, double) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @PF_AZERO(i32*, i32) #1

declare dso_local i32* @inet_ntop(i32, i32*, i8*, i32) #1

declare dso_local i32 @ntohs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

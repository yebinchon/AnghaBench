; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"aCdilrsTvw46c:N:R:t:W:\00", align 1
@o_mode = common dso_local global i32 0, align 4
@M_AXFR = common dso_local global i32 0, align 4
@M_SINGLE_Q = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_ANY = common dso_local global i64 0, align 8
@o_rrtype = common dso_local global i64 0, align 8
@o_verbose = common dso_local global i32 0, align 4
@M_SOA = common dso_local global i32 0, align 4
@o_print_rr_server = common dso_local global i32 0, align 4
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@o_rrclass = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid class: %s\0A\00", align 1
@o_ip6_int = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_AXFR = common dso_local global i64 0, align 8
@o_tcp = common dso_local global i32 0, align 4
@o_ndots = common dso_local global i8* null, align 8
@o_recursive = common dso_local global i32 0, align 4
@o_retries = common dso_local global i32 0, align 4
@o_ignore_servfail = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"ixfr=\00", align 1
@LDNS_RR_TYPE_IXFR = common dso_local global i64 0, align 8
@o_ixfr_serial = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"invalid type: %s\0A\00", align 1
@M_IXFR = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@o_timeout = common dso_local global i32 0, align 4
@LDNS_RESOLV_INET = common dso_local global i32 0, align 4
@o_ipversion = common dso_local global i32 0, align 4
@LDNS_RESOLV_INET6 = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@o_name = common dso_local global i8* null, align 8
@o_server = common dso_local global i8* null, align 8
@o_print_pkt_server = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_args(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** @progname, align 8
  br label %9

9:                                                ; preds = %125, %2
  %10 = load i32, i32* %3, align 4
  %11 = load i8**, i8*** %4, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %5, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %126

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %123 [
    i32 97, label %16
    i32 67, label %24
    i32 99, label %28
    i32 100, label %37
    i32 105, label %38
    i32 108, label %39
    i32 78, label %46
    i32 110, label %53
    i32 114, label %54
    i32 82, label %55
    i32 115, label %67
    i32 84, label %68
    i32 116, label %69
    i32 118, label %108
    i32 119, label %109
    i32 87, label %111
    i32 52, label %119
    i32 54, label %121
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @o_mode, align 4
  %18 = load i32, i32* @M_AXFR, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @M_SINGLE_Q, align 4
  store i32 %21, i32* @o_mode, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i64, i64* @LDNS_RR_TYPE_ANY, align 8
  store i64 %23, i64* @o_rrtype, align 8
  store i32 1, i32* @o_verbose, align 4
  br label %125

24:                                               ; preds = %14
  %25 = load i32, i32* @M_SOA, align 4
  store i32 %25, i32* @o_mode, align 4
  store i32 1, i32* @o_print_rr_server, align 4
  %26 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  store i32 %26, i32* @o_rrclass, align 4
  %27 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  store i64 %27, i64* @o_rrtype, align 8
  br label %125

28:                                               ; preds = %14
  %29 = load i32, i32* @optarg, align 4
  %30 = call i32 @ldns_get_rr_class_by_name(i32 %29)
  store i32 %30, i32* @o_rrclass, align 4
  %31 = load i32, i32* @o_rrclass, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @optarg, align 4
  %35 = call i32 @die(i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %28
  br label %125

37:                                               ; preds = %14
  store i32 1, i32* @o_verbose, align 4
  br label %125

38:                                               ; preds = %14
  store i32 1, i32* @o_ip6_int, align 4
  br label %125

39:                                               ; preds = %14
  %40 = load i32, i32* @M_AXFR, align 4
  store i32 %40, i32* @o_mode, align 4
  %41 = load i64, i64* @o_rrtype, align 8
  %42 = icmp eq i64 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i64, i64* @LDNS_RR_TYPE_AXFR, align 8
  store i64 %44, i64* @o_rrtype, align 8
  br label %45

45:                                               ; preds = %43, %39
  store i32 1, i32* @o_tcp, align 4
  br label %125

46:                                               ; preds = %14
  %47 = load i32, i32* @optarg, align 4
  %48 = call i8* @atoi(i32 %47)
  store i8* %48, i8** @o_ndots, align 8
  %49 = load i8*, i8** @o_ndots, align 8
  %50 = icmp ult i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i8* null, i8** @o_ndots, align 8
  br label %52

52:                                               ; preds = %51, %46
  br label %125

53:                                               ; preds = %14
  br label %125

54:                                               ; preds = %14
  store i32 0, i32* @o_recursive, align 4
  br label %125

55:                                               ; preds = %14
  %56 = load i32, i32* @optarg, align 4
  %57 = call i8* @atoi(i32 %56)
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* @o_retries, align 4
  %59 = load i32, i32* @o_retries, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 1, i32* @o_retries, align 4
  br label %62

62:                                               ; preds = %61, %55
  %63 = load i32, i32* @o_retries, align 4
  %64 = icmp sgt i32 %63, 255
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 255, i32* @o_retries, align 4
  br label %66

66:                                               ; preds = %65, %62
  br label %125

67:                                               ; preds = %14
  store i32 0, i32* @o_ignore_servfail, align 4
  br label %125

68:                                               ; preds = %14
  store i32 1, i32* @o_tcp, align 4
  br label %125

69:                                               ; preds = %14
  %70 = load i32, i32* @o_mode, align 4
  %71 = load i32, i32* @M_AXFR, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @M_SINGLE_Q, align 4
  store i32 %74, i32* @o_mode, align 4
  br label %75

75:                                               ; preds = %73, %69
  %76 = load i32, i32* @optarg, align 4
  %77 = call i32 @strncasecmp(i32 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i64, i64* @LDNS_RR_TYPE_IXFR, align 8
  store i64 %80, i64* @o_rrtype, align 8
  %81 = load i32, i32* @optarg, align 4
  %82 = add nsw i32 %81, 5
  %83 = call i8* @atol(i32 %82)
  store i8* %83, i8** @o_ixfr_serial, align 8
  br label %93

84:                                               ; preds = %75
  %85 = load i32, i32* @optarg, align 4
  %86 = call i64 @ldns_get_rr_type_by_name(i32 %85)
  store i64 %86, i64* @o_rrtype, align 8
  %87 = load i64, i64* @o_rrtype, align 8
  %88 = icmp sle i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @optarg, align 4
  %91 = call i32 @die(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %89, %84
  br label %93

93:                                               ; preds = %92, %79
  %94 = load i64, i64* @o_rrtype, align 8
  %95 = load i64, i64* @LDNS_RR_TYPE_AXFR, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* @M_AXFR, align 4
  store i32 %98, i32* @o_mode, align 4
  %99 = load i64, i64* @LDNS_RR_TYPE_ANY, align 8
  store i64 %99, i64* @o_rrtype, align 8
  store i32 1, i32* @o_verbose, align 4
  br label %100

100:                                              ; preds = %97, %93
  %101 = load i64, i64* @o_rrtype, align 8
  %102 = load i64, i64* @LDNS_RR_TYPE_IXFR, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* @M_IXFR, align 4
  store i32 %105, i32* @o_mode, align 4
  %106 = load i64, i64* @LDNS_RR_TYPE_ANY, align 8
  store i64 %106, i64* @o_rrtype, align 8
  br label %107

107:                                              ; preds = %104, %100
  br label %125

108:                                              ; preds = %14
  store i32 1, i32* @o_verbose, align 4
  br label %125

109:                                              ; preds = %14
  %110 = load i32, i32* @INT_MAX, align 4
  store i32 %110, i32* @o_timeout, align 4
  br label %125

111:                                              ; preds = %14
  %112 = load i32, i32* @optarg, align 4
  %113 = call i8* @atol(i32 %112)
  %114 = ptrtoint i8* %113 to i32
  store i32 %114, i32* @o_timeout, align 4
  %115 = load i32, i32* @o_timeout, align 4
  %116 = icmp sle i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  store i32 1, i32* @o_timeout, align 4
  br label %118

118:                                              ; preds = %117, %111
  br label %125

119:                                              ; preds = %14
  %120 = load i32, i32* @LDNS_RESOLV_INET, align 4
  store i32 %120, i32* @o_ipversion, align 4
  br label %125

121:                                              ; preds = %14
  %122 = load i32, i32* @LDNS_RESOLV_INET6, align 4
  store i32 %122, i32* @o_ipversion, align 4
  br label %125

123:                                              ; preds = %14
  %124 = call i32 (...) @usage()
  br label %125

125:                                              ; preds = %123, %121, %119, %118, %109, %108, %107, %68, %67, %66, %54, %53, %52, %45, %38, %37, %36, %24, %22
  br label %9

126:                                              ; preds = %9
  %127 = load i64, i64* @optind, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = sub nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %3, align 4
  %132 = load i64, i64* @optind, align 8
  %133 = load i8**, i8*** %4, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 %132
  store i8** %134, i8*** %4, align 8
  %135 = load i32, i32* %3, align 4
  %136 = icmp slt i32 %135, 1
  br i1 %136, label %137, label %139

137:                                              ; preds = %126
  %138 = call i32 (...) @usage()
  br label %139

139:                                              ; preds = %137, %126
  %140 = load i8**, i8*** %4, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 0
  %142 = load i8*, i8** %141, align 8
  store i8* %142, i8** @o_name, align 8
  %143 = load i32, i32* %3, align 4
  %144 = icmp sgt i32 %143, 1
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load i8**, i8*** %4, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 1
  %148 = load i8*, i8** %147, align 8
  store i8* %148, i8** @o_server, align 8
  store i32 1, i32* @o_print_pkt_server, align 4
  br label %149

149:                                              ; preds = %145, %139
  %150 = load i64, i64* @o_rrtype, align 8
  %151 = icmp eq i64 %150, -1
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  store i64 %153, i64* @o_rrtype, align 8
  br label %154

154:                                              ; preds = %152, %149
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @ldns_get_rr_class_by_name(i32) #1

declare dso_local i32 @die(i32, i8*, i32) #1

declare dso_local i8* @atoi(i32) #1

declare dso_local i32 @strncasecmp(i32, i8*, i32) #1

declare dso_local i8* @atol(i32) #1

declare dso_local i64 @ldns_get_rr_type_by_name(i32) #1

declare dso_local i32 @usage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

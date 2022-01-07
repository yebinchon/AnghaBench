; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"error creating resolver: %s\00", align 1
@o_tcp = common dso_local global i64 0, align 8
@o_timeout = common dso_local global i64 0, align 8
@DEFAULT_TCP_TIMEOUT = common dso_local global i64 0, align 8
@DEFAULT_UDP_TIMEOUT = common dso_local global i64 0, align 8
@o_retries = common dso_local global i64 0, align 8
@o_ipversion = common dso_local global i32 0, align 4
@o_server = common dso_local global i64 0, align 8
@o_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"in-addr.arpa\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"can't reverse '%s': %s\00", align 1
@LDNS_STATUS_MEM_ERR = common dso_local global i64 0, align 8
@M_SINGLE_Q = common dso_local global i64 0, align 8
@o_mode = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_PTR = common dso_local global i32 0, align 4
@o_rrtype = common dso_local global i32 0, align 4
@o_ip6_int = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"ip6.int\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"ip6.arpa\00", align 1
@M_SOA = common dso_local global i64 0, align 8
@M_AXFR = common dso_local global i64 0, align 8
@M_IXFR = common dso_local global i64 0, align 8
@o_ndots = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.timeval, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @parse_args(i32 %11, i8** %12)
  %14 = call i64 @ldns_resolver_new_default(i32** %8)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @LDNS_STATUS_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @ldns_get_errorstr_by_id(i64 %19)
  %21 = call i32 (i32, i8*, i32, ...) @die(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32*, i32** %8, align 8
  %24 = call i64 @ldns_resolver_nameserver_count(i32* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @ldns_resolver_push_default_servers(i32* %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i32*, i32** %8, align 8
  %31 = load i64, i64* @o_tcp, align 8
  %32 = call i32 @ldns_resolver_set_usevc(i32* %30, i64 %31)
  %33 = load i64, i64* @o_timeout, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* @o_timeout, align 8
  br label %46

37:                                               ; preds = %29
  %38 = load i64, i64* @o_tcp, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i64, i64* @DEFAULT_TCP_TIMEOUT, align 8
  br label %44

42:                                               ; preds = %37
  %43 = load i64, i64* @DEFAULT_UDP_TIMEOUT, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i64 [ %41, %40 ], [ %43, %42 ]
  br label %46

46:                                               ; preds = %44, %35
  %47 = phi i64 [ %36, %35 ], [ %45, %44 ]
  %48 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = bitcast %struct.timeval* %10 to { i64, i64 }*
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %51, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @ldns_resolver_set_timeout(i32* %50, i64 %53, i64 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = load i64, i64* @o_retries, align 8
  %59 = add nsw i64 %58, 1
  %60 = call i32 @ldns_resolver_set_retry(i32* %57, i64 %59)
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* @o_ipversion, align 4
  %63 = call i32 @ldns_resolver_set_ip6(i32* %61, i32 %62)
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @ldns_resolver_set_defnames(i32* %64, i32 0)
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @ldns_resolver_set_fallback(i32* %66, i32 0)
  %68 = load i64, i64* @o_server, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %46
  %71 = load i32*, i32** %8, align 8
  %72 = load i64, i64* @o_server, align 8
  %73 = call i32 @resolver_set_nameserver_str(i32* %71, i64 %72)
  br label %74

74:                                               ; preds = %70, %46
  %75 = load i32, i32* @o_name, align 4
  %76 = call i64 @ldns_str2rdf_a(i32** %6, i32 %75)
  %77 = load i64, i64* @LDNS_STATUS_OK, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %74
  %80 = load i32*, i32** %6, align 8
  %81 = call i32* @ldns_rdf_reverse_a(i32* %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32* %81, i32** %7, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i32, i32* @o_name, align 4
  %86 = load i64, i64* @LDNS_STATUS_MEM_ERR, align 8
  %87 = call i32 @ldns_get_errorstr_by_id(i64 %86)
  %88 = call i32 (i32, i8*, i32, ...) @die(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %87)
  br label %89

89:                                               ; preds = %84, %79
  %90 = load i64, i64* @M_SINGLE_Q, align 8
  store i64 %90, i64* @o_mode, align 8
  %91 = load i32, i32* @LDNS_RR_TYPE_PTR, align 4
  store i32 %91, i32* @o_rrtype, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @doquery(i32* %92, i32* %93)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %3, align 4
  br label %159

98:                                               ; preds = %74
  %99 = load i32, i32* @o_name, align 4
  %100 = call i64 @ldns_str2rdf_aaaa(i32** %6, i32 %99)
  %101 = load i64, i64* @LDNS_STATUS_OK, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %126

103:                                              ; preds = %98
  %104 = load i32*, i32** %6, align 8
  %105 = load i64, i64* @o_ip6_int, align 8
  %106 = icmp ne i64 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %109 = call i32* @ldns_rdf_reverse_aaaa(i32* %104, i8* %108)
  store i32* %109, i32** %7, align 8
  %110 = load i32*, i32** %7, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %103
  %113 = load i32, i32* @o_name, align 4
  %114 = load i64, i64* @LDNS_STATUS_MEM_ERR, align 8
  %115 = call i32 @ldns_get_errorstr_by_id(i64 %114)
  %116 = call i32 (i32, i8*, i32, ...) @die(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %115)
  br label %117

117:                                              ; preds = %112, %103
  %118 = load i64, i64* @M_SINGLE_Q, align 8
  store i64 %118, i64* @o_mode, align 8
  %119 = load i32, i32* @LDNS_RR_TYPE_PTR, align 4
  store i32 %119, i32* @o_rrtype, align 4
  %120 = load i32*, i32** %8, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @doquery(i32* %120, i32* %121)
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %3, align 4
  br label %159

126:                                              ; preds = %98
  br label %127

127:                                              ; preds = %126
  %128 = load i64, i64* @o_mode, align 8
  %129 = load i64, i64* @M_SOA, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  br label %145

132:                                              ; preds = %127
  %133 = load i64, i64* @o_mode, align 8
  %134 = load i64, i64* @M_AXFR, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %143

137:                                              ; preds = %132
  %138 = load i64, i64* @o_mode, align 8
  %139 = load i64, i64* @M_IXFR, align 8
  %140 = icmp eq i64 %138, %139
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 (i32*, i32, i32)* @dozonetransfer, i32 (i32*, i32, i32)* @dosearch
  br label %143

143:                                              ; preds = %137, %136
  %144 = phi i32 (i32*, i32, i32)* [ @dozonetransfer, %136 ], [ %142, %137 ]
  br label %145

145:                                              ; preds = %143, %131
  %146 = phi i32 (i32*, i32, i32)* [ @dosoa, %131 ], [ %144, %143 ]
  %147 = load i32*, i32** %8, align 8
  %148 = load i32, i32* @o_name, align 4
  %149 = call i32 @safe_str2rdf_dname(i32 %148)
  %150 = load i32, i32* @o_name, align 4
  %151 = call i64 @ndots(i32 %150)
  %152 = load i64, i64* @o_ndots, align 8
  %153 = icmp sge i64 %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 %146(i32* %147, i32 %149, i32 %154)
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %145, %117, %89
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @parse_args(i32, i8**) #1

declare dso_local i64 @ldns_resolver_new_default(i32**) #1

declare dso_local i32 @die(i32, i8*, i32, ...) #1

declare dso_local i32 @ldns_get_errorstr_by_id(i64) #1

declare dso_local i64 @ldns_resolver_nameserver_count(i32*) #1

declare dso_local i32 @ldns_resolver_push_default_servers(i32*) #1

declare dso_local i32 @ldns_resolver_set_usevc(i32*, i64) #1

declare dso_local i32 @ldns_resolver_set_timeout(i32*, i64, i64) #1

declare dso_local i32 @ldns_resolver_set_retry(i32*, i64) #1

declare dso_local i32 @ldns_resolver_set_ip6(i32*, i32) #1

declare dso_local i32 @ldns_resolver_set_defnames(i32*, i32) #1

declare dso_local i32 @ldns_resolver_set_fallback(i32*, i32) #1

declare dso_local i32 @resolver_set_nameserver_str(i32*, i64) #1

declare dso_local i64 @ldns_str2rdf_a(i32**, i32) #1

declare dso_local i32* @ldns_rdf_reverse_a(i32*, i8*) #1

declare dso_local i32 @doquery(i32*, i32*) #1

declare dso_local i64 @ldns_str2rdf_aaaa(i32**, i32) #1

declare dso_local i32* @ldns_rdf_reverse_aaaa(i32*, i8*) #1

declare dso_local i32 @dosoa(i32*, i32, i32) #1

declare dso_local i32 @dozonetransfer(i32*, i32, i32) #1

declare dso_local i32 @dosearch(i32*, i32, i32) #1

declare dso_local i32 @safe_str2rdf_dname(i32) #1

declare dso_local i64 @ndots(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

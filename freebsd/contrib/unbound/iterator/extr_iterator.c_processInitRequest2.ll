; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_processInitRequest2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_processInitRequest2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.iter_qstate = type { %struct.TYPE_7__, i64, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64, i64, i32, i32* }
%struct.TYPE_8__ = type { i64, i32* }
%struct.iter_hints_stub = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"resolving (init part 2): \00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"internal or malloc fail: no dp for refetch\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"malloc failure, no delegation info\00", align 1
@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@INIT_REQUEST_3_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, %struct.iter_qstate*, i32)* @processInitRequest2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processInitRequest2(%struct.module_qstate* %0, %struct.iter_qstate* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module_qstate*, align 8
  %6 = alloca %struct.iter_qstate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iter_hints_stub*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %5, align 8
  store %struct.iter_qstate* %1, %struct.iter_qstate** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @VERB_QUERY, align 4
  %12 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %13 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %12, i32 0, i32 1
  %14 = call i32 @log_query_info(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %13)
  %15 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %16 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %20 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %24 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %92

27:                                               ; preds = %3
  %28 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %29 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %28, i32 0, i32 2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = icmp ne %struct.TYPE_8__* %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = call i32 @log_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %35 = call i32 @errinf(%struct.module_qstate* %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %39 = call i32 @error_response(%struct.module_qstate* %36, i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %141

40:                                               ; preds = %27
  %41 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %42 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %47 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %51 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %55 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %54, i32 0, i32 2
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = call %struct.iter_hints_stub* @hints_lookup_stub(i32 %45, i32* %49, i32 %53, %struct.TYPE_8__* %56)
  store %struct.iter_hints_stub* %57, %struct.iter_hints_stub** %10, align 8
  %58 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %10, align 8
  %59 = icmp ne %struct.iter_hints_stub* %58, null
  br i1 %59, label %60, label %80

60:                                               ; preds = %40
  %61 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %10, align 8
  %62 = getelementptr inbounds %struct.iter_hints_stub, %struct.iter_hints_stub* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %60
  %68 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %69 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %68, i32 0, i32 2
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %10, align 8
  %74 = getelementptr inbounds %struct.iter_hints_stub, %struct.iter_hints_stub* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @dname_subdomain_c(i32* %72, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %67, %60, %40
  %81 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %82 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %81, i32 0, i32 2
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %8, align 8
  %86 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %87 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %86, i32 0, i32 2
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %9, align 8
  br label %91

91:                                               ; preds = %80, %67
  br label %92

92:                                               ; preds = %91, %3
  %93 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %94 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %104, label %99

99:                                               ; preds = %92
  %100 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %101 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %99, %92
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @dname_is_root(i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = call i32 @dname_remove_label(i32** %8, i64* %9)
  br label %110

110:                                              ; preds = %108, %104
  %111 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %112 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %111, i32 0, i32 1
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %110, %99
  %114 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %115 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = load i64, i64* %9, align 8
  %118 = call i32 @auth_zone_delegpt(%struct.module_qstate* %114, %struct.iter_qstate* %115, i32* %116, i64 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %113
  %121 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %124 = call i32 @error_response(%struct.module_qstate* %121, i32 %122, i32 %123)
  store i32 %124, i32* %4, align 4
  br label %141

125:                                              ; preds = %113
  %126 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %127 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load i32*, i32** %8, align 8
  %130 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %131 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @prime_stub(%struct.module_qstate* %126, %struct.iter_qstate* %127, i32 %128, i32* %129, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %125
  store i32 0, i32* %4, align 4
  br label %141

137:                                              ; preds = %125
  %138 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %139 = load i32, i32* @INIT_REQUEST_3_STATE, align 4
  %140 = call i32 @next_state(%struct.iter_qstate* %138, i32 %139)
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %137, %136, %120, %32
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @log_query_info(i32, i8*, i32*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @errinf(%struct.module_qstate*, i8*) #1

declare dso_local i32 @error_response(%struct.module_qstate*, i32, i32) #1

declare dso_local %struct.iter_hints_stub* @hints_lookup_stub(i32, i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i64 @dname_subdomain_c(i32*, i32) #1

declare dso_local i32 @dname_is_root(i32*) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

declare dso_local i32 @auth_zone_delegpt(%struct.module_qstate*, %struct.iter_qstate*, i32*, i64) #1

declare dso_local i64 @prime_stub(%struct.module_qstate*, %struct.iter_qstate*, i32, i32*, i32) #1

declare dso_local i32 @next_state(%struct.iter_qstate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

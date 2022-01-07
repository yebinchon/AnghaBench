; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_handle_event_pass.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_handle_event_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, i64* }
%struct.TYPE_6__ = type { i64, i32, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.dns64_qstate = type { i64 }

@DNS64_NEW_QUERY = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_PTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"\03ip6\04arpa\00", align 1
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8
@BIT_CD = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"dns64: ignore-aaaa and synthesize anyway\00", align 1
@DNS64_SUBQUERY_FINISHED = common dso_local global i64 0, align 8
@module_finished = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"dns64: pass to next module\00", align 1
@module_wait_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, i32)* @handle_event_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_event_pass(%struct.module_qstate* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.module_qstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dns64_qstate*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %8 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %7, i32 0, i32 3
  %9 = load i64*, i64** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.dns64_qstate*
  store %struct.dns64_qstate* %14, %struct.dns64_qstate** %6, align 8
  %15 = load %struct.dns64_qstate*, %struct.dns64_qstate** %6, align 8
  %16 = icmp ne %struct.dns64_qstate* %15, null
  br i1 %16, label %17, label %49

17:                                               ; preds = %2
  %18 = load %struct.dns64_qstate*, %struct.dns64_qstate** %6, align 8
  %19 = getelementptr inbounds %struct.dns64_qstate, %struct.dns64_qstate* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DNS64_NEW_QUERY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %17
  %24 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %25 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LDNS_RR_TYPE_PTR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %23
  %31 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %32 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 74
  br i1 %35, label %36, label %49

36:                                               ; preds = %30
  %37 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %38 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 64
  %42 = bitcast i32* %41 to i8*
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %36
  %46 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @handle_ipv6_ptr(%struct.module_qstate* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %127

49:                                               ; preds = %36, %30, %23, %17, %2
  %50 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %51 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %49
  %59 = load %struct.dns64_qstate*, %struct.dns64_qstate** %6, align 8
  %60 = icmp ne %struct.dns64_qstate* %59, null
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load %struct.dns64_qstate*, %struct.dns64_qstate** %6, align 8
  %63 = getelementptr inbounds %struct.dns64_qstate, %struct.dns64_qstate* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DNS64_NEW_QUERY, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %69 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @generate_type_A_query(%struct.module_qstate* %75, i32 %76)
  store i32 %77, i32* %3, align 4
  br label %127

78:                                               ; preds = %67, %61, %58, %49
  %79 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i64 @dns64_always_synth_for_qname(%struct.module_qstate* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %112

83:                                               ; preds = %78
  %84 = load %struct.dns64_qstate*, %struct.dns64_qstate** %6, align 8
  %85 = icmp ne %struct.dns64_qstate* %84, null
  br i1 %85, label %86, label %112

86:                                               ; preds = %83
  %87 = load %struct.dns64_qstate*, %struct.dns64_qstate** %6, align 8
  %88 = getelementptr inbounds %struct.dns64_qstate, %struct.dns64_qstate* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @DNS64_NEW_QUERY, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %112

92:                                               ; preds = %86
  %93 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %94 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @BIT_CD, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %112, label %99

99:                                               ; preds = %92
  %100 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %101 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load i32, i32* @VERB_ALGO, align 4
  %108 = call i32 @verbose(i32 %107, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %109 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @generate_type_A_query(%struct.module_qstate* %109, i32 %110)
  store i32 %111, i32* %3, align 4
  br label %127

112:                                              ; preds = %99, %92, %86, %83, %78
  %113 = load %struct.dns64_qstate*, %struct.dns64_qstate** %6, align 8
  %114 = icmp ne %struct.dns64_qstate* %113, null
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = load %struct.dns64_qstate*, %struct.dns64_qstate** %6, align 8
  %117 = getelementptr inbounds %struct.dns64_qstate, %struct.dns64_qstate* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @DNS64_SUBQUERY_FINISHED, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i32, i32* @module_finished, align 4
  store i32 %122, i32* %3, align 4
  br label %127

123:                                              ; preds = %115, %112
  %124 = load i32, i32* @VERB_ALGO, align 4
  %125 = call i32 @verbose(i32 %124, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %126 = load i32, i32* @module_wait_module, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %123, %121, %106, %74, %45
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @handle_ipv6_ptr(%struct.module_qstate*, i32) #1

declare dso_local i32 @generate_type_A_query(%struct.module_qstate*, i32) #1

declare dso_local i64 @dns64_always_synth_for_qname(%struct.module_qstate*, i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

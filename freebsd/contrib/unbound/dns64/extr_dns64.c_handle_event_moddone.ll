; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_handle_event_moddone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_handle_event_moddone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__, i32, i64* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.dns64_qstate = type { i64, i32 }

@DNS64_INTERNAL_QUERY = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8
@BIT_CD = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"dns64: ignore-aaaa and synthesize anyway\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@module_finished = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, i32)* @handle_event_moddone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_event_moddone(%struct.module_qstate* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.module_qstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dns64_qstate*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %8 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %7, i32 0, i32 4
  %9 = load i64*, i64** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.dns64_qstate*
  store %struct.dns64_qstate* %14, %struct.dns64_qstate** %6, align 8
  %15 = load %struct.dns64_qstate*, %struct.dns64_qstate** %6, align 8
  %16 = icmp ne %struct.dns64_qstate* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.dns64_qstate*, %struct.dns64_qstate** %6, align 8
  %19 = getelementptr inbounds %struct.dns64_qstate, %struct.dns64_qstate* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DNS64_INTERNAL_QUERY, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %17, %2
  %24 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %25 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %23
  %31 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %32 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BIT_CD, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %63, label %37

37:                                               ; preds = %30
  %38 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %39 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %44 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %51 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %50, i32 0, i32 2
  %52 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %53 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @reply_find_answer_rrset(%struct.TYPE_5__* %51, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %49, %42, %37
  %60 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @generate_type_A_query(%struct.module_qstate* %60, i32 %61)
  store i32 %62, i32* %3, align 4
  br label %137

63:                                               ; preds = %49, %30, %23, %17
  %64 = load %struct.dns64_qstate*, %struct.dns64_qstate** %6, align 8
  %65 = icmp ne %struct.dns64_qstate* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.dns64_qstate*, %struct.dns64_qstate** %6, align 8
  %68 = getelementptr inbounds %struct.dns64_qstate, %struct.dns64_qstate* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DNS64_INTERNAL_QUERY, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %66, %63
  %73 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %74 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %72
  %80 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %81 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @BIT_CD, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %79
  %87 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i64 @dns64_always_synth_for_qname(%struct.module_qstate* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load i32, i32* @VERB_ALGO, align 4
  %93 = call i32 @verbose(i32 %92, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %94 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @generate_type_A_query(%struct.module_qstate* %94, i32 %95)
  store i32 %96, i32* %3, align 4
  br label %137

97:                                               ; preds = %86, %79, %72, %66
  %98 = load %struct.dns64_qstate*, %struct.dns64_qstate** %6, align 8
  %99 = icmp ne %struct.dns64_qstate* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load %struct.dns64_qstate*, %struct.dns64_qstate** %6, align 8
  %102 = getelementptr inbounds %struct.dns64_qstate, %struct.dns64_qstate* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %135, label %105

105:                                              ; preds = %100, %97
  %106 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %107 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = icmp ne %struct.TYPE_4__* %108, null
  br i1 %109, label %110, label %135

110:                                              ; preds = %105
  %111 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %112 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %135

117:                                              ; preds = %110
  %118 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %119 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %122 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %121, i32 0, i32 2
  %123 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %124 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %129 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dns_cache_store(i32 %120, %struct.TYPE_5__* %122, i64 %127, i32 0, i32 0, i32 0, i32* null, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %117
  %134 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %117, %110, %105, %100
  %136 = load i32, i32* @module_finished, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %135, %91, %59
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i64 @reply_find_answer_rrset(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @generate_type_A_query(%struct.module_qstate*, i32) #1

declare dso_local i64 @dns64_always_synth_for_qname(%struct.module_qstate*, i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @dns_cache_store(i32, %struct.TYPE_5__*, i64, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @log_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

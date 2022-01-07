; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_dns64_inform_super.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_dns64_inform_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_5__, i32, i32, %struct.dns64_qstate**, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.dns64_qstate = type { i32, i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"dns64: inform_super, sub is\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"super is\00", align 1
@DNS64_SUBQUERY_FINISHED = common dso_local global i32 0, align 4
@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_PTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dns64_inform_super(%struct.module_qstate* %0, i32 %1, %struct.module_qstate* %2) #0 {
  %4 = alloca %struct.module_qstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_qstate*, align 8
  %7 = alloca %struct.dns64_qstate*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.module_qstate* %2, %struct.module_qstate** %6, align 8
  %8 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %9 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %8, i32 0, i32 6
  %10 = load %struct.dns64_qstate**, %struct.dns64_qstate*** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.dns64_qstate*, %struct.dns64_qstate** %10, i64 %12
  %14 = load %struct.dns64_qstate*, %struct.dns64_qstate** %13, align 8
  store %struct.dns64_qstate* %14, %struct.dns64_qstate** %7, align 8
  %15 = load i32, i32* @VERB_ALGO, align 4
  %16 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %17 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %16, i32 0, i32 3
  %18 = call i32 @log_query_info(i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %17)
  %19 = load i32, i32* @VERB_ALGO, align 4
  %20 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %21 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %20, i32 0, i32 3
  %22 = call i32 @log_query_info(i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_5__* %21)
  %23 = load %struct.dns64_qstate*, %struct.dns64_qstate** %7, align 8
  %24 = icmp ne %struct.dns64_qstate* %23, null
  br i1 %24, label %45, label %25

25:                                               ; preds = %3
  %26 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %27 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @regional_alloc(i32 %28, i32 8)
  %30 = inttoptr i64 %29 to %struct.dns64_qstate*
  store %struct.dns64_qstate* %30, %struct.dns64_qstate** %7, align 8
  %31 = load %struct.dns64_qstate*, %struct.dns64_qstate** %7, align 8
  %32 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %33 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %32, i32 0, i32 6
  %34 = load %struct.dns64_qstate**, %struct.dns64_qstate*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.dns64_qstate*, %struct.dns64_qstate** %34, i64 %36
  store %struct.dns64_qstate* %31, %struct.dns64_qstate** %37, align 8
  %38 = load %struct.dns64_qstate*, %struct.dns64_qstate** %7, align 8
  %39 = call i32 @memset(%struct.dns64_qstate* %38, i32 0, i32 8)
  %40 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %41 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dns64_qstate*, %struct.dns64_qstate** %7, align 8
  %44 = getelementptr inbounds %struct.dns64_qstate, %struct.dns64_qstate* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %25, %3
  %46 = load i32, i32* @DNS64_SUBQUERY_FINISHED, align 4
  %47 = load %struct.dns64_qstate*, %struct.dns64_qstate** %7, align 8
  %48 = getelementptr inbounds %struct.dns64_qstate, %struct.dns64_qstate* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %50 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %66, label %54

54:                                               ; preds = %45
  %55 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %56 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = icmp ne %struct.TYPE_4__* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %61 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59, %54, %45
  br label %129

67:                                               ; preds = %59
  %68 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %69 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %75 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %78 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %73, %67
  %80 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %81 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %89 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %90 = call i32 @dns64_adjust_a(i32 %87, %struct.module_qstate* %88, %struct.module_qstate* %89)
  br label %103

91:                                               ; preds = %79
  %92 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %93 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @LDNS_RR_TYPE_PTR, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @log_assert(i32 %98)
  %100 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %101 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %102 = call i32 @dns64_adjust_ptr(%struct.module_qstate* %100, %struct.module_qstate* %101)
  br label %103

103:                                              ; preds = %91, %86
  %104 = load %struct.dns64_qstate*, %struct.dns64_qstate** %7, align 8
  %105 = icmp ne %struct.dns64_qstate* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.dns64_qstate*, %struct.dns64_qstate** %7, align 8
  %108 = getelementptr inbounds %struct.dns64_qstate, %struct.dns64_qstate* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %129, label %111

111:                                              ; preds = %106, %103
  %112 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %113 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %116 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %115, i32 0, i32 3
  %117 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %118 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %117, i32 0, i32 2
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %123 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @dns_cache_store(i32 %114, %struct.TYPE_5__* %116, i32 %121, i32 0, i32 0, i32 0, i32* null, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %111
  %128 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %129

129:                                              ; preds = %66, %127, %111, %106
  ret void
}

declare dso_local i32 @log_query_info(i32, i8*, %struct.TYPE_5__*) #1

declare dso_local i64 @regional_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.dns64_qstate*, i32, i32) #1

declare dso_local i32 @dns64_adjust_a(i32, %struct.module_qstate*, %struct.module_qstate*) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @dns64_adjust_ptr(%struct.module_qstate*, %struct.module_qstate*) #1

declare dso_local i32 @dns_cache_store(i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @log_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

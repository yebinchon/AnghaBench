; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_error_supers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_error_supers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { %struct.TYPE_4__, i32, i32, i64* }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.iter_qstate = type { i32, i32*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.delegpt_ns = type { i32 }

@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"subq error, but not interested\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"superq\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"out of memory adding missing\00", align 1
@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@QUERYTARGETS_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_qstate*, i32, %struct.module_qstate*)* @error_supers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_supers(%struct.module_qstate* %0, i32 %1, %struct.module_qstate* %2) #0 {
  %4 = alloca %struct.module_qstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_qstate*, align 8
  %7 = alloca %struct.iter_qstate*, align 8
  %8 = alloca %struct.delegpt_ns*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.module_qstate* %2, %struct.module_qstate** %6, align 8
  %9 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %10 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %9, i32 0, i32 3
  %11 = load i64*, i64** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.iter_qstate*
  store %struct.iter_qstate* %16, %struct.iter_qstate** %7, align 8
  %17 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %18 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %25 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %84

30:                                               ; preds = %23, %3
  store %struct.delegpt_ns* null, %struct.delegpt_ns** %8, align 8
  %31 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %32 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %36 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %30
  %40 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %41 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %44 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %48 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.delegpt_ns* @delegpt_find_ns(i32* %42, i32 %46, i32 %50)
  store %struct.delegpt_ns* %51, %struct.delegpt_ns** %8, align 8
  br label %52

52:                                               ; preds = %39, %30
  %53 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  %54 = icmp ne %struct.delegpt_ns* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @VERB_ALGO, align 4
  %57 = call i32 @verbose(i32 %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @VERB_ALGO, align 4
  %59 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %60 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %59, i32 0, i32 0
  %61 = call i32 @log_query_info(i32 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %60)
  br label %98

62:                                               ; preds = %52
  %63 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %64 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %67 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %71 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %74 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @cache_fill_missing(i32 %65, i32 %69, i32 %72, i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %62
  %79 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %62
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  %83 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %82, i32 0, i32 0
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %23
  %85 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %86 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %93 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %92, i32 0, i32 1
  store i32* null, i32** %93, align 8
  br label %94

94:                                               ; preds = %91, %84
  %95 = load i32, i32* @QUERYTARGETS_STATE, align 4
  %96 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %97 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %94, %55
  ret void
}

declare dso_local %struct.delegpt_ns* @delegpt_find_ns(i32*, i32, i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @log_query_info(i32, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @cache_fill_missing(i32, i32, i32, i32*) #1

declare dso_local i32 @log_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

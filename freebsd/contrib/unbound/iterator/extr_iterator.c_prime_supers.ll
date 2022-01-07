; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_prime_supers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_prime_supers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i64, i32, i32, i32, i64, i64* }
%struct.iter_qstate = type { i8*, i64, %struct.delegpt*, i32 }
%struct.delegpt = type { i32 }

@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"prime response was not a positive ANSWER; failing\00", align 1
@QUERYTARGETS_STATE = common dso_local global i8* null, align 8
@VERB_DETAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"priming successful for\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"copy prime response: out of memory\00", align 1
@INIT_REQUEST_3_STATE = common dso_local global i8* null, align 8
@INIT_REQUEST_2_STATE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_qstate*, i32, %struct.module_qstate*)* @prime_supers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prime_supers(%struct.module_qstate* %0, i32 %1, %struct.module_qstate* %2) #0 {
  %4 = alloca %struct.module_qstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_qstate*, align 8
  %7 = alloca %struct.iter_qstate*, align 8
  %8 = alloca %struct.delegpt*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.module_qstate* %2, %struct.module_qstate** %6, align 8
  %9 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %10 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %9, i32 0, i32 5
  %11 = load i64*, i64** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.iter_qstate*
  store %struct.iter_qstate* %16, %struct.iter_qstate** %7, align 8
  store %struct.delegpt* null, %struct.delegpt** %8, align 8
  %17 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %18 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %23 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %3
  %27 = phi i1 [ true, %3 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @log_assert(i32 %28)
  %30 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %31 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @log_assert(i32 %35)
  %37 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %38 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %41 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.delegpt* @delegpt_from_message(i32 %39, i32 %42)
  store %struct.delegpt* %43, %struct.delegpt** %8, align 8
  %44 = load %struct.delegpt*, %struct.delegpt** %8, align 8
  %45 = icmp ne %struct.delegpt* %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %26
  %47 = load i32, i32* @VERB_ALGO, align 4
  %48 = call i32 @verbose(i32 %47, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %50 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %49, i32 0, i32 2
  store %struct.delegpt* null, %struct.delegpt** %50, align 8
  %51 = load i8*, i8** @QUERYTARGETS_STATE, align 8
  %52 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %53 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  br label %100

54:                                               ; preds = %26
  %55 = load i32, i32* @VERB_DETAIL, align 4
  %56 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %57 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %56, i32 0, i32 3
  %58 = call i32 @log_query_info(i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %57)
  %59 = load i32, i32* @VERB_ALGO, align 4
  %60 = load %struct.delegpt*, %struct.delegpt** %8, align 8
  %61 = call i32 @delegpt_log(i32 %59, %struct.delegpt* %60)
  %62 = load %struct.delegpt*, %struct.delegpt** %8, align 8
  %63 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %64 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %63, i32 0, i32 2
  store %struct.delegpt* %62, %struct.delegpt** %64, align 8
  %65 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %66 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %69 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dns_copy_msg(i32 %67, i32 %70)
  %72 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %73 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %75 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %54
  %79 = call i32 @log_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %81 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %80, i32 0, i32 2
  store %struct.delegpt* null, %struct.delegpt** %81, align 8
  %82 = load i8*, i8** @QUERYTARGETS_STATE, align 8
  %83 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %84 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  br label %100

85:                                               ; preds = %54
  %86 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %87 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i8*, i8** @INIT_REQUEST_3_STATE, align 8
  %92 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %93 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %95 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  br label %100

96:                                               ; preds = %85
  %97 = load i8*, i8** @INIT_REQUEST_2_STATE, align 8
  %98 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %99 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %46, %78, %96, %90
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local %struct.delegpt* @delegpt_from_message(i32, i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @log_query_info(i32, i8*, i32*) #1

declare dso_local i32 @delegpt_log(i32, %struct.delegpt*) #1

declare dso_local i32 @dns_copy_msg(i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

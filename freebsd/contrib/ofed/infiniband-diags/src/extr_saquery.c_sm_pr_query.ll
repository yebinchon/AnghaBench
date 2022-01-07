; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_sm_pr_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_sm_pr_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_handle = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.sa_query_result = type { i32 }

@PR = common dso_local global i32 0, align 4
@SLID = common dso_local global i32 0, align 4
@DLID = common dso_local global i32 0, align 4
@IB_SA_ATTR_PATHRECORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sa_handle*, i32*, i32, i32)* @sm_pr_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm_pr_query(%struct.sa_handle* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sa_handle*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sa_query_result, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  store %struct.sa_handle* %0, %struct.sa_handle** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %15 = call i32 @memset(%struct.TYPE_5__* %10, i32 0, i32 12)
  %16 = load i32, i32* %8, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PR, align 4
  %20 = load i32, i32* @SLID, align 4
  %21 = call i32 @CHECK_AND_SET_VAL(i32 %16, i32 16, i32 0, i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PR, align 4
  %26 = load i32, i32* @DLID, align 4
  %27 = call i32 @CHECK_AND_SET_VAL(i32 %22, i32 16, i32 0, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.sa_handle*, %struct.sa_handle** %6, align 8
  %29 = load i32, i32* @IB_SA_ATTR_PATHRECORD, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @get_any_records(%struct.sa_handle* %28, i32 %29, i32 0, i32 %30, %struct.TYPE_5__* %10, i32 12, %struct.sa_query_result* %12)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %5, align 4
  br label %46

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.sa_query_result, %struct.sa_query_result* %12, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_5__* @sa_get_query_rec(i32 %38, i32 0)
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %14, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = call i32 @memcpy(i32* %40, i32* %42, i32 16)
  %44 = call i32 @sa_free_result_mad(%struct.sa_query_result* %12)
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %36, %34
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @CHECK_AND_SET_VAL(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_any_records(%struct.sa_handle*, i32, i32, i32, %struct.TYPE_5__*, i32, %struct.sa_query_result*) #1

declare dso_local %struct.TYPE_5__* @sa_get_query_rec(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sa_free_result_mad(%struct.sa_query_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

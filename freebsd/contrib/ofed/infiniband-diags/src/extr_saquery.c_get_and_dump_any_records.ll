; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_get_and_dump_any_records.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_get_and_dump_any_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_handle = type { i32 }
%struct.query_params = type { i32 }
%struct.sa_query_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sa_handle*, i32, i32, i32, i8*, i64, void (i8*, %struct.query_params*)*, %struct.query_params*)* @get_and_dump_any_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_and_dump_any_records(%struct.sa_handle* %0, i32 %1, i32 %2, i32 %3, i8* %4, i64 %5, void (i8*, %struct.query_params*)* %6, %struct.query_params* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sa_handle*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca void (i8*, %struct.query_params*)*, align 8
  %17 = alloca %struct.query_params*, align 8
  %18 = alloca %struct.sa_query_result, align 4
  %19 = alloca i32, align 4
  store %struct.sa_handle* %0, %struct.sa_handle** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store void (i8*, %struct.query_params*)* %6, void (i8*, %struct.query_params*)** %16, align 8
  store %struct.query_params* %7, %struct.query_params** %17, align 8
  %20 = load %struct.sa_handle*, %struct.sa_handle** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i8*, i8** %14, align 8
  %25 = load i64, i64* %15, align 8
  %26 = call i32 @get_any_records(%struct.sa_handle* %20, i32 %21, i32 %22, i32 %23, i8* %24, i64 %25, %struct.sa_query_result* %18)
  store i32 %26, i32* %19, align 4
  %27 = load i32, i32* %19, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %8
  %30 = load i32, i32* %19, align 4
  store i32 %30, i32* %9, align 4
  br label %36

31:                                               ; preds = %8
  %32 = load void (i8*, %struct.query_params*)*, void (i8*, %struct.query_params*)** %16, align 8
  %33 = load %struct.query_params*, %struct.query_params** %17, align 8
  %34 = call i32 @dump_results(%struct.sa_query_result* %18, void (i8*, %struct.query_params*)* %32, %struct.query_params* %33)
  %35 = call i32 @sa_free_result_mad(%struct.sa_query_result* %18)
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %31, %29
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local i32 @get_any_records(%struct.sa_handle*, i32, i32, i32, i8*, i64, %struct.sa_query_result*) #1

declare dso_local i32 @dump_results(%struct.sa_query_result*, void (i8*, %struct.query_params*)*, %struct.query_params*) #1

declare dso_local i32 @sa_free_result_mad(%struct.sa_query_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

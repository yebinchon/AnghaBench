; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_get_and_dump_all_records.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_get_and_dump_all_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_handle = type { i32 }
%struct.query_params = type { i32 }
%struct.sa_query_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sa_handle*, i32, void (i8*, %struct.query_params*)*, %struct.query_params*)* @get_and_dump_all_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_and_dump_all_records(%struct.sa_handle* %0, i32 %1, void (i8*, %struct.query_params*)* %2, %struct.query_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sa_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (i8*, %struct.query_params*)*, align 8
  %9 = alloca %struct.query_params*, align 8
  %10 = alloca %struct.sa_query_result, align 4
  %11 = alloca i32, align 4
  store %struct.sa_handle* %0, %struct.sa_handle** %6, align 8
  store i32 %1, i32* %7, align 4
  store void (i8*, %struct.query_params*)* %2, void (i8*, %struct.query_params*)** %8, align 8
  store %struct.query_params* %3, %struct.query_params** %9, align 8
  %12 = load %struct.sa_handle*, %struct.sa_handle** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @get_all_records(%struct.sa_handle* %12, i32 %13, %struct.sa_query_result* %10)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %5, align 4
  br label %25

19:                                               ; preds = %4
  %20 = load void (i8*, %struct.query_params*)*, void (i8*, %struct.query_params*)** %8, align 8
  %21 = load %struct.query_params*, %struct.query_params** %9, align 8
  %22 = call i32 @dump_results(%struct.sa_query_result* %10, void (i8*, %struct.query_params*)* %20, %struct.query_params* %21)
  %23 = call i32 @sa_free_result_mad(%struct.sa_query_result* %10)
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %19, %17
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @get_all_records(%struct.sa_handle*, i32, %struct.sa_query_result*) #1

declare dso_local i32 @dump_results(%struct.sa_query_result*, void (i8*, %struct.query_params*)*, %struct.query_params*) #1

declare dso_local i32 @sa_free_result_mad(%struct.sa_query_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

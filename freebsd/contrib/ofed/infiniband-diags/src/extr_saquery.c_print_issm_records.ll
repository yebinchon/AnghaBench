; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_print_issm_records.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_print_issm_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_handle = type { i32 }
%struct.query_params = type { i32 }
%struct.sa_query_result = type { i32 }

@IB_PORT_CAP_IS_SM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"IsSM ports\0A\00", align 1
@dump_portinfo_record = common dso_local global i32 0, align 4
@IB_PORT_CAP_SM_DISAB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"\0AIsSMdisabled ports\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sa_handle*, %struct.query_params*)* @print_issm_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_issm_records(%struct.sa_handle* %0, %struct.query_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sa_handle*, align 8
  %5 = alloca %struct.query_params*, align 8
  %6 = alloca %struct.sa_query_result, align 4
  %7 = alloca i32, align 4
  store %struct.sa_handle* %0, %struct.sa_handle** %4, align 8
  store %struct.query_params* %1, %struct.query_params** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.sa_handle*, %struct.sa_handle** %4, align 8
  %9 = load i32, i32* @IB_PORT_CAP_IS_SM, align 4
  %10 = call i32 @get_issm_records(%struct.sa_handle* %8, i32 %9, %struct.sa_query_result* %6)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  %16 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @dump_portinfo_record, align 4
  %18 = load %struct.query_params*, %struct.query_params** %5, align 8
  %19 = call i32 @dump_results(%struct.sa_query_result* %6, i32 %17, %struct.query_params* %18)
  %20 = call i32 @sa_free_result_mad(%struct.sa_query_result* %6)
  %21 = load %struct.sa_handle*, %struct.sa_handle** %4, align 8
  %22 = load i32, i32* @IB_PORT_CAP_SM_DISAB, align 4
  %23 = call i32 @get_issm_records(%struct.sa_handle* %21, i32 %22, %struct.sa_query_result* %6)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %35

28:                                               ; preds = %15
  %29 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @dump_portinfo_record, align 4
  %31 = load %struct.query_params*, %struct.query_params** %5, align 8
  %32 = call i32 @dump_results(%struct.sa_query_result* %6, i32 %30, %struct.query_params* %31)
  %33 = call i32 @sa_free_result_mad(%struct.sa_query_result* %6)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %28, %26, %13
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @get_issm_records(%struct.sa_handle*, i32, %struct.sa_query_result*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @dump_results(%struct.sa_query_result*, i32, %struct.query_params*) #1

declare dso_local i32 @sa_free_result_mad(%struct.sa_query_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

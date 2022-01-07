; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_print_multicast_member_records.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_print_multicast_member_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_handle = type { i32 }
%struct.query_params = type { i32 }
%struct.sa_query_result = type { i32, i32 }

@IB_SA_ATTR_MCRECORD = common dso_local global i32 0, align 4
@IB_SA_ATTR_NODERECORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sa_handle*, %struct.query_params*)* @print_multicast_member_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_multicast_member_records(%struct.sa_handle* %0, %struct.query_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sa_handle*, align 8
  %5 = alloca %struct.query_params*, align 8
  %6 = alloca %struct.sa_query_result, align 4
  %7 = alloca %struct.sa_query_result, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.sa_handle* %0, %struct.sa_handle** %4, align 8
  store %struct.query_params* %1, %struct.query_params** %5, align 8
  %11 = load %struct.sa_handle*, %struct.sa_handle** %4, align 8
  %12 = load i32, i32* @IB_SA_ATTR_MCRECORD, align 4
  %13 = call i32 @get_all_records(%struct.sa_handle* %11, i32 %12, %struct.sa_query_result* %6)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %48

18:                                               ; preds = %2
  %19 = load %struct.sa_handle*, %struct.sa_handle** %4, align 8
  %20 = load i32, i32* @IB_SA_ATTR_NODERECORD, align 4
  %21 = call i32 @get_all_records(%struct.sa_handle* %19, i32 %20, %struct.sa_query_result* %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %45

25:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %40, %25
  %27 = load i32, i32* %9, align 4
  %28 = getelementptr inbounds %struct.sa_query_result, %struct.sa_query_result* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.sa_query_result, %struct.sa_query_result* %6, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @sa_get_query_rec(i32 %33, i32 %34)
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load %struct.query_params*, %struct.query_params** %5, align 8
  %39 = call i32 @dump_multicast_member_record(i32* %37, %struct.sa_query_result* %7, %struct.query_params* %38)
  br label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %9, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %26

43:                                               ; preds = %26
  %44 = call i32 @sa_free_result_mad(%struct.sa_query_result* %7)
  br label %45

45:                                               ; preds = %43, %24
  %46 = call i32 @sa_free_result_mad(%struct.sa_query_result* %6)
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %16
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @get_all_records(%struct.sa_handle*, i32, %struct.sa_query_result*) #1

declare dso_local i64 @sa_get_query_rec(i32, i32) #1

declare dso_local i32 @dump_multicast_member_record(i32*, %struct.sa_query_result*, %struct.query_params*) #1

declare dso_local i32 @sa_free_result_mad(%struct.sa_query_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

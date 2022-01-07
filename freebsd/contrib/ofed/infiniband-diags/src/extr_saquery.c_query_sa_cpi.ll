; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_query_sa_cpi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_query_sa_cpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_handle = type { i32 }
%struct.query_params = type { i32 }
%struct.sa_query_result = type { i64, i32 }

@IB_MAD_METHOD_GET = common dso_local global i32 0, align 4
@CLASS_PORT_INFO = common dso_local global i32 0, align 4
@ibd_sakey = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Query SA failed: %s\0A\00", align 1
@IB_SA_MAD_STATUS_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sa_handle*, %struct.query_params*)* @query_sa_cpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_sa_cpi(%struct.sa_handle* %0, %struct.query_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sa_handle*, align 8
  %5 = alloca %struct.query_params*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sa_query_result, align 8
  %8 = alloca i32, align 4
  store %struct.sa_handle* %0, %struct.sa_handle** %4, align 8
  store %struct.query_params* %1, %struct.query_params** %5, align 8
  %9 = load %struct.sa_handle*, %struct.sa_handle** %4, align 8
  %10 = load i32, i32* @IB_MAD_METHOD_GET, align 4
  %11 = load i32, i32* @CLASS_PORT_INFO, align 4
  %12 = load i32, i32* @ibd_sakey, align 4
  %13 = call i32 @sa_query(%struct.sa_handle* %9, i32 %10, i32 %11, i32 0, i32 0, i32 %12, i32* null, i32 0, %struct.sa_query_result* %7)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i8* @strerror(i32 %18)
  %20 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %42

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.sa_query_result, %struct.sa_query_result* %7, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IB_SA_MAD_STATUS_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.sa_query_result, %struct.sa_query_result* %7, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @sa_report_err(i64 %29)
  %31 = load i32, i32* @EIO, align 4
  store i32 %31, i32* %8, align 4
  br label %40

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.sa_query_result, %struct.sa_query_result* %7, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32* @sa_get_query_rec(i32 %34, i32 0)
  store i32* %35, i32** %6, align 8
  %36 = load %struct.query_params*, %struct.query_params** %5, align 8
  %37 = getelementptr inbounds %struct.query_params, %struct.query_params* %36, i32 0, i32 0
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @memcpy(i32* %37, i32* %38, i32 4)
  br label %40

40:                                               ; preds = %32, %27
  %41 = call i32 @sa_free_result_mad(%struct.sa_query_result* %7)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %16
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @sa_query(%struct.sa_handle*, i32, i32, i32, i32, i32, i32*, i32, %struct.sa_query_result*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @sa_report_err(i64) #1

declare dso_local i32* @sa_get_query_rec(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sa_free_result_mad(%struct.sa_query_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

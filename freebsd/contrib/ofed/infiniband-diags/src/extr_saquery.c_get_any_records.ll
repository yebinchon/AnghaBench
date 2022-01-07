; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_get_any_records.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_get_any_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_handle = type { i32 }
%struct.sa_query_result = type { i64 }

@IB_MAD_METHOD_GET_TABLE = common dso_local global i32 0, align 4
@ibd_sakey = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Query SA failed: %s\0A\00", align 1
@IB_SA_MAD_STATUS_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sa_handle*, i32, i32, i32, i8*, i64, %struct.sa_query_result*)* @get_any_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_any_records(%struct.sa_handle* %0, i32 %1, i32 %2, i32 %3, i8* %4, i64 %5, %struct.sa_query_result* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sa_handle*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.sa_query_result*, align 8
  %16 = alloca i32, align 4
  store %struct.sa_handle* %0, %struct.sa_handle** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store %struct.sa_query_result* %6, %struct.sa_query_result** %15, align 8
  %17 = load %struct.sa_handle*, %struct.sa_handle** %9, align 8
  %18 = load i32, i32* @IB_MAD_METHOD_GET_TABLE, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @cl_ntoh64(i32 %21)
  %23 = load i32, i32* @ibd_sakey, align 4
  %24 = load i8*, i8** %13, align 8
  %25 = load i64, i64* %14, align 8
  %26 = load %struct.sa_query_result*, %struct.sa_query_result** %15, align 8
  %27 = call i32 @sa_query(%struct.sa_handle* %17, i32 %18, i32 %19, i32 %20, i32 %22, i32 %23, i8* %24, i64 %25, %struct.sa_query_result* %26)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %7
  %31 = load i32, i32* @stderr, align 4
  %32 = load i32, i32* %16, align 4
  %33 = call i8* @strerror(i32 %32)
  %34 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* %16, align 4
  store i32 %35, i32* %8, align 4
  br label %50

36:                                               ; preds = %7
  %37 = load %struct.sa_query_result*, %struct.sa_query_result** %15, align 8
  %38 = getelementptr inbounds %struct.sa_query_result, %struct.sa_query_result* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IB_SA_MAD_STATUS_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.sa_query_result*, %struct.sa_query_result** %15, align 8
  %44 = getelementptr inbounds %struct.sa_query_result, %struct.sa_query_result* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @sa_report_err(i64 %45)
  %47 = load i32, i32* @EIO, align 4
  store i32 %47, i32* %8, align 4
  br label %50

48:                                               ; preds = %36
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %42, %30
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i32 @sa_query(%struct.sa_handle*, i32, i32, i32, i32, i32, i8*, i64, %struct.sa_query_result*) #1

declare dso_local i32 @cl_ntoh64(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @sa_report_err(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

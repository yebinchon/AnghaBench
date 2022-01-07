; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_rpc_gss_svc_max_data_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_rpc_gss_svc_max_data_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { %struct.svc_rpc_gss_client* }
%struct.svc_rpc_gss_client = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"gss_wrap_size_limit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_gss_svc_max_data_length(%struct.svc_req* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.svc_rpc_gss_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.svc_req* %0, %struct.svc_req** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %13 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %12, i32 0, i32 0
  %14 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %13, align 8
  store %struct.svc_rpc_gss_client* %14, %struct.svc_rpc_gss_client** %6, align 8
  %15 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %6, align 8
  %16 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %25 [
    i32 129, label %19
    i32 131, label %21
    i32 130, label %21
    i32 128, label %23
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %3, align 4
  br label %54

21:                                               ; preds = %2, %2
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %7, align 4
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %7, align 4
  br label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

26:                                               ; preds = %23, %21
  %27 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %6, align 8
  %28 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %6, align 8
  %32 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @gss_wrap_size_limit(i64* %10, i32 %29, i32 %30, i32 %33, i32 %34, i64* %8)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @GSS_S_COMPLETE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %26
  %40 = load i64, i64* %8, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %3, align 4
  br label %54

47:                                               ; preds = %26
  %48 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %6, align 8
  %49 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @log_status(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %50, i64 %51, i64 %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %47, %45, %25, %19
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @gss_wrap_size_limit(i64*, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @log_status(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

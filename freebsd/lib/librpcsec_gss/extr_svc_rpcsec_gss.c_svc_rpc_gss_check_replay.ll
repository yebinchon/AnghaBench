; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_check_replay.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_check_replay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rpc_gss_client = type { i64, i32* }

@SVC_RPC_GSS_SEQWINDOW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rpc_gss_client*, i64)* @svc_rpc_gss_check_replay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_rpc_gss_check_replay(%struct.svc_rpc_gss_client* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rpc_gss_client*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.svc_rpc_gss_client* %0, %struct.svc_rpc_gss_client** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %4, align 8
  %11 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sle i64 %9, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %2
  %15 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %4, align 8
  %16 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = sub nsw i64 %17, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @SVC_RPC_GSS_SEQWINDOW, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %3, align 4
  br label %47

26:                                               ; preds = %14
  %27 = load i32, i32* %6, align 4
  %28 = sdiv i32 %27, 32
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = srem i32 %29, 32
  store i32 %30, i32* %8, align 4
  %31 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %4, align 8
  %32 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = shl i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %26
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %3, align 4
  br label %47

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %44, %2
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %42, %24
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_rpc_gss_getcred.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_rpc_gss_getcred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { %struct.svc_rpc_gss_client*, %struct.TYPE_2__ }
%struct.svc_rpc_gss_client = type { i8*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@RPCSEC_GSS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_gss_getcred(%struct.svc_req* %0, i32** %1, i32** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.svc_req*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.svc_rpc_gss_client*, align 8
  store %struct.svc_req* %0, %struct.svc_req** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %12 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RPCSEC_GSS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %5, align 4
  br label %46

19:                                               ; preds = %4
  %20 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %21 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %20, i32 0, i32 0
  %22 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %21, align 8
  store %struct.svc_rpc_gss_client* %22, %struct.svc_rpc_gss_client** %10, align 8
  %23 = load i32**, i32*** %7, align 8
  %24 = icmp ne i32** %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %10, align 8
  %27 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %26, i32 0, i32 2
  %28 = load i32**, i32*** %7, align 8
  store i32* %27, i32** %28, align 8
  br label %29

29:                                               ; preds = %25, %19
  %30 = load i32**, i32*** %8, align 8
  %31 = icmp ne i32** %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %10, align 8
  %34 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %33, i32 0, i32 1
  %35 = load i32**, i32*** %8, align 8
  store i32* %34, i32** %35, align 8
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i8**, i8*** %9, align 8
  %38 = icmp ne i8** %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %10, align 8
  %41 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8**, i8*** %9, align 8
  store i8* %42, i8** %43, align 8
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %17
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

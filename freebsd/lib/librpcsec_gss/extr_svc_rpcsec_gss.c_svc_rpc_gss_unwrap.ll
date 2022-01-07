; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_unwrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_unwrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.svc_rpc_gss_client = type { i64, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"in svc_rpc_gss_unwrap()\00", align 1
@CLIENT_ESTABLISHED = common dso_local global i64 0, align 8
@rpc_gss_svc_none = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_rpc_gss_unwrap(%struct.TYPE_5__* %0, i32* %1, i32 (i32*, i32)* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32 (i32*, i32)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.svc_rpc_gss_client*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 (i32*, i32)* %2, i32 (i32*, i32)** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = call i32 @log_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.svc_rpc_gss_client*
  store %struct.svc_rpc_gss_client* %15, %struct.svc_rpc_gss_client** %10, align 8
  %16 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %10, align 8
  %17 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CLIENT_ESTABLISHED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %4
  %22 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %10, align 8
  %23 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @rpc_gss_svc_none, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %21, %4
  %29 = load i32 (i32*, i32)*, i32 (i32*, i32)** %8, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 %29(i32* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %51

33:                                               ; preds = %21
  %34 = load i32*, i32** %7, align 8
  %35 = load i32 (i32*, i32)*, i32 (i32*, i32)** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %10, align 8
  %38 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %10, align 8
  %41 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %10, align 8
  %44 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %10, align 8
  %48 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @xdr_rpc_gss_unwrap_data(i32* %34, i32 (i32*, i32)* %35, i32 %36, i32 %39, i32 %42, i64 %46, i32 %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %33, %28
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i32 @xdr_rpc_gss_unwrap_data(i32*, i32 (i32*, i32)*, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

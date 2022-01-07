; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_nextverf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_nextverf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rpc_gss_client = type { %struct.TYPE_10__, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.svc_req = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_9__ = type { i32, i32* }

@.str = private unnamed_addr constant [26 x i8] c"in svc_rpc_gss_nextverf()\00", align 1
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"gss_get_mic\00", align 1
@CLIENT_STALE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@RPCSEC_GSS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rpc_gss_client*, %struct.svc_req*, i64)* @svc_rpc_gss_nextverf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_rpc_gss_nextverf(%struct.svc_rpc_gss_client* %0, %struct.svc_req* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rpc_gss_client*, align 8
  %6 = alloca %struct.svc_req*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.svc_rpc_gss_client* %0, %struct.svc_rpc_gss_client** %5, align 8
  store %struct.svc_req* %1, %struct.svc_req** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = call i32 @log_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @htonl(i64 %13)
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  store i32* %11, i32** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i32 4, i32* %16, align 8
  %17 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %5, align 8
  %18 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %5, align 8
  %24 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %23, i32 0, i32 0
  %25 = call i32 @gss_release_buffer(i64* %10, %struct.TYPE_10__* %24)
  br label %26

26:                                               ; preds = %22, %3
  %27 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %5, align 8
  %28 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %5, align 8
  %31 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %5, align 8
  %34 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %33, i32 0, i32 0
  %35 = call i64 @gss_get_mic(i64* %10, i32 %29, i32 %32, %struct.TYPE_9__* %8, %struct.TYPE_10__* %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @GSS_S_COMPLETE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %26
  %40 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %5, align 8
  %41 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @log_status(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %42, i64 %43, i64 %44)
  %46 = load i32, i32* @CLIENT_STALE, align 4
  %47 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %5, align 8
  %48 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %4, align 4
  br label %76

50:                                               ; preds = %26
  %51 = load i32, i32* @RPCSEC_GSS, align 4
  %52 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %53 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  store i32 %51, i32* %56, align 8
  %57 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %5, align 8
  %58 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %62 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store i64 %60, i64* %65, align 8
  %66 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %5, align 8
  %67 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %71 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i64 %69, i64* %74, align 8
  %75 = load i32, i32* @TRUE, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %50, %39
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @gss_release_buffer(i64*, %struct.TYPE_10__*) #1

declare dso_local i64 @gss_get_mic(i64*, i32, i32, %struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @log_status(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

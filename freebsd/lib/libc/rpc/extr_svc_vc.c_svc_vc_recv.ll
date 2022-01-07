; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_vc.c_svc_vc_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_vc.c_svc_vc_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.rpc_msg = type { i32 }
%struct.cf_conn = type { i32, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@XDR_DECODE = common dso_local global i32 0, align 4
@XPRT_DIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.rpc_msg*)* @svc_vc_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_vc_recv(%struct.TYPE_8__* %0, %struct.rpc_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.rpc_msg*, align 8
  %6 = alloca %struct.cf_conn*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.rpc_msg* %1, %struct.rpc_msg** %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = icmp ne %struct.TYPE_8__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %13 = icmp ne %struct.rpc_msg* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.cf_conn*
  store %struct.cf_conn* %19, %struct.cf_conn** %6, align 8
  %20 = load %struct.cf_conn*, %struct.cf_conn** %6, align 8
  %21 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %20, i32 0, i32 3
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %7, align 8
  %22 = load %struct.cf_conn*, %struct.cf_conn** %6, align 8
  %23 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = load %struct.cf_conn*, %struct.cf_conn** %6, align 8
  %29 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %28, i32 0, i32 0
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i32 @__xdrrec_getrec(%struct.TYPE_7__* %27, i32* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %3, align 4
  br label %59

35:                                               ; preds = %26
  br label %39

36:                                               ; preds = %2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = call i32 @xdrrec_skiprecord(%struct.TYPE_7__* %37)
  br label %39

39:                                               ; preds = %36, %35
  %40 = load i32, i32* @XDR_DECODE, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %45 = call i64 @xdr_callmsg(%struct.TYPE_7__* %43, %struct.rpc_msg* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %49 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cf_conn*, %struct.cf_conn** %6, align 8
  %52 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %3, align 4
  br label %59

54:                                               ; preds = %39
  %55 = load i32, i32* @XPRT_DIED, align 4
  %56 = load %struct.cf_conn*, %struct.cf_conn** %6, align 8
  %57 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %54, %47, %33
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @__xdrrec_getrec(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @xdrrec_skiprecord(%struct.TYPE_7__*) #1

declare dso_local i64 @xdr_callmsg(%struct.TYPE_7__*, %struct.rpc_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

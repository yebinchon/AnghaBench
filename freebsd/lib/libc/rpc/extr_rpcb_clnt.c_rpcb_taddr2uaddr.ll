; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_clnt.c_rpcb_taddr2uaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_clnt.c_rpcb_taddr2uaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.netconfig = type { i32 }
%struct.netbuf = type { i32 }

@RPC_UNKNOWNPROTO = common dso_local global i32 0, align 4
@rpc_createerr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RPC_UNKNOWNADDR = common dso_local global i32 0, align 4
@RPCBPROC_TADDR2UADDR = common dso_local global i64 0, align 8
@xdr_netbuf = common dso_local global i64 0, align 8
@xdr_wrapstring = common dso_local global i64 0, align 8
@tottimeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpcb_taddr2uaddr(%struct.netconfig* %0, %struct.netbuf* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.netconfig*, align 8
  %5 = alloca %struct.netbuf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store %struct.netconfig* %0, %struct.netconfig** %4, align 8
  store %struct.netbuf* %1, %struct.netbuf** %5, align 8
  store i8* null, i8** %7, align 8
  %8 = load %struct.netconfig*, %struct.netconfig** %4, align 8
  %9 = icmp eq %struct.netconfig* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @RPC_UNKNOWNPROTO, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 4
  store i8* null, i8** %3, align 8
  br label %38

12:                                               ; preds = %2
  %13 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %14 = icmp eq %struct.netbuf* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @RPC_UNKNOWNADDR, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 4
  store i8* null, i8** %3, align 8
  br label %38

17:                                               ; preds = %12
  %18 = call i32* (...) @local_rpcb()
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i8* null, i8** %3, align 8
  br label %38

22:                                               ; preds = %17
  %23 = load i32*, i32** %6, align 8
  %24 = load i64, i64* @RPCBPROC_TADDR2UADDR, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i64, i64* @xdr_netbuf, align 8
  %27 = trunc i64 %26 to i32
  %28 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %29 = bitcast %struct.netbuf* %28 to i8*
  %30 = load i64, i64* @xdr_wrapstring, align 8
  %31 = trunc i64 %30 to i32
  %32 = bitcast i8** %7 to i8*
  %33 = load i32, i32* @tottimeout, align 4
  %34 = call i32 @CLNT_CALL(i32* %23, i32 %25, i32 %27, i8* %29, i32 %31, i8* %32, i32 %33)
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @CLNT_DESTROY(i32* %35)
  %37 = load i8*, i8** %7, align 8
  store i8* %37, i8** %3, align 8
  br label %38

38:                                               ; preds = %22, %21, %15, %10
  %39 = load i8*, i8** %3, align 8
  ret i8* %39
}

declare dso_local i32* @local_rpcb(...) #1

declare dso_local i32 @CLNT_CALL(i32*, i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @CLNT_DESTROY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

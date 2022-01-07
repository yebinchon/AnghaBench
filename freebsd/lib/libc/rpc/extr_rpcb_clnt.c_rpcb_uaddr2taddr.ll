; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_clnt.c_rpcb_uaddr2taddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_clnt.c_rpcb_uaddr2taddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.netbuf = type { i32 }
%struct.netconfig = type { i32 }

@RPC_UNKNOWNPROTO = common dso_local global i32 0, align 4
@rpc_createerr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RPC_UNKNOWNADDR = common dso_local global i32 0, align 4
@RPCBPROC_UADDR2TADDR = common dso_local global i64 0, align 8
@xdr_wrapstring = common dso_local global i64 0, align 8
@xdr_netbuf = common dso_local global i64 0, align 8
@tottimeout = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.netbuf* @rpcb_uaddr2taddr(%struct.netconfig* %0, i8* %1) #0 {
  %3 = alloca %struct.netbuf*, align 8
  %4 = alloca %struct.netconfig*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.netbuf*, align 8
  store %struct.netconfig* %0, %struct.netconfig** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.netconfig*, %struct.netconfig** %4, align 8
  %9 = icmp eq %struct.netconfig* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @RPC_UNKNOWNPROTO, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 4
  store %struct.netbuf* null, %struct.netbuf** %3, align 8
  br label %52

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @RPC_UNKNOWNADDR, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 4
  store %struct.netbuf* null, %struct.netbuf** %3, align 8
  br label %52

17:                                               ; preds = %12
  %18 = call i32* (...) @local_rpcb()
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store %struct.netbuf* null, %struct.netbuf** %3, align 8
  br label %52

22:                                               ; preds = %17
  %23 = call i64 @calloc(i32 1, i32 4)
  %24 = inttoptr i64 %23 to %struct.netbuf*
  store %struct.netbuf* %24, %struct.netbuf** %7, align 8
  %25 = load %struct.netbuf*, %struct.netbuf** %7, align 8
  %26 = icmp eq %struct.netbuf* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @CLNT_DESTROY(i32* %28)
  store %struct.netbuf* null, %struct.netbuf** %3, align 8
  br label %52

30:                                               ; preds = %22
  %31 = load i32*, i32** %6, align 8
  %32 = load i64, i64* @RPCBPROC_UADDR2TADDR, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i64, i64* @xdr_wrapstring, align 8
  %35 = trunc i64 %34 to i32
  %36 = bitcast i8** %5 to i8*
  %37 = load i64, i64* @xdr_netbuf, align 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct.netbuf*, %struct.netbuf** %7, align 8
  %40 = bitcast %struct.netbuf* %39 to i8*
  %41 = load i32, i32* @tottimeout, align 4
  %42 = call i64 @CLNT_CALL(i32* %31, i32 %33, i32 %35, i8* %36, i32 %38, i8* %40, i32 %41)
  %43 = load i64, i64* @RPC_SUCCESS, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %30
  %46 = load %struct.netbuf*, %struct.netbuf** %7, align 8
  %47 = call i32 @free(%struct.netbuf* %46)
  store %struct.netbuf* null, %struct.netbuf** %7, align 8
  br label %48

48:                                               ; preds = %45, %30
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @CLNT_DESTROY(i32* %49)
  %51 = load %struct.netbuf*, %struct.netbuf** %7, align 8
  store %struct.netbuf* %51, %struct.netbuf** %3, align 8
  br label %52

52:                                               ; preds = %48, %27, %21, %15, %10
  %53 = load %struct.netbuf*, %struct.netbuf** %3, align 8
  ret %struct.netbuf* %53
}

declare dso_local i32* @local_rpcb(...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @CLNT_DESTROY(i32*) #1

declare dso_local i64 @CLNT_CALL(i32*, i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @free(%struct.netbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

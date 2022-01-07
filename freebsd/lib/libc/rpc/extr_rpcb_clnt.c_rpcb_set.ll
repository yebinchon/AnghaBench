; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_clnt.c_rpcb_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_clnt.c_rpcb_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.netconfig = type { i32 }
%struct.netbuf = type { i32 }
%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@RPC_UNKNOWNPROTO = common dso_local global i32 0, align 4
@rpc_createerr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@RPC_UNKNOWNADDR = common dso_local global i32 0, align 4
@RPC_N2AXLATEFAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@RPCBPROC_SET = common dso_local global i64 0, align 8
@xdr_rpcb = common dso_local global i64 0, align 8
@xdr_bool = common dso_local global i64 0, align 8
@tottimeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcb_set(i32 %0, i32 %1, %struct.netconfig* %2, %struct.netbuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.netconfig*, align 8
  %9 = alloca %struct.netbuf*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 8
  %13 = alloca [32 x i8], align 16
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.netconfig* %2, %struct.netconfig** %8, align 8
  store %struct.netbuf* %3, %struct.netbuf** %9, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.netconfig*, %struct.netconfig** %8, align 8
  %16 = icmp eq %struct.netconfig* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @RPC_UNKNOWNPROTO, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rpc_createerr, i32 0, i32 0), align 4
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %5, align 4
  br label %76

20:                                               ; preds = %4
  %21 = load %struct.netbuf*, %struct.netbuf** %9, align 8
  %22 = icmp eq %struct.netbuf* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @RPC_UNKNOWNADDR, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rpc_createerr, i32 0, i32 0), align 4
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %5, align 4
  br label %76

26:                                               ; preds = %20
  %27 = call i32* (...) @local_rpcb()
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %5, align 4
  br label %76

32:                                               ; preds = %26
  %33 = load %struct.netconfig*, %struct.netconfig** %8, align 8
  %34 = load %struct.netbuf*, %struct.netbuf** %9, align 8
  %35 = call i32 @taddr2uaddr(%struct.netconfig* %33, %struct.netbuf* %34)
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %32
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @CLNT_DESTROY(i32* %41)
  %43 = load i32, i32* @RPC_N2AXLATEFAILURE, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rpc_createerr, i32 0, i32 0), align 4
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %5, align 4
  br label %76

45:                                               ; preds = %32
  %46 = load i32, i32* %6, align 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 4
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  store i32 %48, i32* %49, align 8
  %50 = load %struct.netconfig*, %struct.netconfig** %8, align 8
  %51 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %55 = call i32 (...) @geteuid()
  %56 = call i32 @snprintf(i8* %54, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i8* %57, i8** %58, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i64, i64* @RPCBPROC_SET, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i64, i64* @xdr_rpcb, align 8
  %63 = trunc i64 %62 to i32
  %64 = bitcast %struct.TYPE_3__* %12 to i8*
  %65 = load i64, i64* @xdr_bool, align 8
  %66 = trunc i64 %65 to i32
  %67 = bitcast i32* %11 to i8*
  %68 = load i32, i32* @tottimeout, align 4
  %69 = call i32 @CLNT_CALL(i32* %59, i32 %61, i32 %63, i8* %64, i32 %66, i8* %67, i32 %68)
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @CLNT_DESTROY(i32* %70)
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @free(i32 %73)
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %45, %40, %30, %23, %17
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32* @local_rpcb(...) #1

declare dso_local i32 @taddr2uaddr(%struct.netconfig*, %struct.netbuf*) #1

declare dso_local i32 @CLNT_DESTROY(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @geteuid(...) #1

declare dso_local i32 @CLNT_CALL(i32*, i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_clnt.c_rpcb_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_clnt.c_rpcb_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.netconfig = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"netpath\00", align 1
@RPC_UNKNOWNPROTO = common dso_local global i8* null, align 8
@rpc_createerr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FALSE = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i64 0, align 8
@RPCBPROC_GETTIME = common dso_local global i64 0, align 8
@xdr_void = common dso_local global i64 0, align 8
@xdr_int = common dso_local global i64 0, align 8
@tottimeout = common dso_local global i32 0, align 4
@RPC_PROGVERSMISMATCH = common dso_local global i32 0, align 4
@RPC_PROGUNAVAIL = common dso_local global i32 0, align 4
@CLGET_VERS = common dso_local global i32 0, align 4
@RPCBVERS4 = common dso_local global i64 0, align 8
@RPCBVERS = common dso_local global i64 0, align 8
@CLSET_VERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcb_gettime(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.netconfig*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13, %2
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @time(i32* %20)
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %3, align 4
  br label %120

23:                                               ; preds = %13
  %24 = call i8* @__rpc_setconf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %7, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i8*, i8** @RPC_UNKNOWNPROTO, align 8
  %28 = ptrtoint i8* %27 to i64
  store i64 %28, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 8
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %3, align 4
  br label %120

30:                                               ; preds = %23
  %31 = load i64, i64* @RPC_SUCCESS, align 8
  store i64 %31, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 8
  br label %32

32:                                               ; preds = %54, %30
  %33 = load i32*, i32** %6, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %55

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = call %struct.netconfig* @__rpc_getconf(i8* %36)
  store %struct.netconfig* %37, %struct.netconfig** %8, align 8
  %38 = icmp eq %struct.netconfig* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 8
  %41 = load i64, i64* @RPC_SUCCESS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i8*, i8** @RPC_UNKNOWNPROTO, align 8
  %45 = ptrtoint i8* %44 to i64
  store i64 %45, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 8
  br label %46

46:                                               ; preds = %43, %39
  br label %55

47:                                               ; preds = %35
  %48 = load i8*, i8** %4, align 8
  %49 = load %struct.netconfig*, %struct.netconfig** %8, align 8
  %50 = call i32* @getclnthandle(i8* %48, %struct.netconfig* %49, i32* null)
  store i32* %50, i32** %6, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %55

54:                                               ; preds = %47
  br label %32

55:                                               ; preds = %53, %46, %32
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @__rpc_endconf(i8* %56)
  %58 = load i32*, i32** %6, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %3, align 4
  br label %120

62:                                               ; preds = %55
  %63 = load i32*, i32** %6, align 8
  %64 = load i64, i64* @RPCBPROC_GETTIME, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i64, i64* @xdr_void, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i64, i64* @xdr_int, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i32*, i32** %5, align 8
  %71 = bitcast i32* %70 to i8*
  %72 = load i32, i32* @tottimeout, align 4
  %73 = call i32 @CLNT_CALL(i32* %63, i32 %65, i32 %67, i32* null, i32 %69, i8* %71, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @RPC_PROGVERSMISMATCH, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %62
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @RPC_PROGUNAVAIL, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %107

81:                                               ; preds = %77, %62
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* @CLGET_VERS, align 4
  %84 = bitcast i64* %9 to i8*
  %85 = call i32 @CLNT_CONTROL(i32* %82, i32 %83, i8* %84)
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* @RPCBVERS4, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %81
  %90 = load i64, i64* @RPCBVERS, align 8
  store i64 %90, i64* %9, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* @CLSET_VERS, align 4
  %93 = bitcast i64* %9 to i8*
  %94 = call i32 @CLNT_CONTROL(i32* %91, i32 %92, i8* %93)
  %95 = load i32*, i32** %6, align 8
  %96 = load i64, i64* @RPCBPROC_GETTIME, align 8
  %97 = trunc i64 %96 to i32
  %98 = load i64, i64* @xdr_void, align 8
  %99 = trunc i64 %98 to i32
  %100 = load i64, i64* @xdr_int, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i32*, i32** %5, align 8
  %103 = bitcast i32* %102 to i8*
  %104 = load i32, i32* @tottimeout, align 4
  %105 = call i32 @CLNT_CALL(i32* %95, i32 %97, i32 %99, i32* null, i32 %101, i8* %103, i32 %104)
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %89, %81
  br label %107

107:                                              ; preds = %106, %77
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @CLNT_DESTROY(i32* %108)
  %110 = load i32, i32* %10, align 4
  %111 = zext i32 %110 to i64
  %112 = load i64, i64* @RPC_SUCCESS, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* @TRUE, align 4
  br label %118

116:                                              ; preds = %107
  %117 = load i32, i32* @FALSE, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %60, %26, %19
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @time(i32*) #1

declare dso_local i8* @__rpc_setconf(i8*) #1

declare dso_local %struct.netconfig* @__rpc_getconf(i8*) #1

declare dso_local i32* @getclnthandle(i8*, %struct.netconfig*, i32*) #1

declare dso_local i32 @__rpc_endconf(i8*) #1

declare dso_local i32 @CLNT_CALL(i32*, i32, i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @CLNT_CONTROL(i32*, i32, i8*) #1

declare dso_local i32 @CLNT_DESTROY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

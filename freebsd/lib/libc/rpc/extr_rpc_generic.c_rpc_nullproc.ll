; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpc_generic.c_rpc_nullproc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpc_generic.c_rpc_nullproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@__const.rpc_nullproc.TIMEOUT = private unnamed_addr constant %struct.timeval { i32 25, i32 0 }, align 4
@NULLPROC = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpc_nullproc(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.timeval, align 4
  store i32* %0, i32** %3, align 8
  %5 = bitcast %struct.timeval* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.timeval* @__const.rpc_nullproc.TIMEOUT to i8*), i64 8, i1 false)
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @NULLPROC, align 4
  %8 = load i64, i64* @xdr_void, align 8
  %9 = trunc i64 %8 to i32
  %10 = load i64, i64* @xdr_void, align 8
  %11 = trunc i64 %10 to i32
  %12 = bitcast %struct.timeval* %4 to i64*
  %13 = load i64, i64* %12, align 4
  %14 = call i64 @clnt_call(i32* %6, i32 %7, i32 %9, i32* null, i32 %11, i32* null, i64 %13)
  %15 = load i64, i64* @RPC_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %21

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = bitcast i32* %19 to i8*
  store i8* %20, i8** %2, align 8
  br label %21

21:                                               ; preds = %18, %17
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @clnt_call(i32*, i32, i32, i32*, i32, i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

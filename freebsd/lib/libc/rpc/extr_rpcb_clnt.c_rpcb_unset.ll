; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_clnt.c_rpcb_unset.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_clnt.c_rpcb_unset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconfig = type { i8* }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@nullstring = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@RPCBPROC_UNSET = common dso_local global i64 0, align 8
@xdr_rpcb = common dso_local global i64 0, align 8
@xdr_bool = common dso_local global i64 0, align 8
@tottimeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcb_unset(i32 %0, i32 %1, %struct.netconfig* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.netconfig*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__, align 8
  %11 = alloca [32 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.netconfig* %2, %struct.netconfig** %7, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %9, align 4
  %13 = call i32* (...) @local_rpcb()
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %4, align 4
  br label %59

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 4
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  store i32 %21, i32* %22, align 8
  %23 = load %struct.netconfig*, %struct.netconfig** %7, align 8
  %24 = icmp ne %struct.netconfig* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.netconfig*, %struct.netconfig** %7, align 8
  %27 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  br label %35

30:                                               ; preds = %18
  %31 = load i32*, i32** @nullstring, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = bitcast i32* %32 to i8*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32*, i32** @nullstring, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = bitcast i32* %37 to i8*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %41 = call i32 (...) @geteuid()
  %42 = call i32 @snprintf(i8* %40, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  store i8* %43, i8** %44, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i64, i64* @RPCBPROC_UNSET, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i64, i64* @xdr_rpcb, align 8
  %49 = trunc i64 %48 to i32
  %50 = bitcast %struct.TYPE_2__* %10 to i8*
  %51 = load i64, i64* @xdr_bool, align 8
  %52 = trunc i64 %51 to i32
  %53 = bitcast i32* %9 to i8*
  %54 = load i32, i32* @tottimeout, align 4
  %55 = call i32 @CLNT_CALL(i32* %45, i32 %47, i32 %49, i8* %50, i32 %52, i8* %53, i32 %54)
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @CLNT_DESTROY(i32* %56)
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %35, %16
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32* @local_rpcb(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @geteuid(...) #1

declare dso_local i32 @CLNT_CALL(i32*, i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @CLNT_DESTROY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

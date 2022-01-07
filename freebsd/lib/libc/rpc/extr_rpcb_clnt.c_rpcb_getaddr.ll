; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_clnt.c_rpcb_getaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_clnt.c_rpcb_getaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.netconfig = type { i32 }
%struct.netbuf = type { i64, i64, %struct.netbuf* }
%struct.timeval = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@RPC_FAILED = common dso_local global i32 0, align 4
@rpc_createerr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcb_getaddr(i32 %0, i32 %1, %struct.netconfig* %2, %struct.netbuf* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.netconfig*, align 8
  %10 = alloca %struct.netbuf*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.netbuf*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.netconfig* %2, %struct.netconfig** %9, align 8
  store %struct.netbuf* %3, %struct.netbuf** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.netconfig*, %struct.netconfig** %9, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = call %struct.netbuf* @__rpcb_findaddr_timed(i32 %13, i32 %14, %struct.netconfig* %15, i8* %16, i32** null, %struct.timeval* null)
  store %struct.netbuf* %17, %struct.netbuf** %12, align 8
  %18 = icmp eq %struct.netbuf* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %6, align 4
  br label %61

21:                                               ; preds = %5
  %22 = load %struct.netbuf*, %struct.netbuf** %12, align 8
  %23 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.netbuf*, %struct.netbuf** %10, align 8
  %26 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.netbuf*, %struct.netbuf** %12, align 8
  %31 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %30, i32 0, i32 2
  %32 = load %struct.netbuf*, %struct.netbuf** %31, align 8
  %33 = call i32 @free(%struct.netbuf* %32)
  %34 = load %struct.netbuf*, %struct.netbuf** %12, align 8
  %35 = call i32 @free(%struct.netbuf* %34)
  %36 = load i32, i32* @RPC_FAILED, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 4
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %6, align 4
  br label %61

38:                                               ; preds = %21
  %39 = load %struct.netbuf*, %struct.netbuf** %10, align 8
  %40 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %39, i32 0, i32 2
  %41 = load %struct.netbuf*, %struct.netbuf** %40, align 8
  %42 = load %struct.netbuf*, %struct.netbuf** %12, align 8
  %43 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %42, i32 0, i32 2
  %44 = load %struct.netbuf*, %struct.netbuf** %43, align 8
  %45 = load %struct.netbuf*, %struct.netbuf** %12, align 8
  %46 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @memcpy(%struct.netbuf* %41, %struct.netbuf* %44, i64 %47)
  %49 = load %struct.netbuf*, %struct.netbuf** %12, align 8
  %50 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.netbuf*, %struct.netbuf** %10, align 8
  %53 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.netbuf*, %struct.netbuf** %12, align 8
  %55 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %54, i32 0, i32 2
  %56 = load %struct.netbuf*, %struct.netbuf** %55, align 8
  %57 = call i32 @free(%struct.netbuf* %56)
  %58 = load %struct.netbuf*, %struct.netbuf** %12, align 8
  %59 = call i32 @free(%struct.netbuf* %58)
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %38, %29, %19
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local %struct.netbuf* @__rpcb_findaddr_timed(i32, i32, %struct.netconfig*, i8*, i32**, %struct.timeval*) #1

declare dso_local i32 @free(%struct.netbuf*) #1

declare dso_local i32 @memcpy(%struct.netbuf*, %struct.netbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

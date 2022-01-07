; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_clnt.c___rpc_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_clnt.c___rpc_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@tottimeout = common dso_local global %struct.timeval zeroinitializer, align 4
@__rpc_lowvers = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rpc_control(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %23 [
    i32 130, label %7
    i32 128, label %11
    i32 129, label %15
    i32 131, label %19
  ]

7:                                                ; preds = %2
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.timeval*
  %10 = bitcast %struct.timeval* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.timeval* @tottimeout to i8*), i64 4, i1 false)
  br label %25

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.timeval*
  %14 = bitcast %struct.timeval* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.timeval* @tottimeout to i8*), i8* align 4 %14, i64 4, i1 false)
  br label %25

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* @__rpc_lowvers, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @__rpc_lowvers, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %3, align 4
  br label %27

25:                                               ; preds = %19, %15, %11, %7
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

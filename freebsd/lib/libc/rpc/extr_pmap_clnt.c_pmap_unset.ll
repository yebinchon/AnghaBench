; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_pmap_clnt.c_pmap_unset.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_pmap_clnt.c_pmap_unset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconfig = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_unset(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.netconfig*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %7, align 4
  %10 = call %struct.netconfig* @__rpc_getconfip(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.netconfig* %10, %struct.netconfig** %5, align 8
  %11 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %12 = icmp ne %struct.netconfig* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load i64, i64* %3, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i64, i64* %4, align 8
  %17 = trunc i64 %16 to i32
  %18 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %19 = call i32 @rpcb_unset(i32 %15, i32 %17, %struct.netconfig* %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %21 = call i32 @freenetconfigent(%struct.netconfig* %20)
  br label %22

22:                                               ; preds = %13, %2
  %23 = call %struct.netconfig* @__rpc_getconfip(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.netconfig* %23, %struct.netconfig** %5, align 8
  %24 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %25 = icmp ne %struct.netconfig* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i64, i64* %3, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i64, i64* %4, align 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %32 = call i32 @rpcb_unset(i32 %28, i32 %30, %struct.netconfig* %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %34 = call i32 @freenetconfigent(%struct.netconfig* %33)
  br label %35

35:                                               ; preds = %26, %22
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i1 [ true, %35 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  ret i32 %43
}

declare dso_local %struct.netconfig* @__rpc_getconfip(i8*) #1

declare dso_local i32 @rpcb_unset(i32, i32, %struct.netconfig*) #1

declare dso_local i32 @freenetconfigent(%struct.netconfig*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

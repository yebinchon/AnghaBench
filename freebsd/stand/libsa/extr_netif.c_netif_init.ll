; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_netif.c_netif_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_netif.c_netif_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif_driver = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@netif_drivers = common dso_local global %struct.netif_driver** null, align 8
@netif_debug = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netif_init() #0 {
  %1 = alloca %struct.netif_driver*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %35, %0
  %5 = load %struct.netif_driver**, %struct.netif_driver*** @netif_drivers, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.netif_driver*, %struct.netif_driver** %5, i64 %7
  %9 = load %struct.netif_driver*, %struct.netif_driver** %8, align 8
  %10 = icmp ne %struct.netif_driver* %9, null
  br i1 %10, label %11, label %38

11:                                               ; preds = %4
  %12 = load %struct.netif_driver**, %struct.netif_driver*** @netif_drivers, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.netif_driver*, %struct.netif_driver** %12, i64 %14
  %16 = load %struct.netif_driver*, %struct.netif_driver** %15, align 8
  store %struct.netif_driver* %16, %struct.netif_driver** %1, align 8
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %31, %11
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.netif_driver*, %struct.netif_driver** %1, align 8
  %20 = getelementptr inbounds %struct.netif_driver, %struct.netif_driver* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.netif_driver*, %struct.netif_driver** %1, align 8
  %25 = getelementptr inbounds %struct.netif_driver, %struct.netif_driver* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %17

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %4

38:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

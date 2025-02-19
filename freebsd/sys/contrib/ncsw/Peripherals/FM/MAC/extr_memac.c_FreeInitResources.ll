; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_memac.c_FreeInitResources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_memac.c_FreeInitResources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@e_ENET_SPEED_10000 = common dso_local global i64 0, align 8
@e_FM_MAC_1G = common dso_local global i64 0, align 8
@e_FM_MAC_10G = common dso_local global i64 0, align 8
@e_FM_MOD_10G_MAC = common dso_local global i32 0, align 4
@e_FM_INTR_TYPE_ERR = common dso_local global i32 0, align 4
@e_FM_MOD_1G_MAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @FreeInitResources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FreeInitResources(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @ENET_SPEED_FROM_MODE(i32 %6)
  %8 = load i64, i64* @e_ENET_SPEED_10000, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* @e_FM_MAC_1G, align 8
  br label %14

12:                                               ; preds = %1
  %13 = load i64, i64* @e_FM_MAC_10G, align 8
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i64 [ %11, %10 ], [ %13, %12 ]
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @e_FM_MAC_10G, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @e_FM_MOD_10G_MAC, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @e_FM_INTR_TYPE_ERR, align 4
  %29 = call i32 @FmUnregisterIntr(i32 %23, i32 %24, i32 %27, i32 %28)
  br label %41

30:                                               ; preds = %14
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @e_FM_MOD_1G_MAC, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @e_FM_INTR_TYPE_ERR, align 4
  %40 = call i32 @FmUnregisterIntr(i32 %34, i32 %35, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %30, %19
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @FreeHashTable(i32* %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @FreeHashTable(i32* %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  ret void
}

declare dso_local i64 @ENET_SPEED_FROM_MODE(i32) #1

declare dso_local i32 @FmUnregisterIntr(i32, i32, i32, i32) #1

declare dso_local i32 @FreeHashTable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

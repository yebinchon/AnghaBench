; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk805.c_rk805_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk805.c_rk805_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk805_softc = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32, i32*, i64*)* @rk805_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk805_map(i32 %0, i64 %1, i32 %2, i32* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.rk805_softc*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.rk805_softc* @device_get_softc(i32 %14)
  store %struct.rk805_softc* %15, %struct.rk805_softc** %12, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %48, %5
  %17 = load i32, i32* %13, align 4
  %18 = load %struct.rk805_softc*, %struct.rk805_softc** %12, align 8
  %19 = getelementptr inbounds %struct.rk805_softc, %struct.rk805_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %16
  %23 = load %struct.rk805_softc*, %struct.rk805_softc** %12, align 8
  %24 = getelementptr inbounds %struct.rk805_softc, %struct.rk805_softc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %24, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %25, i64 %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %22
  %35 = load %struct.rk805_softc*, %struct.rk805_softc** %12, align 8
  %36 = getelementptr inbounds %struct.rk805_softc, %struct.rk805_softc* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %37, i64 %39
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %11, align 8
  store i64 %45, i64* %46, align 8
  store i32 0, i32* %6, align 4
  br label %53

47:                                               ; preds = %22
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %16

51:                                               ; preds = %16
  %52 = load i32, i32* @ERANGE, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %34
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local %struct.rk805_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

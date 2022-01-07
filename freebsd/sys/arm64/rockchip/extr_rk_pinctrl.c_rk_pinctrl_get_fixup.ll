; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_pinctrl.c_rk_pinctrl_get_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_pinctrl.c_rk_pinctrl_get_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_pinctrl_softc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_pinctrl_softc*, i64, i64, i64*, i64*, i64*)* @rk_pinctrl_get_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_pinctrl_get_fixup(%struct.rk_pinctrl_softc* %0, i64 %1, i64 %2, i64* %3, i64* %4, i64* %5) #0 {
  %7 = alloca %struct.rk_pinctrl_softc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  store %struct.rk_pinctrl_softc* %0, %struct.rk_pinctrl_softc** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %83, %6
  %15 = load i32, i32* %13, align 4
  %16 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %7, align 8
  %17 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %86

22:                                               ; preds = %14
  %23 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %7, align 8
  %24 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %82

35:                                               ; preds = %22
  %36 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %7, align 8
  %37 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %82

48:                                               ; preds = %35
  %49 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %7, align 8
  %50 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %10, align 8
  store i64 %58, i64* %59, align 8
  %60 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %7, align 8
  %61 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %11, align 8
  store i64 %69, i64* %70, align 8
  %71 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %7, align 8
  %72 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = load i64*, i64** %12, align 8
  store i64 %80, i64* %81, align 8
  br label %86

82:                                               ; preds = %35, %22
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %14

86:                                               ; preds = %48, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

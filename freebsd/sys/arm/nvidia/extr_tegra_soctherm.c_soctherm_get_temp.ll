; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_soctherm.c_soctherm_get_temp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_soctherm.c_soctherm_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soctherm_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i32*)* @soctherm_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soctherm_get_temp(i32 %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.soctherm_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.soctherm_softc* @device_get_softc(i32 %12)
  store %struct.soctherm_softc* %13, %struct.soctherm_softc** %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp uge i64 %14, 256
  br i1 %15, label %16, label %35

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  %18 = sub i64 %17, 256
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.soctherm_softc*, %struct.soctherm_softc** %10, align 8
  %21 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp uge i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @ERANGE, align 4
  store i32 %25, i32* %5, align 4
  br label %66

26:                                               ; preds = %16
  %27 = load %struct.soctherm_softc*, %struct.soctherm_softc** %10, align 8
  %28 = load %struct.soctherm_softc*, %struct.soctherm_softc** %10, align 8
  %29 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @soctherm_read_temp(%struct.soctherm_softc* %27, %struct.TYPE_2__* %32, i32* %33)
  store i32 %34, i32* %5, align 4
  br label %66

35:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %61, %35
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.soctherm_softc*, %struct.soctherm_softc** %10, align 8
  %40 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %36
  %44 = load %struct.soctherm_softc*, %struct.soctherm_softc** %10, align 8
  %45 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %43
  %52 = load %struct.soctherm_softc*, %struct.soctherm_softc** %10, align 8
  %53 = load %struct.soctherm_softc*, %struct.soctherm_softc** %10, align 8
  %54 = getelementptr inbounds %struct.soctherm_softc, %struct.soctherm_softc* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @soctherm_read_temp(%struct.soctherm_softc* %52, %struct.TYPE_2__* %57, i32* %58)
  store i32 %59, i32* %5, align 4
  br label %66

60:                                               ; preds = %43
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %36

64:                                               ; preds = %36
  %65 = load i32, i32* @ERANGE, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %51, %26, %24
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.soctherm_softc* @device_get_softc(i32) #1

declare dso_local i32 @soctherm_read_temp(%struct.soctherm_softc*, %struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

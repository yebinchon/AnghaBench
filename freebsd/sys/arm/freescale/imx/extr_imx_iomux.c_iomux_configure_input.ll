; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_iomux.c_iomux_configure_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_iomux.c_iomux_configure_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iomux_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iomux_softc*, i64, i64)* @iomux_configure_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iomux_configure_input(%struct.iomux_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.iomux_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iomux_softc* %0, %struct.iomux_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %54

17:                                               ; preds = %13, %3
  %18 = load i64, i64* %6, align 8
  %19 = and i64 %18, 4278190080
  %20 = icmp eq i64 %19, 4278190080
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = load i64, i64* %6, align 8
  %23 = and i64 %22, 255
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i64, i64* %6, align 8
  %26 = and i64 %25, 65280
  %27 = ashr i64 %26, 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load i64, i64* %6, align 8
  %30 = and i64 %29, 16711680
  %31 = ashr i64 %30, 16
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = shl i32 1, %33
  %35 = sub i32 %34, 1
  %36 = load i32, i32* %9, align 4
  %37 = shl i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load %struct.iomux_softc*, %struct.iomux_softc** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @RD4(%struct.iomux_softc* %38, i64 %39)
  %41 = load i32, i32* %8, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = shl i32 %44, %45
  %47 = or i32 %43, %46
  %48 = zext i32 %47 to i64
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %21, %17
  %50 = load %struct.iomux_softc*, %struct.iomux_softc** %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @WR4(%struct.iomux_softc* %50, i64 %51, i64 %52)
  br label %54

54:                                               ; preds = %49, %16
  ret void
}

declare dso_local i32 @RD4(%struct.iomux_softc*, i64) #1

declare dso_local i32 @WR4(%struct.iomux_softc*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

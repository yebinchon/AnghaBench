; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_sdhost.c_WR2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_sdhost.c_WR2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sdhost_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_sdhost_softc*, i32, i32)* @WR2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WR2(%struct.bcm_sdhost_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bcm_sdhost_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bcm_sdhost_softc* %0, %struct.bcm_sdhost_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bcm_sdhost_softc*, %struct.bcm_sdhost_softc** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, -4
  %11 = call i32 @RD4(%struct.bcm_sdhost_softc* %8, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 3
  %14 = mul nsw i32 %13, 8
  %15 = shl i32 65535, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 3
  %22 = mul nsw i32 %21, 8
  %23 = shl i32 %19, %22
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load %struct.bcm_sdhost_softc*, %struct.bcm_sdhost_softc** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, -4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @WR4(%struct.bcm_sdhost_softc* %26, i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @RD4(%struct.bcm_sdhost_softc*, i32) #1

declare dso_local i32 @WR4(%struct.bcm_sdhost_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

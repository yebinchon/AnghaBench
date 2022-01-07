; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ipu.c_ipu_dc_setup_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ipu.c_ipu_dc_setup_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_softc = type { i32 }

@MAP_CONF_PTR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu_softc*, i32, i32, i32, i32)* @ipu_dc_setup_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_dc_setup_map(%struct.ipu_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ipu_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ipu_softc* %0, %struct.ipu_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = mul nsw i32 %14, 3
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %13, align 4
  %18 = load %struct.ipu_softc*, %struct.ipu_softc** %6, align 8
  %19 = load i32, i32* %13, align 4
  %20 = call i32 @DC_MAP_CONF_VAL(i32 %19)
  %21 = call i32 @IPU_READ4(%struct.ipu_softc* %18, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %13, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 16, i32* %12, align 4
  br label %27

26:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %12, align 4
  %29 = shl i32 65535, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %11, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %9, align 4
  %34 = shl i32 %33, 8
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %12, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  %41 = load %struct.ipu_softc*, %struct.ipu_softc** %6, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @DC_MAP_CONF_VAL(i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @IPU_WRITE4(%struct.ipu_softc* %41, i32 %43, i32 %44)
  %46 = load %struct.ipu_softc*, %struct.ipu_softc** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @DC_MAP_CONF_PTR(i32 %47)
  %49 = call i32 @IPU_READ4(%struct.ipu_softc* %46, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %27
  %54 = load i32, i32* %8, align 4
  %55 = mul nsw i32 5, %54
  %56 = add nsw i32 16, %55
  store i32 %56, i32* %12, align 4
  br label %60

57:                                               ; preds = %27
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 5, %58
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i32, i32* @MAP_CONF_PTR_MASK, align 4
  %62 = load i32, i32* %12, align 4
  %63 = shl i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %12, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %11, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %11, align 4
  %72 = load %struct.ipu_softc*, %struct.ipu_softc** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @DC_MAP_CONF_PTR(i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @IPU_WRITE4(%struct.ipu_softc* %72, i32 %74, i32 %75)
  ret void
}

declare dso_local i32 @IPU_READ4(%struct.ipu_softc*, i32) #1

declare dso_local i32 @DC_MAP_CONF_VAL(i32) #1

declare dso_local i32 @IPU_WRITE4(%struct.ipu_softc*, i32, i32) #1

declare dso_local i32 @DC_MAP_CONF_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

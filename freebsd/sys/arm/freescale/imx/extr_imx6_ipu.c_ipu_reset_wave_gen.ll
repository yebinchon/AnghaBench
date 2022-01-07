; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ipu.c_ipu_reset_wave_gen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ipu.c_ipu_reset_wave_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_softc = type { i32 }

@IPU_DI1_SW_GEN0_1 = common dso_local global i32 0, align 4
@IPU_DI0_SW_GEN0_1 = common dso_local global i32 0, align 4
@IPU_DI1_SW_GEN1_1 = common dso_local global i32 0, align 4
@IPU_DI0_SW_GEN1_1 = common dso_local global i32 0, align 4
@IPU_DI1_STP_REP = common dso_local global i32 0, align 4
@IPU_DI0_STP_REP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu_softc*, i32, i32)* @ipu_reset_wave_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_reset_wave_gen(%struct.ipu_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ipu_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipu_softc* %0, %struct.ipu_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @IPU_DI1_SW_GEN0_1, align 4
  br label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @IPU_DI0_SW_GEN0_1, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = sext i32 %16 to i64
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = add i64 %17, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ipu_softc*, %struct.ipu_softc** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @IPU_WRITE4(%struct.ipu_softc* %24, i32 %25, i32 0)
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %15
  %30 = load i32, i32* @IPU_DI1_SW_GEN1_1, align 4
  br label %33

31:                                               ; preds = %15
  %32 = load i32, i32* @IPU_DI0_SW_GEN1_1, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = sext i32 %34 to i64
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = add i64 %35, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load %struct.ipu_softc*, %struct.ipu_softc** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @IPU_WRITE4(%struct.ipu_softc* %42, i32 %43, i32 0)
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i32, i32* @IPU_DI1_STP_REP, align 4
  br label %51

49:                                               ; preds = %33
  %50 = load i32, i32* @IPU_DI0_STP_REP, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = sext i32 %52 to i64
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sdiv i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = add i64 %53, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %7, align 4
  %61 = load %struct.ipu_softc*, %struct.ipu_softc** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @IPU_READ4(%struct.ipu_softc* %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %6, align 4
  %65 = srem i32 %64, 2
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %51
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, -65536
  store i32 %69, i32* %8, align 4
  br label %73

70:                                               ; preds = %51
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, 65535
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %70, %67
  %74 = load %struct.ipu_softc*, %struct.ipu_softc** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @IPU_WRITE4(%struct.ipu_softc* %74, i32 %75, i32 %76)
  ret void
}

declare dso_local i32 @IPU_WRITE4(%struct.ipu_softc*, i32, i32) #1

declare dso_local i32 @IPU_READ4(%struct.ipu_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

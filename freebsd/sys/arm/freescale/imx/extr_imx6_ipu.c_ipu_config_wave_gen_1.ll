; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ipu.c_ipu_config_wave_gen_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ipu.c_ipu_config_wave_gen_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_softc = type { i32 }

@IPU_DI1_SW_GEN1_1 = common dso_local global i32 0, align 4
@IPU_DI0_SW_GEN1_1 = common dso_local global i32 0, align 4
@DI_CNT_AUTO_RELOAD = common dso_local global i32 0, align 4
@IPU_DI1_STP_REP = common dso_local global i32 0, align 4
@IPU_DI0_STP_REP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu_softc*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @ipu_config_wave_gen_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_config_wave_gen_1(%struct.ipu_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.ipu_softc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ipu_softc* %0, %struct.ipu_softc** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %10
  %26 = load i32, i32* @IPU_DI1_SW_GEN1_1, align 4
  br label %29

27:                                               ; preds = %10
  %28 = load i32, i32* @IPU_DI0_SW_GEN1_1, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = sext i32 %30 to i64
  %32 = load i32, i32* %13, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = add i64 %31, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %21, align 4
  %38 = load i32, i32* %16, align 4
  %39 = call i32 @DI_CNT_POLARITY_GEN_EN(i32 %38)
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @DI_CNT_CLR_SEL(i32 %40)
  %42 = or i32 %39, %41
  %43 = load i32, i32* %18, align 4
  %44 = call i32 @DI_CNT_POLARITY_TRIGGER_SEL(i32 %43)
  %45 = or i32 %42, %44
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @DI_CNT_POLARITY_CLR_SEL(i32 %46)
  %48 = or i32 %45, %47
  store i32 %48, i32* %22, align 4
  %49 = load i32, i32* %20, align 4
  %50 = call i32 @DI_CNT_DOWN(i32 %49)
  %51 = load i32, i32* %19, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %22, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %22, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %29
  %58 = load i32, i32* @DI_CNT_AUTO_RELOAD, align 4
  %59 = load i32, i32* %22, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %22, align 4
  br label %61

61:                                               ; preds = %57, %29
  %62 = load %struct.ipu_softc*, %struct.ipu_softc** %11, align 8
  %63 = load i32, i32* %21, align 4
  %64 = load i32, i32* %22, align 4
  %65 = call i32 @IPU_WRITE4(%struct.ipu_softc* %62, i32 %63, i32 %64)
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @IPU_DI1_STP_REP, align 4
  br label %72

70:                                               ; preds = %61
  %71 = load i32, i32* @IPU_DI0_STP_REP, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = sext i32 %73 to i64
  %75 = load i32, i32* %13, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sdiv i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = add i64 %74, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %21, align 4
  %82 = load %struct.ipu_softc*, %struct.ipu_softc** %11, align 8
  %83 = load i32, i32* %21, align 4
  %84 = call i32 @IPU_READ4(%struct.ipu_softc* %82, i32 %83)
  store i32 %84, i32* %22, align 4
  %85 = load i32, i32* %13, align 4
  %86 = srem i32 %85, 2
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %72
  %89 = load i32, i32* %22, align 4
  %90 = and i32 %89, -65536
  store i32 %90, i32* %22, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %22, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %22, align 4
  br label %101

94:                                               ; preds = %72
  %95 = load i32, i32* %22, align 4
  %96 = and i32 %95, 65535
  store i32 %96, i32* %22, align 4
  %97 = load i32, i32* %14, align 4
  %98 = shl i32 %97, 16
  %99 = load i32, i32* %22, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %22, align 4
  br label %101

101:                                              ; preds = %94, %88
  %102 = load %struct.ipu_softc*, %struct.ipu_softc** %11, align 8
  %103 = load i32, i32* %21, align 4
  %104 = load i32, i32* %22, align 4
  %105 = call i32 @IPU_WRITE4(%struct.ipu_softc* %102, i32 %103, i32 %104)
  ret void
}

declare dso_local i32 @DI_CNT_POLARITY_GEN_EN(i32) #1

declare dso_local i32 @DI_CNT_CLR_SEL(i32) #1

declare dso_local i32 @DI_CNT_POLARITY_TRIGGER_SEL(i32) #1

declare dso_local i32 @DI_CNT_POLARITY_CLR_SEL(i32) #1

declare dso_local i32 @DI_CNT_DOWN(i32) #1

declare dso_local i32 @IPU_WRITE4(%struct.ipu_softc*, i32, i32) #1

declare dso_local i32 @IPU_READ4(%struct.ipu_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

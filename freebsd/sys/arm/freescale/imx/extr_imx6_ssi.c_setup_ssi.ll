; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ssi.c_setup_ssi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ssi.c_setup_ssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@SSI_STCCR = common dso_local global i32 0, align 4
@WL3_WL0_M = common dso_local global i32 0, align 4
@WL3_WL0_S = common dso_local global i32 0, align 4
@DC4_DC0_M = common dso_local global i32 0, align 4
@DC4_DC0_S = common dso_local global i32 0, align 4
@STCCR_DIV2 = common dso_local global i32 0, align 4
@STCCR_PSR = common dso_local global i32 0, align 4
@PM7_PM0_M = common dso_local global i32 0, align 4
@PM7_PM0_S = common dso_local global i32 0, align 4
@SSI_SFCSR = common dso_local global i32 0, align 4
@SFCSR_TFWM0_M = common dso_local global i32 0, align 4
@SFCSR_TFWM0_S = common dso_local global i32 0, align 4
@SSI_STCR = common dso_local global i32 0, align 4
@STCR_TFEN0 = common dso_local global i32 0, align 4
@STCR_TFEN1 = common dso_local global i32 0, align 4
@STCR_TSHFD = common dso_local global i32 0, align 4
@STCR_TXBIT0 = common dso_local global i32 0, align 4
@STCR_TXDIR = common dso_local global i32 0, align 4
@STCR_TFDIR = common dso_local global i32 0, align 4
@STCR_TSCKP = common dso_local global i32 0, align 4
@STCR_TFSI = common dso_local global i32 0, align 4
@STCR_TFSL = common dso_local global i32 0, align 4
@STCR_TEFS = common dso_local global i32 0, align 4
@SSI_SCR = common dso_local global i32 0, align 4
@SCR_I2S_MODE_M = common dso_local global i32 0, align 4
@SCR_I2S_MODE_S = common dso_local global i32 0, align 4
@SCR_SSIEN = common dso_local global i32 0, align 4
@SCR_TE = common dso_local global i32 0, align 4
@SCR_NET = common dso_local global i32 0, align 4
@SCR_SYN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*)* @setup_ssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_ssi(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.sc_info*, align 8
  %3 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %2, align 8
  %4 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %5 = load i32, i32* @SSI_STCCR, align 4
  %6 = call i32 @READ4(%struct.sc_info* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @WL3_WL0_M, align 4
  %8 = load i32, i32* @WL3_WL0_S, align 4
  %9 = shl i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @WL3_WL0_S, align 4
  %14 = shl i32 11, %13
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @DC4_DC0_M, align 4
  %18 = load i32, i32* @DC4_DC0_S, align 4
  %19 = shl i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @DC4_DC0_S, align 4
  %24 = shl i32 1, %23
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @STCCR_DIV2, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @STCCR_PSR, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* @PM7_PM0_M, align 4
  %36 = load i32, i32* @PM7_PM0_S, align 4
  %37 = shl i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @PM7_PM0_S, align 4
  %42 = shl i32 1, %41
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %46 = load i32, i32* @SSI_STCCR, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @WRITE4(%struct.sc_info* %45, i32 %46, i32 %47)
  %49 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %50 = load i32, i32* @SSI_SFCSR, align 4
  %51 = call i32 @READ4(%struct.sc_info* %49, i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @SFCSR_TFWM0_M, align 4
  %53 = load i32, i32* @SFCSR_TFWM0_S, align 4
  %54 = shl i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %3, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* @SFCSR_TFWM0_S, align 4
  %59 = shl i32 8, %58
  %60 = load i32, i32* %3, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %3, align 4
  %62 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %63 = load i32, i32* @SSI_SFCSR, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @WRITE4(%struct.sc_info* %62, i32 %63, i32 %64)
  %66 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %67 = load i32, i32* @SSI_STCR, align 4
  %68 = call i32 @READ4(%struct.sc_info* %66, i32 %67)
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* @STCR_TFEN0, align 4
  %70 = load i32, i32* %3, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* @STCR_TFEN1, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %3, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* @STCR_TSHFD, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %3, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %3, align 4
  %80 = load i32, i32* @STCR_TXBIT0, align 4
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* @STCR_TXDIR, align 4
  %84 = load i32, i32* @STCR_TFDIR, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %3, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* @STCR_TSCKP, align 4
  %89 = load i32, i32* %3, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* @STCR_TFSI, align 4
  %92 = load i32, i32* %3, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* @STCR_TFSI, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %3, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* @STCR_TFSL, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %3, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* @STCR_TEFS, align 4
  %103 = load i32, i32* %3, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %3, align 4
  %105 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %106 = load i32, i32* @SSI_STCR, align 4
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @WRITE4(%struct.sc_info* %105, i32 %106, i32 %107)
  %109 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %110 = load i32, i32* @SSI_SCR, align 4
  %111 = call i32 @READ4(%struct.sc_info* %109, i32 %110)
  store i32 %111, i32* %3, align 4
  %112 = load i32, i32* @SCR_I2S_MODE_M, align 4
  %113 = load i32, i32* @SCR_I2S_MODE_S, align 4
  %114 = shl i32 %112, %113
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %3, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* @SCR_SSIEN, align 4
  %119 = load i32, i32* @SCR_TE, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* %3, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %3, align 4
  %123 = load i32, i32* @SCR_NET, align 4
  %124 = load i32, i32* %3, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %3, align 4
  %126 = load i32, i32* @SCR_SYN, align 4
  %127 = load i32, i32* %3, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %3, align 4
  %129 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %130 = load i32, i32* @SSI_SCR, align 4
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @WRITE4(%struct.sc_info* %129, i32 %130, i32 %131)
  ret void
}

declare dso_local i32 @READ4(%struct.sc_info*, i32) #1

declare dso_local i32 @WRITE4(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

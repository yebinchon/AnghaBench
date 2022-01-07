; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_sai.c_setup_sai.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_sai.c_setup_sai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@I2S_TCSR = common dso_local global i32 0, align 4
@TCSR_BCE = common dso_local global i32 0, align 4
@TCSR_TE = common dso_local global i32 0, align 4
@TCSR_FRDE = common dso_local global i32 0, align 4
@I2S_TCR3 = common dso_local global i32 0, align 4
@TCR3_TCE = common dso_local global i32 0, align 4
@TCR1_TFW_S = common dso_local global i32 0, align 4
@I2S_TCR1 = common dso_local global i32 0, align 4
@I2S_TCR2 = common dso_local global i32 0, align 4
@TCR2_MSEL_M = common dso_local global i32 0, align 4
@TCR2_MSEL_S = common dso_local global i32 0, align 4
@TCR2_BCP = common dso_local global i32 0, align 4
@TCR2_BCD = common dso_local global i32 0, align 4
@I2S_TCR4 = common dso_local global i32 0, align 4
@TCR4_FRSZ_M = common dso_local global i32 0, align 4
@TCR4_FRSZ_S = common dso_local global i32 0, align 4
@TCR4_SYWD_M = common dso_local global i32 0, align 4
@TCR4_SYWD_S = common dso_local global i32 0, align 4
@TCR4_MF = common dso_local global i32 0, align 4
@TCR4_FSE = common dso_local global i32 0, align 4
@TCR4_FSP = common dso_local global i32 0, align 4
@TCR4_FSD = common dso_local global i32 0, align 4
@I2S_TCR5 = common dso_local global i32 0, align 4
@TCR5_W0W_M = common dso_local global i32 0, align 4
@TCR5_W0W_S = common dso_local global i32 0, align 4
@TCR5_WNW_M = common dso_local global i32 0, align 4
@TCR5_WNW_S = common dso_local global i32 0, align 4
@TCR5_FBT_M = common dso_local global i32 0, align 4
@TCR5_FBT_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*)* @setup_sai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_sai(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.sc_info*, align 8
  %3 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %2, align 8
  %4 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %5 = load i32, i32* @I2S_TCSR, align 4
  %6 = call i32 @READ4(%struct.sc_info* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @TCSR_BCE, align 4
  %8 = load i32, i32* @TCSR_TE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @TCSR_FRDE, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %16 = load i32, i32* @I2S_TCSR, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @WRITE4(%struct.sc_info* %15, i32 %16, i32 %17)
  %19 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %20 = load i32, i32* @I2S_TCR3, align 4
  %21 = call i32 @READ4(%struct.sc_info* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @TCR3_TCE, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %27 = load i32, i32* @I2S_TCR3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @WRITE4(%struct.sc_info* %26, i32 %27, i32 %28)
  %30 = load i32, i32* @TCR1_TFW_S, align 4
  %31 = shl i32 64, %30
  store i32 %31, i32* %3, align 4
  %32 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %33 = load i32, i32* @I2S_TCR1, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @WRITE4(%struct.sc_info* %32, i32 %33, i32 %34)
  %36 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %37 = load i32, i32* @I2S_TCR2, align 4
  %38 = call i32 @READ4(%struct.sc_info* %36, i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @TCR2_MSEL_M, align 4
  %40 = load i32, i32* @TCR2_MSEL_S, align 4
  %41 = shl i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @TCR2_MSEL_S, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* @TCR2_BCP, align 4
  %50 = load i32, i32* @TCR2_BCD, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  %54 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %55 = load i32, i32* @I2S_TCR2, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @WRITE4(%struct.sc_info* %54, i32 %55, i32 %56)
  %58 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %59 = call i32 @sai_configure_clock(%struct.sc_info* %58)
  %60 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %61 = load i32, i32* @I2S_TCR3, align 4
  %62 = call i32 @READ4(%struct.sc_info* %60, i32 %61)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* @TCR3_TCE, align 4
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  %66 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %67 = load i32, i32* @I2S_TCR3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @WRITE4(%struct.sc_info* %66, i32 %67, i32 %68)
  %70 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %71 = load i32, i32* @I2S_TCR4, align 4
  %72 = call i32 @READ4(%struct.sc_info* %70, i32 %71)
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* @TCR4_FRSZ_M, align 4
  %74 = load i32, i32* @TCR4_FRSZ_S, align 4
  %75 = shl i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %3, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* @TCR4_FRSZ_S, align 4
  %80 = shl i32 1, %79
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* @TCR4_SYWD_M, align 4
  %84 = load i32, i32* @TCR4_SYWD_S, align 4
  %85 = shl i32 %83, %84
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %3, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* @TCR4_SYWD_S, align 4
  %90 = shl i32 23, %89
  %91 = load i32, i32* %3, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %3, align 4
  %93 = load i32, i32* @TCR4_MF, align 4
  %94 = load i32, i32* @TCR4_FSE, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @TCR4_FSP, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @TCR4_FSD, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %3, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %3, align 4
  %102 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %103 = load i32, i32* @I2S_TCR4, align 4
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @WRITE4(%struct.sc_info* %102, i32 %103, i32 %104)
  %106 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %107 = load i32, i32* @I2S_TCR5, align 4
  %108 = call i32 @READ4(%struct.sc_info* %106, i32 %107)
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* @TCR5_W0W_M, align 4
  %110 = load i32, i32* @TCR5_W0W_S, align 4
  %111 = shl i32 %109, %110
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %3, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %3, align 4
  %115 = load i32, i32* @TCR5_W0W_S, align 4
  %116 = shl i32 23, %115
  %117 = load i32, i32* %3, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %3, align 4
  %119 = load i32, i32* @TCR5_WNW_M, align 4
  %120 = load i32, i32* @TCR5_WNW_S, align 4
  %121 = shl i32 %119, %120
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %3, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %3, align 4
  %125 = load i32, i32* @TCR5_WNW_S, align 4
  %126 = shl i32 23, %125
  %127 = load i32, i32* %3, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %3, align 4
  %129 = load i32, i32* @TCR5_FBT_M, align 4
  %130 = load i32, i32* @TCR5_FBT_S, align 4
  %131 = shl i32 %129, %130
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %3, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %3, align 4
  %135 = load i32, i32* @TCR5_FBT_S, align 4
  %136 = shl i32 31, %135
  %137 = load i32, i32* %3, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %3, align 4
  %139 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %140 = load i32, i32* @I2S_TCR5, align 4
  %141 = load i32, i32* %3, align 4
  %142 = call i32 @WRITE4(%struct.sc_info* %139, i32 %140, i32 %141)
  %143 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %144 = load i32, i32* @I2S_TCSR, align 4
  %145 = call i32 @READ4(%struct.sc_info* %143, i32 %144)
  store i32 %145, i32* %3, align 4
  %146 = load i32, i32* @TCSR_BCE, align 4
  %147 = load i32, i32* @TCSR_TE, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @TCSR_FRDE, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* %3, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %3, align 4
  %153 = load i32, i32* %3, align 4
  %154 = or i32 %153, 1024
  store i32 %154, i32* %3, align 4
  %155 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %156 = load i32, i32* @I2S_TCSR, align 4
  %157 = load i32, i32* %3, align 4
  %158 = call i32 @WRITE4(%struct.sc_info* %155, i32 %156, i32 %157)
  ret void
}

declare dso_local i32 @READ4(%struct.sc_info*, i32) #1

declare dso_local i32 @WRITE4(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @sai_configure_clock(%struct.sc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

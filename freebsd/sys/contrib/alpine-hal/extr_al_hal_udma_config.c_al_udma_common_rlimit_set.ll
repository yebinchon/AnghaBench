; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_common_rlimit_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_common_rlimit_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udma_rlimit_common = type { i32, i32, i32, i32, i32 }
%struct.al_udma_m2s_rlimit_cfg = type { i32, i32, i32, i32, i32 }

@UDMA_M2S_STREAM_RATE_LIMITER_CFG_1S_MAX_BURST_SIZE_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_STREAM_RATE_LIMITER_CFG_1S_EN = common dso_local global i32 0, align 4
@UDMA_M2S_STREAM_RATE_LIMITER_CFG_1S_PAUSE = common dso_local global i32 0, align 4
@UDMA_M2S_STREAM_RATE_LIMITER_CFG_CYCLE_LONG_CYCLE_SIZE_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_STREAM_RATE_LIMITER_CFG_TOKEN_SIZE_1_LONG_CYCLE_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_STREAM_RATE_LIMITER_CFG_TOKEN_SIZE_2_SHORT_CYCLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.udma_rlimit_common*, %struct.al_udma_m2s_rlimit_cfg*)* @al_udma_common_rlimit_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_udma_common_rlimit_set(%struct.udma_rlimit_common* %0, %struct.al_udma_m2s_rlimit_cfg* %1) #0 {
  %3 = alloca %struct.udma_rlimit_common*, align 8
  %4 = alloca %struct.al_udma_m2s_rlimit_cfg*, align 8
  %5 = alloca i32, align 4
  store %struct.udma_rlimit_common* %0, %struct.udma_rlimit_common** %3, align 8
  store %struct.al_udma_m2s_rlimit_cfg* %1, %struct.al_udma_m2s_rlimit_cfg** %4, align 8
  %6 = load %struct.udma_rlimit_common*, %struct.udma_rlimit_common** %3, align 8
  %7 = getelementptr inbounds %struct.udma_rlimit_common, %struct.udma_rlimit_common* %6, i32 0, i32 4
  %8 = call i32 @al_reg_read32(i32* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @UDMA_M2S_STREAM_RATE_LIMITER_CFG_1S_MAX_BURST_SIZE_MASK, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @UDMA_M2S_STREAM_RATE_LIMITER_CFG_1S_EN, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @UDMA_M2S_STREAM_RATE_LIMITER_CFG_1S_PAUSE, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.al_udma_m2s_rlimit_cfg*, %struct.al_udma_m2s_rlimit_cfg** %4, align 8
  %22 = getelementptr inbounds %struct.al_udma_m2s_rlimit_cfg, %struct.al_udma_m2s_rlimit_cfg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @UDMA_M2S_STREAM_RATE_LIMITER_CFG_1S_MAX_BURST_SIZE_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.udma_rlimit_common*, %struct.udma_rlimit_common** %3, align 8
  %29 = getelementptr inbounds %struct.udma_rlimit_common, %struct.udma_rlimit_common* %28, i32 0, i32 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @al_reg_write32(i32* %29, i32 %30)
  %32 = load %struct.udma_rlimit_common*, %struct.udma_rlimit_common** %3, align 8
  %33 = getelementptr inbounds %struct.udma_rlimit_common, %struct.udma_rlimit_common* %32, i32 0, i32 3
  %34 = call i32 @al_reg_read32(i32* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @UDMA_M2S_STREAM_RATE_LIMITER_CFG_CYCLE_LONG_CYCLE_SIZE_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.al_udma_m2s_rlimit_cfg*, %struct.al_udma_m2s_rlimit_cfg** %4, align 8
  %40 = getelementptr inbounds %struct.al_udma_m2s_rlimit_cfg, %struct.al_udma_m2s_rlimit_cfg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @UDMA_M2S_STREAM_RATE_LIMITER_CFG_CYCLE_LONG_CYCLE_SIZE_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load %struct.udma_rlimit_common*, %struct.udma_rlimit_common** %3, align 8
  %47 = getelementptr inbounds %struct.udma_rlimit_common, %struct.udma_rlimit_common* %46, i32 0, i32 3
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @al_reg_write32(i32* %47, i32 %48)
  %50 = load %struct.udma_rlimit_common*, %struct.udma_rlimit_common** %3, align 8
  %51 = getelementptr inbounds %struct.udma_rlimit_common, %struct.udma_rlimit_common* %50, i32 0, i32 2
  %52 = call i32 @al_reg_read32(i32* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* @UDMA_M2S_STREAM_RATE_LIMITER_CFG_TOKEN_SIZE_1_LONG_CYCLE_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load %struct.al_udma_m2s_rlimit_cfg*, %struct.al_udma_m2s_rlimit_cfg** %4, align 8
  %58 = getelementptr inbounds %struct.al_udma_m2s_rlimit_cfg, %struct.al_udma_m2s_rlimit_cfg* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @UDMA_M2S_STREAM_RATE_LIMITER_CFG_TOKEN_SIZE_1_LONG_CYCLE_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load %struct.udma_rlimit_common*, %struct.udma_rlimit_common** %3, align 8
  %65 = getelementptr inbounds %struct.udma_rlimit_common, %struct.udma_rlimit_common* %64, i32 0, i32 2
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @al_reg_write32(i32* %65, i32 %66)
  %68 = load %struct.udma_rlimit_common*, %struct.udma_rlimit_common** %3, align 8
  %69 = getelementptr inbounds %struct.udma_rlimit_common, %struct.udma_rlimit_common* %68, i32 0, i32 1
  %70 = call i32 @al_reg_read32(i32* %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* @UDMA_M2S_STREAM_RATE_LIMITER_CFG_TOKEN_SIZE_2_SHORT_CYCLE_MASK, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load %struct.al_udma_m2s_rlimit_cfg*, %struct.al_udma_m2s_rlimit_cfg** %4, align 8
  %76 = getelementptr inbounds %struct.al_udma_m2s_rlimit_cfg, %struct.al_udma_m2s_rlimit_cfg* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @UDMA_M2S_STREAM_RATE_LIMITER_CFG_TOKEN_SIZE_2_SHORT_CYCLE_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load %struct.udma_rlimit_common*, %struct.udma_rlimit_common** %3, align 8
  %83 = getelementptr inbounds %struct.udma_rlimit_common, %struct.udma_rlimit_common* %82, i32 0, i32 1
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @al_reg_write32(i32* %83, i32 %84)
  %86 = load %struct.udma_rlimit_common*, %struct.udma_rlimit_common** %3, align 8
  %87 = getelementptr inbounds %struct.udma_rlimit_common, %struct.udma_rlimit_common* %86, i32 0, i32 0
  %88 = call i32 @al_reg_read32(i32* %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = and i32 %89, -16
  store i32 %90, i32* %5, align 4
  %91 = load %struct.al_udma_m2s_rlimit_cfg*, %struct.al_udma_m2s_rlimit_cfg** %4, align 8
  %92 = getelementptr inbounds %struct.al_udma_m2s_rlimit_cfg, %struct.al_udma_m2s_rlimit_cfg* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 15
  %95 = load i32, i32* %5, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %5, align 4
  %97 = load %struct.udma_rlimit_common*, %struct.udma_rlimit_common** %3, align 8
  %98 = getelementptr inbounds %struct.udma_rlimit_common, %struct.udma_rlimit_common* %97, i32 0, i32 0
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @al_reg_write32(i32* %98, i32 %99)
  ret i32 0
}

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

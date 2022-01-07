; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_tgec.c_fman_tgec_defconfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_tgec.c_fman_tgec_defconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgec_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DEFAULT_WAN_MODE_ENABLE = common dso_local global i32 0, align 4
@DEFAULT_PROMISCUOUS_MODE_ENABLE = common dso_local global i32 0, align 4
@DEFAULT_PAUSE_FORWARD_ENABLE = common dso_local global i32 0, align 4
@DEFAULT_PAUSE_IGNORE = common dso_local global i32 0, align 4
@DEFAULT_TX_ADDR_INS_ENABLE = common dso_local global i32 0, align 4
@DEFAULT_LOOPBACK_ENABLE = common dso_local global i32 0, align 4
@DEFAULT_CMD_FRAME_ENABLE = common dso_local global i32 0, align 4
@DEFAULT_RX_ERROR_DISCARD = common dso_local global i32 0, align 4
@DEFAULT_SEND_IDLE_ENABLE = common dso_local global i32 0, align 4
@DEFAULT_NO_LENGTH_CHECK_ENABLE = common dso_local global i32 0, align 4
@DEFAULT_LGTH_CHECK_NOSTDR = common dso_local global i32 0, align 4
@DEFAULT_TIME_STAMP_ENABLE = common dso_local global i32 0, align 4
@DEFAULT_TX_IPG_LENGTH = common dso_local global i32 0, align 4
@DEFAULT_MAX_FRAME_LENGTH = common dso_local global i32 0, align 4
@DEFAULT_PAUSE_QUANT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_tgec_defconfig(%struct.tgec_cfg* %0) #0 {
  %2 = alloca %struct.tgec_cfg*, align 8
  store %struct.tgec_cfg* %0, %struct.tgec_cfg** %2, align 8
  %3 = load i32, i32* @DEFAULT_WAN_MODE_ENABLE, align 4
  %4 = load %struct.tgec_cfg*, %struct.tgec_cfg** %2, align 8
  %5 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %4, i32 0, i32 15
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @DEFAULT_PROMISCUOUS_MODE_ENABLE, align 4
  %7 = load %struct.tgec_cfg*, %struct.tgec_cfg** %2, align 8
  %8 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %7, i32 0, i32 14
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @DEFAULT_PAUSE_FORWARD_ENABLE, align 4
  %10 = load %struct.tgec_cfg*, %struct.tgec_cfg** %2, align 8
  %11 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %10, i32 0, i32 13
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @DEFAULT_PAUSE_IGNORE, align 4
  %13 = load %struct.tgec_cfg*, %struct.tgec_cfg** %2, align 8
  %14 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %13, i32 0, i32 12
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @DEFAULT_TX_ADDR_INS_ENABLE, align 4
  %16 = load %struct.tgec_cfg*, %struct.tgec_cfg** %2, align 8
  %17 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %16, i32 0, i32 11
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @DEFAULT_LOOPBACK_ENABLE, align 4
  %19 = load %struct.tgec_cfg*, %struct.tgec_cfg** %2, align 8
  %20 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %19, i32 0, i32 10
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @DEFAULT_CMD_FRAME_ENABLE, align 4
  %22 = load %struct.tgec_cfg*, %struct.tgec_cfg** %2, align 8
  %23 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @DEFAULT_RX_ERROR_DISCARD, align 4
  %25 = load %struct.tgec_cfg*, %struct.tgec_cfg** %2, align 8
  %26 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @DEFAULT_SEND_IDLE_ENABLE, align 4
  %28 = load %struct.tgec_cfg*, %struct.tgec_cfg** %2, align 8
  %29 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @DEFAULT_NO_LENGTH_CHECK_ENABLE, align 4
  %31 = load %struct.tgec_cfg*, %struct.tgec_cfg** %2, align 8
  %32 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @DEFAULT_LGTH_CHECK_NOSTDR, align 4
  %34 = load %struct.tgec_cfg*, %struct.tgec_cfg** %2, align 8
  %35 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @DEFAULT_TIME_STAMP_ENABLE, align 4
  %37 = load %struct.tgec_cfg*, %struct.tgec_cfg** %2, align 8
  %38 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @DEFAULT_TX_IPG_LENGTH, align 4
  %40 = load %struct.tgec_cfg*, %struct.tgec_cfg** %2, align 8
  %41 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @DEFAULT_MAX_FRAME_LENGTH, align 4
  %43 = load %struct.tgec_cfg*, %struct.tgec_cfg** %2, align 8
  %44 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @DEFAULT_PAUSE_QUANT, align 4
  %46 = load %struct.tgec_cfg*, %struct.tgec_cfg** %2, align 8
  %47 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

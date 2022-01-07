; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_tgec.c_fman_tgec_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_tgec.c_fman_tgec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgec_regs = type { i32, i32, i32 }
%struct.tgec_cfg = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@CMD_CFG_WAN_MODE = common dso_local global i32 0, align 4
@CMD_CFG_PROMIS_EN = common dso_local global i32 0, align 4
@CMD_CFG_PAUSE_FWD = common dso_local global i32 0, align 4
@CMD_CFG_PAUSE_IGNORE = common dso_local global i32 0, align 4
@CMD_CFG_TX_ADDR_INS = common dso_local global i32 0, align 4
@CMD_CFG_LOOPBACK_EN = common dso_local global i32 0, align 4
@CMD_CFG_CMD_FRM_EN = common dso_local global i32 0, align 4
@CMD_CFG_RX_ER_DISC = common dso_local global i32 0, align 4
@CMD_CFG_SEND_IDLE = common dso_local global i32 0, align 4
@CMD_CFG_NO_LEN_CHK = common dso_local global i32 0, align 4
@CMD_CFG_EN_TIMESTAMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_tgec_init(%struct.tgec_regs* %0, %struct.tgec_cfg* %1, i32 %2) #0 {
  %4 = alloca %struct.tgec_regs*, align 8
  %5 = alloca %struct.tgec_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tgec_regs* %0, %struct.tgec_regs** %4, align 8
  store %struct.tgec_cfg* %1, %struct.tgec_cfg** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 64, i32* %7, align 4
  %8 = load %struct.tgec_cfg*, %struct.tgec_cfg** %5, align 8
  %9 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %8, i32 0, i32 12
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @CMD_CFG_WAN_MODE, align 4
  %14 = load i32, i32* %7, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.tgec_cfg*, %struct.tgec_cfg** %5, align 8
  %18 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %17, i32 0, i32 11
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @CMD_CFG_PROMIS_EN, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %21, %16
  %26 = load %struct.tgec_cfg*, %struct.tgec_cfg** %5, align 8
  %27 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %26, i32 0, i32 10
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @CMD_CFG_PAUSE_FWD, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.tgec_cfg*, %struct.tgec_cfg** %5, align 8
  %36 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %35, i32 0, i32 9
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @CMD_CFG_PAUSE_IGNORE, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.tgec_cfg*, %struct.tgec_cfg** %5, align 8
  %45 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %44, i32 0, i32 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @CMD_CFG_TX_ADDR_INS, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load %struct.tgec_cfg*, %struct.tgec_cfg** %5, align 8
  %54 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %53, i32 0, i32 7
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @CMD_CFG_LOOPBACK_EN, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %57, %52
  %62 = load %struct.tgec_cfg*, %struct.tgec_cfg** %5, align 8
  %63 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @CMD_CFG_CMD_FRM_EN, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %66, %61
  %71 = load %struct.tgec_cfg*, %struct.tgec_cfg** %5, align 8
  %72 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @CMD_CFG_RX_ER_DISC, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %75, %70
  %80 = load %struct.tgec_cfg*, %struct.tgec_cfg** %5, align 8
  %81 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @CMD_CFG_SEND_IDLE, align 4
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %84, %79
  %89 = load %struct.tgec_cfg*, %struct.tgec_cfg** %5, align 8
  %90 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @CMD_CFG_NO_LEN_CHK, align 4
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %93, %88
  %98 = load %struct.tgec_cfg*, %struct.tgec_cfg** %5, align 8
  %99 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i32, i32* @CMD_CFG_EN_TIMESTAMP, align 4
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %102, %97
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.tgec_regs*, %struct.tgec_regs** %4, align 8
  %109 = getelementptr inbounds %struct.tgec_regs, %struct.tgec_regs* %108, i32 0, i32 2
  %110 = call i32 @iowrite32be(i32 %107, i32* %109)
  %111 = load %struct.tgec_cfg*, %struct.tgec_cfg** %5, align 8
  %112 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = load %struct.tgec_regs*, %struct.tgec_regs** %4, align 8
  %116 = getelementptr inbounds %struct.tgec_regs, %struct.tgec_regs* %115, i32 0, i32 1
  %117 = call i32 @iowrite32be(i32 %114, i32* %116)
  %118 = load %struct.tgec_cfg*, %struct.tgec_cfg** %5, align 8
  %119 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.tgec_regs*, %struct.tgec_regs** %4, align 8
  %122 = getelementptr inbounds %struct.tgec_regs, %struct.tgec_regs* %121, i32 0, i32 0
  %123 = call i32 @iowrite32be(i32 %120, i32* %122)
  %124 = load %struct.tgec_regs*, %struct.tgec_regs** %4, align 8
  %125 = call i32 @fman_tgec_ack_event(%struct.tgec_regs* %124, i32 -1)
  %126 = load %struct.tgec_regs*, %struct.tgec_regs** %4, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @fman_tgec_enable_interrupt(%struct.tgec_regs* %126, i32 %127)
  ret i32 0
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @fman_tgec_ack_event(%struct.tgec_regs*, i32) #1

declare dso_local i32 @fman_tgec_enable_interrupt(%struct.tgec_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec.c_fman_dtsec_defconfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec.c_fman_dtsec_defconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DEFAULT_HALFDUP_ON = common dso_local global i32 0, align 4
@DEFAULT_HALFDUP_RETRANSMIT = common dso_local global i32 0, align 4
@DEFAULT_HALFDUP_COLL_WINDOW = common dso_local global i32 0, align 4
@DEFAULT_HALFDUP_EXCESS_DEFER = common dso_local global i32 0, align 4
@DEFAULT_HALFDUP_NO_BACKOFF = common dso_local global i32 0, align 4
@DEFAULT_HALFDUP_BP_NO_BACKOFF = common dso_local global i32 0, align 4
@DEFAULT_HALFDUP_ALT_BACKOFF_VAL = common dso_local global i32 0, align 4
@DEFAULT_HALFDUP_ALT_BACKOFF_EN = common dso_local global i32 0, align 4
@DEFAULT_RX_DROP_BCAST = common dso_local global i32 0, align 4
@DEFAULT_RX_SHORT_FRM = common dso_local global i32 0, align 4
@DEFAULT_RX_LEN_CHECK = common dso_local global i32 0, align 4
@DEFAULT_TX_PAD_CRC = common dso_local global i32 0, align 4
@DEFAULT_TX_CRC = common dso_local global i32 0, align 4
@DEFAULT_RX_CTRL_ACC = common dso_local global i32 0, align 4
@DEFAULT_TX_PAUSE_TIME = common dso_local global i32 0, align 4
@DEFAULT_TBIPA = common dso_local global i32 0, align 4
@DEFAULT_RX_PREPEND = common dso_local global i32 0, align 4
@DEFAULT_PTP_TSU_EN = common dso_local global i32 0, align 4
@DEFAULT_PTP_EXCEPTION_EN = common dso_local global i32 0, align 4
@DEFAULT_PREAMBLE_LEN = common dso_local global i32 0, align 4
@DEFAULT_RX_PREAMBLE = common dso_local global i32 0, align 4
@DEFAULT_TX_PREAMBLE = common dso_local global i32 0, align 4
@DEFAULT_LOOPBACK = common dso_local global i32 0, align 4
@DEFAULT_RX_TIME_STAMP_EN = common dso_local global i32 0, align 4
@DEFAULT_TX_TIME_STAMP_EN = common dso_local global i32 0, align 4
@DEFAULT_RX_FLOW = common dso_local global i32 0, align 4
@DEFAULT_TX_FLOW = common dso_local global i32 0, align 4
@DEFAULT_RX_GROUP_HASH_EXD = common dso_local global i32 0, align 4
@DEFAULT_TX_PAUSE_TIME_EXTD = common dso_local global i32 0, align 4
@DEFAULT_RX_PROMISC = common dso_local global i32 0, align 4
@DEFAULT_NON_BACK_TO_BACK_IPG1 = common dso_local global i32 0, align 4
@DEFAULT_NON_BACK_TO_BACK_IPG2 = common dso_local global i32 0, align 4
@DEFAULT_MIN_IFG_ENFORCEMENT = common dso_local global i32 0, align 4
@DEFAULT_BACK_TO_BACK_IPG = common dso_local global i32 0, align 4
@DEFAULT_MAXIMUM_FRAME = common dso_local global i32 0, align 4
@DEFAULT_TBI_PHY_ADDR = common dso_local global i32 0, align 4
@DEFAULT_WAKE_ON_LAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_dtsec_defconfig(%struct.dtsec_cfg* %0) #0 {
  %2 = alloca %struct.dtsec_cfg*, align 8
  store %struct.dtsec_cfg* %0, %struct.dtsec_cfg** %2, align 8
  %3 = load i32, i32* @DEFAULT_HALFDUP_ON, align 4
  %4 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %5 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %4, i32 0, i32 36
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @DEFAULT_HALFDUP_RETRANSMIT, align 4
  %7 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %8 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %7, i32 0, i32 35
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @DEFAULT_HALFDUP_COLL_WINDOW, align 4
  %10 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %11 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %10, i32 0, i32 34
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @DEFAULT_HALFDUP_EXCESS_DEFER, align 4
  %13 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %14 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %13, i32 0, i32 33
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @DEFAULT_HALFDUP_NO_BACKOFF, align 4
  %16 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %17 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %16, i32 0, i32 32
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @DEFAULT_HALFDUP_BP_NO_BACKOFF, align 4
  %19 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %20 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %19, i32 0, i32 31
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @DEFAULT_HALFDUP_ALT_BACKOFF_VAL, align 4
  %22 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %23 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %22, i32 0, i32 30
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @DEFAULT_HALFDUP_ALT_BACKOFF_EN, align 4
  %25 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %26 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %25, i32 0, i32 29
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @DEFAULT_RX_DROP_BCAST, align 4
  %28 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %29 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %28, i32 0, i32 28
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @DEFAULT_RX_SHORT_FRM, align 4
  %31 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %32 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %31, i32 0, i32 27
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @DEFAULT_RX_LEN_CHECK, align 4
  %34 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %35 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %34, i32 0, i32 26
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @DEFAULT_TX_PAD_CRC, align 4
  %37 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %38 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %37, i32 0, i32 25
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @DEFAULT_TX_CRC, align 4
  %40 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %41 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %40, i32 0, i32 24
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @DEFAULT_RX_CTRL_ACC, align 4
  %43 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %44 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %43, i32 0, i32 23
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @DEFAULT_TX_PAUSE_TIME, align 4
  %46 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %47 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %46, i32 0, i32 22
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @DEFAULT_TBIPA, align 4
  %49 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %50 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %49, i32 0, i32 21
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @DEFAULT_RX_PREPEND, align 4
  %52 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %53 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %52, i32 0, i32 20
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @DEFAULT_PTP_TSU_EN, align 4
  %55 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %56 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %55, i32 0, i32 19
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @DEFAULT_PTP_EXCEPTION_EN, align 4
  %58 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %59 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %58, i32 0, i32 18
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @DEFAULT_PREAMBLE_LEN, align 4
  %61 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %62 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %61, i32 0, i32 17
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @DEFAULT_RX_PREAMBLE, align 4
  %64 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %65 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %64, i32 0, i32 16
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @DEFAULT_TX_PREAMBLE, align 4
  %67 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %68 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %67, i32 0, i32 15
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @DEFAULT_LOOPBACK, align 4
  %70 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %71 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %70, i32 0, i32 14
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @DEFAULT_RX_TIME_STAMP_EN, align 4
  %73 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %74 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %73, i32 0, i32 13
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @DEFAULT_TX_TIME_STAMP_EN, align 4
  %76 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %77 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %76, i32 0, i32 12
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @DEFAULT_RX_FLOW, align 4
  %79 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %80 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %79, i32 0, i32 11
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @DEFAULT_TX_FLOW, align 4
  %82 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %83 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %82, i32 0, i32 10
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @DEFAULT_RX_GROUP_HASH_EXD, align 4
  %85 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %86 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %85, i32 0, i32 9
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @DEFAULT_TX_PAUSE_TIME_EXTD, align 4
  %88 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %89 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %88, i32 0, i32 8
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @DEFAULT_RX_PROMISC, align 4
  %91 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %92 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @DEFAULT_NON_BACK_TO_BACK_IPG1, align 4
  %94 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %95 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @DEFAULT_NON_BACK_TO_BACK_IPG2, align 4
  %97 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %98 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @DEFAULT_MIN_IFG_ENFORCEMENT, align 4
  %100 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %101 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @DEFAULT_BACK_TO_BACK_IPG, align 4
  %103 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %104 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @DEFAULT_MAXIMUM_FRAME, align 4
  %106 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %107 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @DEFAULT_TBI_PHY_ADDR, align 4
  %109 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %110 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @DEFAULT_WAKE_ON_LAN, align 4
  %112 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %113 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

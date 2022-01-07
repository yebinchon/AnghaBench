; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_tx_generic_crc_table_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_tx_generic_crc_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@AL_ETH_REV_ID_2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"eth [%s]: enable tx_generic_crc\0A\00", align 1
@AL_ETH_TX_GENERIC_CRC_ENTRIES_NUM = common dso_local global i32 0, align 4
@al_eth_generic_tx_crc_gcp = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_tx_generic_crc_table_init(%struct.al_hal_eth_adapter* %0) #0 {
  %2 = alloca %struct.al_hal_eth_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %2, align 8
  %4 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @AL_ETH_REV_ID_2, align 8
  %8 = icmp sgt i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @al_assert(i32 %9)
  %11 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @al_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = call i32 @al_reg_write32(i32* %19, i32 0)
  %21 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @al_reg_write32(i32* %25, i32 0)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %39, %1
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @AL_ETH_TX_GENERIC_CRC_ENTRIES_NUM, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load i32*, i32** @al_eth_generic_tx_crc_gcp, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @al_eth_tx_generic_crc_table_entry_set(%struct.al_hal_eth_adapter* %32, i32 %33, i32* %37)
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %27

42:                                               ; preds = %27
  ret i32 0
}

declare dso_local i32 @al_assert(i32) #1

declare dso_local i32 @al_dbg(i8*, i32) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

declare dso_local i32 @al_eth_tx_generic_crc_table_entry_set(%struct.al_hal_eth_adapter*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

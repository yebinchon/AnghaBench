; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_tx_crc_chksum_replace_cmd_entry_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_tx_crc_chksum_replace_cmd_entry_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@L4_CHECKSUM_DIS_AND_L3_CHECKSUM_DIS = common dso_local global i32 0, align 4
@L4_CHECKSUM_DIS_AND_L3_CHECKSUM_EN = common dso_local global i32 0, align 4
@L4_CHECKSUM_EN_AND_L3_CHECKSUM_DIS = common dso_local global i32 0, align 4
@L4_CHECKSUM_EN_AND_L3_CHECKSUM_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_tx_crc_chksum_replace_cmd_entry_set(%struct.al_hal_eth_adapter* %0, i32 %1, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry* %2) #0 {
  %4 = alloca %struct.al_hal_eth_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry* %2, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry** %6, align 8
  %9 = load i32, i32* @L4_CHECKSUM_DIS_AND_L3_CHECKSUM_DIS, align 4
  %10 = load i32, i32* %5, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry*, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry** %6, align 8
  %13 = getelementptr inbounds %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry* %12, i32 0, i32 11
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = shl i32 %15, 0
  store i32 %16, i32* %8, align 4
  %17 = load %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry*, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry** %6, align 8
  %18 = getelementptr inbounds %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry* %17, i32 0, i32 10
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = shl i32 %20, 1
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry*, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry** %6, align 8
  %25 = getelementptr inbounds %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry* %24, i32 0, i32 9
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = shl i32 %27, 2
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @al_reg_write32(i32* %35, i32 %36)
  %38 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %39 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @al_reg_write32(i32* %42, i32 %43)
  %45 = load i32, i32* @L4_CHECKSUM_DIS_AND_L3_CHECKSUM_EN, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %7, align 4
  %48 = load %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry*, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry** %6, align 8
  %49 = getelementptr inbounds %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry* %48, i32 0, i32 8
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = shl i32 %51, 0
  store i32 %52, i32* %8, align 4
  %53 = load %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry*, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry** %6, align 8
  %54 = getelementptr inbounds %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry* %53, i32 0, i32 7
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = shl i32 %56, 1
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry*, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry** %6, align 8
  %61 = getelementptr inbounds %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = shl i32 %63, 2
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %68 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @al_reg_write32(i32* %71, i32 %72)
  %74 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %75 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @al_reg_write32(i32* %78, i32 %79)
  %81 = load i32, i32* @L4_CHECKSUM_EN_AND_L3_CHECKSUM_DIS, align 4
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %7, align 4
  %84 = load %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry*, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry** %6, align 8
  %85 = getelementptr inbounds %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = shl i32 %87, 0
  store i32 %88, i32* %8, align 4
  %89 = load %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry*, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry** %6, align 8
  %90 = getelementptr inbounds %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = shl i32 %92, 1
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %8, align 4
  %96 = load %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry*, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry** %6, align 8
  %97 = getelementptr inbounds %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = shl i32 %99, 2
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %8, align 4
  %103 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %104 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @al_reg_write32(i32* %107, i32 %108)
  %110 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %111 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @al_reg_write32(i32* %114, i32 %115)
  %117 = load i32, i32* @L4_CHECKSUM_EN_AND_L3_CHECKSUM_EN, align 4
  %118 = load i32, i32* %5, align 4
  %119 = or i32 %117, %118
  store i32 %119, i32* %7, align 4
  %120 = load %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry*, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry** %6, align 8
  %121 = getelementptr inbounds %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = shl i32 %123, 0
  store i32 %124, i32* %8, align 4
  %125 = load %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry*, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry** %6, align 8
  %126 = getelementptr inbounds %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = shl i32 %128, 1
  %130 = load i32, i32* %8, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %8, align 4
  %132 = load %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry*, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry** %6, align 8
  %133 = getelementptr inbounds %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry, %struct.al_eth_tx_crc_chksum_replace_cmd_for_protocol_num_entry* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = shl i32 %135, 2
  %137 = load i32, i32* %8, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %8, align 4
  %139 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %140 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %139, i32 0, i32 0
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @al_reg_write32(i32* %143, i32 %144)
  %146 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %147 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @al_reg_write32(i32* %150, i32 %151)
  ret i32 0
}

declare dso_local i32 @al_reg_write32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

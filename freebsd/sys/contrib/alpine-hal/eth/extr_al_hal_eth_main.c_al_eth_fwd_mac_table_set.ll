; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_fwd_mac_table_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_fwd_mac_table_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.al_eth_fwd_mac_table_entry = type { i32*, i32* }

@AL_ETH_FWD_MAC_NUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_fwd_mac_table_set(%struct.al_hal_eth_adapter* %0, i64 %1, %struct.al_eth_fwd_mac_table_entry* %2) #0 {
  %4 = alloca %struct.al_hal_eth_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.al_eth_fwd_mac_table_entry*, align 8
  %7 = alloca i64, align 8
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.al_eth_fwd_mac_table_entry* %2, %struct.al_eth_fwd_mac_table_entry** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @AL_ETH_FWD_MAC_NUM, align 8
  %10 = icmp ult i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @al_assert(i32 %11)
  %13 = load %struct.al_eth_fwd_mac_table_entry*, %struct.al_eth_fwd_mac_table_entry** %6, align 8
  %14 = getelementptr inbounds %struct.al_eth_fwd_mac_table_entry, %struct.al_eth_fwd_mac_table_entry* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 24
  %19 = load %struct.al_eth_fwd_mac_table_entry*, %struct.al_eth_fwd_mac_table_entry** %6, align 8
  %20 = getelementptr inbounds %struct.al_eth_fwd_mac_table_entry, %struct.al_eth_fwd_mac_table_entry* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 16
  %25 = or i32 %18, %24
  %26 = load %struct.al_eth_fwd_mac_table_entry*, %struct.al_eth_fwd_mac_table_entry** %6, align 8
  %27 = getelementptr inbounds %struct.al_eth_fwd_mac_table_entry, %struct.al_eth_fwd_mac_table_entry* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 8
  %32 = or i32 %25, %31
  %33 = load %struct.al_eth_fwd_mac_table_entry*, %struct.al_eth_fwd_mac_table_entry** %6, align 8
  %34 = getelementptr inbounds %struct.al_eth_fwd_mac_table_entry, %struct.al_eth_fwd_mac_table_entry* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 5
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %32, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %7, align 8
  %40 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %41 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @al_reg_write32(i32* %47, i64 %48)
  %50 = load %struct.al_eth_fwd_mac_table_entry*, %struct.al_eth_fwd_mac_table_entry** %6, align 8
  %51 = getelementptr inbounds %struct.al_eth_fwd_mac_table_entry, %struct.al_eth_fwd_mac_table_entry* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 8
  %56 = load %struct.al_eth_fwd_mac_table_entry*, %struct.al_eth_fwd_mac_table_entry** %6, align 8
  %57 = getelementptr inbounds %struct.al_eth_fwd_mac_table_entry, %struct.al_eth_fwd_mac_table_entry* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %55, %60
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %7, align 8
  %63 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %64 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @al_reg_write32(i32* %70, i64 %71)
  %73 = load %struct.al_eth_fwd_mac_table_entry*, %struct.al_eth_fwd_mac_table_entry** %6, align 8
  %74 = getelementptr inbounds %struct.al_eth_fwd_mac_table_entry, %struct.al_eth_fwd_mac_table_entry* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 24
  %79 = load %struct.al_eth_fwd_mac_table_entry*, %struct.al_eth_fwd_mac_table_entry** %6, align 8
  %80 = getelementptr inbounds %struct.al_eth_fwd_mac_table_entry, %struct.al_eth_fwd_mac_table_entry* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 16
  %85 = or i32 %78, %84
  %86 = load %struct.al_eth_fwd_mac_table_entry*, %struct.al_eth_fwd_mac_table_entry** %6, align 8
  %87 = getelementptr inbounds %struct.al_eth_fwd_mac_table_entry, %struct.al_eth_fwd_mac_table_entry* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 8
  %92 = or i32 %85, %91
  %93 = load %struct.al_eth_fwd_mac_table_entry*, %struct.al_eth_fwd_mac_table_entry** %6, align 8
  %94 = getelementptr inbounds %struct.al_eth_fwd_mac_table_entry, %struct.al_eth_fwd_mac_table_entry* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 5
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %92, %97
  %99 = sext i32 %98 to i64
  store i64 %99, i64* %7, align 8
  %100 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %101 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = load i64, i64* %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i64, i64* %7, align 8
  %109 = call i32 @al_reg_write32(i32* %107, i64 %108)
  %110 = load %struct.al_eth_fwd_mac_table_entry*, %struct.al_eth_fwd_mac_table_entry** %6, align 8
  %111 = getelementptr inbounds %struct.al_eth_fwd_mac_table_entry, %struct.al_eth_fwd_mac_table_entry* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 8
  %116 = load %struct.al_eth_fwd_mac_table_entry*, %struct.al_eth_fwd_mac_table_entry** %6, align 8
  %117 = getelementptr inbounds %struct.al_eth_fwd_mac_table_entry, %struct.al_eth_fwd_mac_table_entry* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %115, %120
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %7, align 8
  %123 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %124 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = load i64, i64* %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i64, i64* %7, align 8
  %132 = call i32 @al_reg_write32(i32* %130, i64 %131)
  %133 = load %struct.al_eth_fwd_mac_table_entry*, %struct.al_eth_fwd_mac_table_entry** %6, align 8
  %134 = call i64 @al_eth_fwd_mac_table_entry_to_val(%struct.al_eth_fwd_mac_table_entry* %133)
  store i64 %134, i64* %7, align 8
  %135 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %136 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %135, i32 0, i32 0
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = load i64, i64* %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i64, i64* %7, align 8
  %144 = call i32 @al_reg_write32(i32* %142, i64 %143)
  ret i32 0
}

declare dso_local i32 @al_assert(i32) #1

declare dso_local i32 @al_reg_write32(i32*, i64) #1

declare dso_local i64 @al_eth_fwd_mac_table_entry_to_val(%struct.al_eth_fwd_mac_table_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

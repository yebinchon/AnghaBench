; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_wol_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_wol_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.al_eth_wol_params = type { i32, i32, i32, i64, i32*, i32*, i32* }

@AL_ETH_WOL_INT_MAGIC_PSWD = common dso_local global i32 0, align 4
@AL_ETH_WOL_INT_IPV4 = common dso_local global i32 0, align 4
@AL_ETH_WOL_INT_IPV6 = common dso_local global i32 0, align 4
@AL_ETH_WOL_INT_ETHERTYPE_BC = common dso_local global i32 0, align 4
@AL_ETH_WOL_INT_ETHERTYPE_DA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_wol_enable(%struct.al_hal_eth_adapter* %0, %struct.al_eth_wol_params* %1) #0 {
  %3 = alloca %struct.al_hal_eth_adapter*, align 8
  %4 = alloca %struct.al_eth_wol_params*, align 8
  %5 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %3, align 8
  store %struct.al_eth_wol_params* %1, %struct.al_eth_wol_params** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.al_eth_wol_params*, %struct.al_eth_wol_params** %4, align 8
  %7 = getelementptr inbounds %struct.al_eth_wol_params, %struct.al_eth_wol_params* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @AL_ETH_WOL_INT_MAGIC_PSWD, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %2
  %13 = load %struct.al_eth_wol_params*, %struct.al_eth_wol_params** %4, align 8
  %14 = getelementptr inbounds %struct.al_eth_wol_params, %struct.al_eth_wol_params* %13, i32 0, i32 6
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @al_assert(i32 %17)
  %19 = load %struct.al_eth_wol_params*, %struct.al_eth_wol_params** %4, align 8
  %20 = getelementptr inbounds %struct.al_eth_wol_params, %struct.al_eth_wol_params* %19, i32 0, i32 6
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = call i32 @al_eth_byte_arr_to_reg(i32* %5, i32* %22, i32 4)
  %24 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @al_reg_write32(i32* %28, i32 %29)
  %31 = load %struct.al_eth_wol_params*, %struct.al_eth_wol_params** %4, align 8
  %32 = getelementptr inbounds %struct.al_eth_wol_params, %struct.al_eth_wol_params* %31, i32 0, i32 6
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = call i32 @al_eth_byte_arr_to_reg(i32* %5, i32* %34, i32 2)
  %36 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 7
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @al_reg_write32(i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %12, %2
  %44 = load %struct.al_eth_wol_params*, %struct.al_eth_wol_params** %4, align 8
  %45 = getelementptr inbounds %struct.al_eth_wol_params, %struct.al_eth_wol_params* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @AL_ETH_WOL_INT_IPV4, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %43
  %51 = load %struct.al_eth_wol_params*, %struct.al_eth_wol_params** %4, align 8
  %52 = getelementptr inbounds %struct.al_eth_wol_params, %struct.al_eth_wol_params* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 @al_assert(i32 %55)
  %57 = load %struct.al_eth_wol_params*, %struct.al_eth_wol_params** %4, align 8
  %58 = getelementptr inbounds %struct.al_eth_wol_params, %struct.al_eth_wol_params* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = call i32 @al_eth_byte_arr_to_reg(i32* %5, i32* %60, i32 4)
  %62 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 6
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @al_reg_write32(i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %50, %43
  %70 = load %struct.al_eth_wol_params*, %struct.al_eth_wol_params** %4, align 8
  %71 = getelementptr inbounds %struct.al_eth_wol_params, %struct.al_eth_wol_params* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @AL_ETH_WOL_INT_IPV6, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %131

76:                                               ; preds = %69
  %77 = load %struct.al_eth_wol_params*, %struct.al_eth_wol_params** %4, align 8
  %78 = getelementptr inbounds %struct.al_eth_wol_params, %struct.al_eth_wol_params* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i32 @al_assert(i32 %81)
  %83 = load %struct.al_eth_wol_params*, %struct.al_eth_wol_params** %4, align 8
  %84 = getelementptr inbounds %struct.al_eth_wol_params, %struct.al_eth_wol_params* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = call i32 @al_eth_byte_arr_to_reg(i32* %5, i32* %86, i32 4)
  %88 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %89 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 5
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @al_reg_write32(i32* %92, i32 %93)
  %95 = load %struct.al_eth_wol_params*, %struct.al_eth_wol_params** %4, align 8
  %96 = getelementptr inbounds %struct.al_eth_wol_params, %struct.al_eth_wol_params* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  %99 = call i32 @al_eth_byte_arr_to_reg(i32* %5, i32* %98, i32 4)
  %100 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %101 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @al_reg_write32(i32* %104, i32 %105)
  %107 = load %struct.al_eth_wol_params*, %struct.al_eth_wol_params** %4, align 8
  %108 = getelementptr inbounds %struct.al_eth_wol_params, %struct.al_eth_wol_params* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 8
  %111 = call i32 @al_eth_byte_arr_to_reg(i32* %5, i32* %110, i32 4)
  %112 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %113 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @al_reg_write32(i32* %116, i32 %117)
  %119 = load %struct.al_eth_wol_params*, %struct.al_eth_wol_params** %4, align 8
  %120 = getelementptr inbounds %struct.al_eth_wol_params, %struct.al_eth_wol_params* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 12
  %123 = call i32 @al_eth_byte_arr_to_reg(i32* %5, i32* %122, i32 4)
  %124 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %125 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @al_reg_write32(i32* %128, i32 %129)
  br label %131

131:                                              ; preds = %76, %69
  %132 = load %struct.al_eth_wol_params*, %struct.al_eth_wol_params** %4, align 8
  %133 = getelementptr inbounds %struct.al_eth_wol_params, %struct.al_eth_wol_params* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @AL_ETH_WOL_INT_ETHERTYPE_BC, align 4
  %136 = load i32, i32* @AL_ETH_WOL_INT_ETHERTYPE_DA, align 4
  %137 = or i32 %135, %136
  %138 = and i32 %134, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %158

140:                                              ; preds = %131
  %141 = load %struct.al_eth_wol_params*, %struct.al_eth_wol_params** %4, align 8
  %142 = getelementptr inbounds %struct.al_eth_wol_params, %struct.al_eth_wol_params* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = trunc i64 %143 to i32
  %145 = shl i32 %144, 16
  store i32 %145, i32* %5, align 4
  %146 = load %struct.al_eth_wol_params*, %struct.al_eth_wol_params** %4, align 8
  %147 = getelementptr inbounds %struct.al_eth_wol_params, %struct.al_eth_wol_params* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %5, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %5, align 4
  %151 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %152 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %151, i32 0, i32 0
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @al_reg_write32(i32* %155, i32 %156)
  br label %158

158:                                              ; preds = %140, %131
  %159 = load %struct.al_eth_wol_params*, %struct.al_eth_wol_params** %4, align 8
  %160 = getelementptr inbounds %struct.al_eth_wol_params, %struct.al_eth_wol_params* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.al_eth_wol_params*, %struct.al_eth_wol_params** %4, align 8
  %163 = getelementptr inbounds %struct.al_eth_wol_params, %struct.al_eth_wol_params* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %161, %164
  %166 = load %struct.al_eth_wol_params*, %struct.al_eth_wol_params** %4, align 8
  %167 = getelementptr inbounds %struct.al_eth_wol_params, %struct.al_eth_wol_params* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp eq i32 %165, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 @al_assert(i32 %170)
  %172 = load %struct.al_eth_wol_params*, %struct.al_eth_wol_params** %4, align 8
  %173 = getelementptr inbounds %struct.al_eth_wol_params, %struct.al_eth_wol_params* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = shl i32 %174, 16
  store i32 %175, i32* %5, align 4
  %176 = load %struct.al_eth_wol_params*, %struct.al_eth_wol_params** %4, align 8
  %177 = getelementptr inbounds %struct.al_eth_wol_params, %struct.al_eth_wol_params* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %5, align 4
  %181 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %182 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %181, i32 0, i32 0
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i32, i32* %5, align 4
  %187 = call i32 @al_reg_write32(i32* %185, i32 %186)
  ret i32 0
}

declare dso_local i32 @al_assert(i32) #1

declare dso_local i32 @al_eth_byte_arr_to_reg(i32*, i32*, i32) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/armadaxp/extr_armadaxp_mp.c_mv_axp_platform_mp_start_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/armadaxp/extr_armadaxp_mp.c_mv_axp_platform_mp_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_ID_CPU_MASK = common dso_local global i32 0, align 4
@MV_BASE = common dso_local global i64 0, align 8
@CPU_PMU_BOOT = common dso_local global i64 0, align 8
@fdt_immr_pa = common dso_local global i64 0, align 8
@mptramp_pmu_boot = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@mptramp = common dso_local global i64 0, align 8
@mptramp_end = common dso_local global i64 0, align 8
@CPU_ID_MV88SV584X_V7 = common dso_local global i32 0, align 4
@CPU_DIVCLK_CTRL2_RATIO_FULL1 = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@CPU_DIVCLK_CTRL2_RATIO_FULL0 = common dso_local global i32 0, align 4
@CPU_DIVCLK_CTRL0 = common dso_local global i32 0, align 4
@fdtbus_bs_tag = common dso_local global i32 0, align 4
@CPU_RESUME_CONTROL = common dso_local global i64 0, align 8
@mpentry = common dso_local global i64 0, align 8
@MP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mv_axp_platform_mp_start_ap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %10 = call i32 (...) @cp15_midr_get()
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @CPU_ID_CPU_MASK, align 4
  %12 = load i32, i32* %8, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %8, align 4
  %14 = call i64 @CPU_PMU(i32 0)
  %15 = load i64, i64* @MV_BASE, align 8
  %16 = sub nsw i64 %14, %15
  %17 = load i64, i64* @CPU_PMU_BOOT, align 8
  %18 = add nsw i64 %16, %17
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* @fdt_immr_pa, align 8
  %20 = load i64, i64* %9, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* @mptramp_pmu_boot, align 8
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = call i32* @pmap_mapdev(i32 -65536, i32 %22)
  store i32* %23, i32** %5, align 8
  %24 = load i64, i64* @mptramp, align 8
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %4, align 8
  br label %26

26:                                               ; preds = %35, %1
  %27 = load i32*, i32** %4, align 8
  %28 = load i64, i64* @mptramp_end, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = icmp ult i32* %27, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %31
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %4, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %5, align 8
  br label %26

40:                                               ; preds = %26
  %41 = load i32*, i32** %5, align 8
  %42 = ptrtoint i32* %41 to i64
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = call i32 @pmap_unmapdev(i64 %42, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @CPU_ID_MV88SV584X_V7, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %77

48:                                               ; preds = %40
  %49 = load i32, i32* @CPU_DIVCLK_CTRL2_RATIO_FULL1, align 4
  %50 = call i32 @read_cpu_clkdiv(i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 63
  store i32 %52, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %53

53:                                               ; preds = %73, %48
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @mp_ncpus, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %53
  %58 = load i32, i32* @CPU_DIVCLK_CTRL2_RATIO_FULL1, align 4
  %59 = call i32 @read_cpu_clkdiv(i32 %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @CPU_DIVCLK_MASK(i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = mul nsw i32 %65, 8
  %67 = shl i32 %64, %66
  %68 = load i32, i32* %3, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* @CPU_DIVCLK_CTRL2_RATIO_FULL1, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @write_cpu_clkdiv(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %57
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %53

76:                                               ; preds = %53
  br label %118

77:                                               ; preds = %40
  store i32 1, i32* %7, align 4
  %78 = load i32, i32* @mp_ncpus, align 4
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = load i32, i32* @CPU_DIVCLK_CTRL2_RATIO_FULL0, align 4
  %82 = call i32 @read_cpu_clkdiv(i32 %81)
  store i32 %82, i32* %3, align 4
  %83 = call i32 @CPU_DIVCLK_MASK(i32 3)
  %84 = load i32, i32* %3, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* %7, align 4
  %87 = shl i32 %86, 24
  %88 = load i32, i32* %3, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %3, align 4
  %90 = load i32, i32* @CPU_DIVCLK_CTRL2_RATIO_FULL0, align 4
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @write_cpu_clkdiv(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %80, %77
  store i32 2, i32* %6, align 4
  br label %94

94:                                               ; preds = %114, %93
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @mp_ncpus, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %94
  %99 = load i32, i32* @CPU_DIVCLK_CTRL2_RATIO_FULL1, align 4
  %100 = call i32 @read_cpu_clkdiv(i32 %99)
  store i32 %100, i32* %3, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @CPU_DIVCLK_MASK(i32 %101)
  %103 = load i32, i32* %3, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %3, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %6, align 4
  %107 = mul nsw i32 %106, 8
  %108 = shl i32 %105, %107
  %109 = load i32, i32* %3, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* @CPU_DIVCLK_CTRL2_RATIO_FULL1, align 4
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @write_cpu_clkdiv(i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %98
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %94

117:                                              ; preds = %94
  br label %118

118:                                              ; preds = %117, %76
  %119 = load i32, i32* @CPU_DIVCLK_CTRL0, align 4
  %120 = call i32 @read_cpu_clkdiv(i32 %119)
  store i32 %120, i32* %3, align 4
  %121 = load i32, i32* @mp_ncpus, align 4
  %122 = sub nsw i32 %121, 1
  %123 = shl i32 1, %122
  %124 = sub nsw i32 %123, 1
  %125 = shl i32 %124, 21
  %126 = load i32, i32* %3, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %3, align 4
  %128 = load i32, i32* @CPU_DIVCLK_CTRL0, align 4
  %129 = load i32, i32* %3, align 4
  %130 = call i32 @write_cpu_clkdiv(i32 %128, i32 %129)
  %131 = load i32, i32* @CPU_DIVCLK_CTRL0, align 4
  %132 = call i32 @read_cpu_clkdiv(i32 %131)
  store i32 %132, i32* %3, align 4
  %133 = load i32, i32* %3, align 4
  %134 = or i32 %133, 16777216
  store i32 %134, i32* %3, align 4
  %135 = load i32, i32* @CPU_DIVCLK_CTRL0, align 4
  %136 = load i32, i32* %3, align 4
  %137 = call i32 @write_cpu_clkdiv(i32 %135, i32 %136)
  %138 = call i32 @DELAY(i32 100)
  %139 = load i32, i32* %3, align 4
  %140 = and i32 %139, -31457281
  store i32 %140, i32* %3, align 4
  %141 = load i32, i32* @CPU_DIVCLK_CTRL0, align 4
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @write_cpu_clkdiv(i32 %141, i32 %142)
  %144 = call i32 @DELAY(i32 100)
  %145 = load i32, i32* @fdtbus_bs_tag, align 4
  %146 = load i64, i64* @MV_BASE, align 8
  %147 = load i64, i64* @CPU_RESUME_CONTROL, align 8
  %148 = call i32 @bus_space_write_4(i32 %145, i64 %146, i64 %147, i32 0)
  store i32 1, i32* %6, align 4
  br label %149

149:                                              ; preds = %161, %118
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @mp_ncpus, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %149
  %154 = load i32, i32* @fdtbus_bs_tag, align 4
  %155 = load i32, i32* %6, align 4
  %156 = call i64 @CPU_PMU(i32 %155)
  %157 = load i64, i64* @CPU_PMU_BOOT, align 8
  %158 = load i64, i64* @mpentry, align 8
  %159 = call i32 @pmap_kextract(i64 %158)
  %160 = call i32 @bus_space_write_4(i32 %154, i64 %156, i64 %157, i32 %159)
  br label %161

161:                                              ; preds = %153
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %6, align 4
  br label %149

164:                                              ; preds = %149
  %165 = call i32 (...) @dcache_wbinv_poc_all()
  store i32 1, i32* %6, align 4
  br label %166

166:                                              ; preds = %176, %164
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @mp_ncpus, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %179

170:                                              ; preds = %166
  %171 = load i32, i32* @fdtbus_bs_tag, align 4
  %172 = load i64, i64* @MP, align 8
  %173 = load i32, i32* %6, align 4
  %174 = call i64 @MP_SW_RESET(i32 %173)
  %175 = call i32 @bus_space_write_4(i32 %171, i64 %172, i64 %174, i32 0)
  br label %176

176:                                              ; preds = %170
  %177 = load i32, i32* %6, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %6, align 4
  br label %166

179:                                              ; preds = %166
  %180 = call i32 (...) @wmb()
  %181 = call i32 @DELAY(i32 10)
  %182 = call i32 (...) @armadaxp_init_coher_fabric()
  ret void
}

declare dso_local i32 @cp15_midr_get(...) #1

declare dso_local i64 @CPU_PMU(i32) #1

declare dso_local i32* @pmap_mapdev(i32, i32) #1

declare dso_local i32 @pmap_unmapdev(i64, i32) #1

declare dso_local i32 @read_cpu_clkdiv(i32) #1

declare dso_local i32 @CPU_DIVCLK_MASK(i32) #1

declare dso_local i32 @write_cpu_clkdiv(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bus_space_write_4(i32, i64, i64, i32) #1

declare dso_local i32 @pmap_kextract(i64) #1

declare dso_local i32 @dcache_wbinv_poc_all(...) #1

declare dso_local i64 @MP_SW_RESET(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @armadaxp_init_coher_fabric(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_pll.c_pll_set_std.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_pll.c_pll_set_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_sc = type { i64, i32, i32, i32, i32, %struct.mnp_bits }
%struct.mnp_bits = type { i32, i32, i32, i32 }

@ERANGE = common dso_local global i32 0, align 4
@CLK_SET_DRYRUN = common dso_local global i32 0, align 4
@CLK_SET_ROUND_UP = common dso_local global i32 0, align 4
@CLK_SET_ROUND_DOWN = common dso_local global i32 0, align 4
@PLL_BASE_DIVM_SHIFT = common dso_local global i32 0, align 4
@PLL_BASE_DIVN_SHIFT = common dso_local global i32 0, align 4
@PLL_BASE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pll_sc*, i32, i32*, i32, i32, i32, i32)* @pll_set_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pll_set_std(%struct.pll_sc* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.pll_sc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.mnp_bits*, align 8
  %18 = alloca i32, align 4
  store %struct.pll_sc* %0, %struct.pll_sc** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %20 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %19, i32 0, i32 5
  store %struct.mnp_bits* %20, %struct.mnp_bits** %17, align 8
  %21 = load i32, i32* %13, align 4
  %22 = load %struct.mnp_bits*, %struct.mnp_bits** %17, align 8
  %23 = getelementptr inbounds %struct.mnp_bits, %struct.mnp_bits* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 1, %24
  %26 = icmp sge i32 %21, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %7
  %28 = load i32, i32* @ERANGE, align 4
  store i32 %28, i32* %8, align 4
  br label %203

29:                                               ; preds = %7
  %30 = load i32, i32* %14, align 4
  %31 = load %struct.mnp_bits*, %struct.mnp_bits** %17, align 8
  %32 = getelementptr inbounds %struct.mnp_bits, %struct.mnp_bits* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 1, %33
  %35 = icmp sge i32 %30, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @ERANGE, align 4
  store i32 %37, i32* %8, align 4
  br label %203

38:                                               ; preds = %29
  %39 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @pdiv_to_reg(%struct.pll_sc* %39, i32 %40)
  %42 = load %struct.mnp_bits*, %struct.mnp_bits** %17, align 8
  %43 = getelementptr inbounds %struct.mnp_bits, %struct.mnp_bits* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 1, %44
  %46 = icmp sge i32 %41, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @ERANGE, align 4
  store i32 %48, i32* %8, align 4
  br label %203

49:                                               ; preds = %38
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @CLK_SET_DRYRUN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %49
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @CLK_SET_ROUND_UP, align 4
  %57 = load i32, i32* @CLK_SET_ROUND_DOWN, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %54
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %13, align 4
  %66 = sdiv i32 %64, %65
  %67 = load i32, i32* %14, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* %15, align 4
  %70 = sdiv i32 %68, %69
  %71 = icmp ne i32 %63, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = load i32, i32* @ERANGE, align 4
  store i32 %73, i32* %8, align 4
  br label %203

74:                                               ; preds = %61, %54
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %13, align 4
  %77 = sdiv i32 %75, %76
  %78 = load i32, i32* %14, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* %15, align 4
  %81 = sdiv i32 %79, %80
  %82 = load i32*, i32** %11, align 8
  store i32 %81, i32* %82, align 4
  store i32 0, i32* %8, align 4
  br label %203

83:                                               ; preds = %49
  %84 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %85 = call i32 @pll_disable(%struct.pll_sc* %84)
  %86 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %87 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %83
  %91 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %92 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %93 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %96 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @MD4(%struct.pll_sc* %91, i64 %94, i32 %97, i32 0)
  br label %99

99:                                               ; preds = %90, %83
  %100 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %101 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %102 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @RD4(%struct.pll_sc* %100, i32 %103, i32* %16)
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @PLL_BASE_DIVM_SHIFT, align 4
  %108 = load %struct.mnp_bits*, %struct.mnp_bits** %17, align 8
  %109 = getelementptr inbounds %struct.mnp_bits, %struct.mnp_bits* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @set_masked(i32 %105, i32 %106, i32 %107, i32 %110)
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* @PLL_BASE_DIVN_SHIFT, align 4
  %115 = load %struct.mnp_bits*, %struct.mnp_bits** %17, align 8
  %116 = getelementptr inbounds %struct.mnp_bits, %struct.mnp_bits* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @set_masked(i32 %112, i32 %113, i32 %114, i32 %117)
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %16, align 4
  %120 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @pdiv_to_reg(%struct.pll_sc* %120, i32 %121)
  %123 = load %struct.mnp_bits*, %struct.mnp_bits** %17, align 8
  %124 = getelementptr inbounds %struct.mnp_bits, %struct.mnp_bits* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.mnp_bits*, %struct.mnp_bits** %17, align 8
  %127 = getelementptr inbounds %struct.mnp_bits, %struct.mnp_bits* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @set_masked(i32 %119, i32 %122, i32 %125, i32 %128)
  store i32 %129, i32* %16, align 4
  %130 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %131 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %132 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %16, align 4
  %135 = call i32 @WR4(%struct.pll_sc* %130, i32 %133, i32 %134)
  %136 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %137 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %138 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @RD4(%struct.pll_sc* %136, i32 %139, i32* %16)
  %141 = load i32, i32* @PLL_BASE_ENABLE, align 4
  %142 = load i32, i32* %16, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %16, align 4
  %144 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %145 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %146 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %16, align 4
  %149 = call i32 @WR4(%struct.pll_sc* %144, i32 %147, i32 %148)
  %150 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %151 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %152 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @RD4(%struct.pll_sc* %150, i32 %153, i32* %16)
  %155 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %156 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %16, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %16, align 4
  %160 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %161 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %162 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %16, align 4
  %165 = call i32 @WR4(%struct.pll_sc* %160, i32 %163, i32 %164)
  %166 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %167 = call i32 @wait_for_lock(%struct.pll_sc* %166)
  store i32 %167, i32* %18, align 4
  %168 = load i32, i32* %18, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %187

170:                                              ; preds = %99
  %171 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %172 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %173 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @RD4(%struct.pll_sc* %171, i32 %174, i32* %16)
  %176 = load i32, i32* @PLL_BASE_ENABLE, align 4
  %177 = xor i32 %176, -1
  %178 = load i32, i32* %16, align 4
  %179 = and i32 %178, %177
  store i32 %179, i32* %16, align 4
  %180 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %181 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %182 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %16, align 4
  %185 = call i32 @WR4(%struct.pll_sc* %180, i32 %183, i32 %184)
  %186 = load i32, i32* %18, align 4
  store i32 %186, i32* %8, align 4
  br label %203

187:                                              ; preds = %99
  %188 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %189 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %190 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @RD4(%struct.pll_sc* %188, i32 %191, i32* %16)
  %193 = load %struct.pll_sc*, %struct.pll_sc** %9, align 8
  %194 = call i32 @pll_enable(%struct.pll_sc* %193)
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* %13, align 4
  %197 = sdiv i32 %195, %196
  %198 = load i32, i32* %14, align 4
  %199 = mul nsw i32 %197, %198
  %200 = load i32, i32* %15, align 4
  %201 = sdiv i32 %199, %200
  %202 = load i32*, i32** %11, align 8
  store i32 %201, i32* %202, align 4
  store i32 0, i32* %8, align 4
  br label %203

203:                                              ; preds = %187, %170, %74, %72, %47, %36, %27
  %204 = load i32, i32* %8, align 4
  ret i32 %204
}

declare dso_local i32 @pdiv_to_reg(%struct.pll_sc*, i32) #1

declare dso_local i32 @pll_disable(%struct.pll_sc*) #1

declare dso_local i32 @MD4(%struct.pll_sc*, i64, i32, i32) #1

declare dso_local i32 @RD4(%struct.pll_sc*, i32, i32*) #1

declare dso_local i32 @set_masked(i32, i32, i32, i32) #1

declare dso_local i32 @WR4(%struct.pll_sc*, i32, i32) #1

declare dso_local i32 @wait_for_lock(%struct.pll_sc*) #1

declare dso_local i32 @pll_enable(%struct.pll_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_pll.c_rk3399_clk_pll_set_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_pll.c_rk3399_clk_pll_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.rk_clk_pll_rate = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.rk_clk_pll_sc = type { i64, %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate* }

@EINVAL = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_MODE_SLOW = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_MODE_SHIFT = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_MODE_MASK = common dso_local global i32 0, align 4
@RK_CLK_PLL_MASK_SHIFT = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_FBDIV_SHIFT = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_FBDIV_MASK = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_POSTDIV1_SHIFT = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_POSTDIV2_SHIFT = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_REFDIV_SHIFT = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_POSTDIV1_MASK = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_POSTDIV2_MASK = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_REFDIV_MASK = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_FRAC_MASK = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_FRAC_SHIFT = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_WRITE_MASK = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_DSMPD_SHIFT = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_DSMPD_MASK = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_LOCK_OFFSET = common dso_local global i64 0, align 8
@RK3399_CLK_PLL_LOCK_MASK = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_MODE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i64, i64*, i32, i32*)* @rk3399_clk_pll_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3399_clk_pll_set_freq(%struct.clknode* %0, i64 %1, i64* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.clknode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.rk_clk_pll_rate*, align 8
  %13 = alloca %struct.rk_clk_pll_sc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load %struct.clknode*, %struct.clknode** %7, align 8
  %17 = call %struct.rk_clk_pll_sc* @clknode_get_softc(%struct.clknode* %16)
  store %struct.rk_clk_pll_sc* %17, %struct.rk_clk_pll_sc** %13, align 8
  %18 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %19 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %18, i32 0, i32 2
  %20 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %19, align 8
  %21 = icmp ne %struct.rk_clk_pll_rate* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %24 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %23, i32 0, i32 2
  %25 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %24, align 8
  store %struct.rk_clk_pll_rate* %25, %struct.rk_clk_pll_rate** %12, align 8
  br label %38

26:                                               ; preds = %5
  %27 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %28 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %27, i32 0, i32 1
  %29 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %28, align 8
  %30 = icmp ne %struct.rk_clk_pll_rate* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %33 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %32, i32 0, i32 1
  %34 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %33, align 8
  store %struct.rk_clk_pll_rate* %34, %struct.rk_clk_pll_rate** %12, align 8
  br label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %6, align 4
  br label %216

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %22
  br label %39

39:                                               ; preds = %53, %38
  %40 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %12, align 8
  %41 = getelementptr inbounds %struct.rk_clk_pll_rate, %struct.rk_clk_pll_rate* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %12, align 8
  %46 = getelementptr inbounds %struct.rk_clk_pll_rate, %struct.rk_clk_pll_rate* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %56

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %12, align 8
  %55 = getelementptr inbounds %struct.rk_clk_pll_rate, %struct.rk_clk_pll_rate* %54, i32 1
  store %struct.rk_clk_pll_rate* %55, %struct.rk_clk_pll_rate** %12, align 8
  br label %39

56:                                               ; preds = %51, %39
  %57 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %12, align 8
  %58 = getelementptr inbounds %struct.rk_clk_pll_rate, %struct.rk_clk_pll_rate* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32*, i32** %11, align 8
  store i32 1, i32* %62, align 4
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %6, align 4
  br label %216

64:                                               ; preds = %56
  %65 = load %struct.clknode*, %struct.clknode** %7, align 8
  %66 = call i32 @DEVICE_LOCK(%struct.clknode* %65)
  %67 = load i32, i32* @RK3399_CLK_PLL_MODE_SLOW, align 4
  %68 = load i32, i32* @RK3399_CLK_PLL_MODE_SHIFT, align 4
  %69 = shl i32 %67, %68
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* @RK3399_CLK_PLL_MODE_MASK, align 4
  %71 = load i32, i32* @RK_CLK_PLL_MASK_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %14, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %14, align 4
  %75 = load %struct.clknode*, %struct.clknode** %7, align 8
  %76 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %77 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 12
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @WRITE4(%struct.clknode* %75, i64 %79, i32 %80)
  %82 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %12, align 8
  %83 = getelementptr inbounds %struct.rk_clk_pll_rate, %struct.rk_clk_pll_rate* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @RK3399_CLK_PLL_FBDIV_SHIFT, align 4
  %86 = shl i32 %84, %85
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* @RK3399_CLK_PLL_FBDIV_MASK, align 4
  %88 = load i32, i32* @RK_CLK_PLL_MASK_SHIFT, align 4
  %89 = shl i32 %87, %88
  %90 = load i32, i32* %14, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %14, align 4
  %92 = load %struct.clknode*, %struct.clknode** %7, align 8
  %93 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %94 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @WRITE4(%struct.clknode* %92, i64 %95, i32 %96)
  %98 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %12, align 8
  %99 = getelementptr inbounds %struct.rk_clk_pll_rate, %struct.rk_clk_pll_rate* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @RK3399_CLK_PLL_POSTDIV1_SHIFT, align 4
  %102 = shl i32 %100, %101
  store i32 %102, i32* %14, align 4
  %103 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %12, align 8
  %104 = getelementptr inbounds %struct.rk_clk_pll_rate, %struct.rk_clk_pll_rate* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @RK3399_CLK_PLL_POSTDIV2_SHIFT, align 4
  %107 = shl i32 %105, %106
  %108 = load i32, i32* %14, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %14, align 4
  %110 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %12, align 8
  %111 = getelementptr inbounds %struct.rk_clk_pll_rate, %struct.rk_clk_pll_rate* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @RK3399_CLK_PLL_REFDIV_SHIFT, align 4
  %114 = shl i32 %112, %113
  %115 = load i32, i32* %14, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* @RK3399_CLK_PLL_POSTDIV1_MASK, align 4
  %118 = load i32, i32* @RK3399_CLK_PLL_POSTDIV2_MASK, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @RK3399_CLK_PLL_REFDIV_MASK, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @RK_CLK_PLL_MASK_SHIFT, align 4
  %123 = shl i32 %121, %122
  %124 = load i32, i32* %14, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %14, align 4
  %126 = load %struct.clknode*, %struct.clknode** %7, align 8
  %127 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %128 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 4
  %131 = load i32, i32* %14, align 4
  %132 = call i32 @WRITE4(%struct.clknode* %126, i64 %130, i32 %131)
  %133 = load %struct.clknode*, %struct.clknode** %7, align 8
  %134 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %135 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 8
  %138 = call i32 @READ4(%struct.clknode* %133, i64 %137, i32* %14)
  %139 = load i32, i32* @RK3399_CLK_PLL_FRAC_MASK, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %14, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %14, align 4
  %143 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %12, align 8
  %144 = getelementptr inbounds %struct.rk_clk_pll_rate, %struct.rk_clk_pll_rate* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @RK3399_CLK_PLL_FRAC_SHIFT, align 4
  %147 = shl i32 %145, %146
  %148 = load i32, i32* %14, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %14, align 4
  %150 = load %struct.clknode*, %struct.clknode** %7, align 8
  %151 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %152 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, 8
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* @RK3399_CLK_PLL_WRITE_MASK, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @WRITE4(%struct.clknode* %150, i64 %154, i32 %157)
  %159 = load %struct.rk_clk_pll_rate*, %struct.rk_clk_pll_rate** %12, align 8
  %160 = getelementptr inbounds %struct.rk_clk_pll_rate, %struct.rk_clk_pll_rate* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @RK3399_CLK_PLL_DSMPD_SHIFT, align 4
  %163 = shl i32 %161, %162
  store i32 %163, i32* %14, align 4
  %164 = load i32, i32* @RK3399_CLK_PLL_DSMPD_MASK, align 4
  %165 = load i32, i32* @RK_CLK_PLL_MASK_SHIFT, align 4
  %166 = shl i32 %164, %165
  %167 = load i32, i32* %14, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %14, align 4
  %169 = load %struct.clknode*, %struct.clknode** %7, align 8
  %170 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %171 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, 12
  %174 = load i32, i32* %14, align 4
  %175 = call i32 @WRITE4(%struct.clknode* %169, i64 %173, i32 %174)
  store i32 1000, i32* %15, align 4
  br label %176

176:                                              ; preds = %194, %64
  %177 = load i32, i32* %15, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %197

179:                                              ; preds = %176
  %180 = load %struct.clknode*, %struct.clknode** %7, align 8
  %181 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %182 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @RK3399_CLK_PLL_LOCK_OFFSET, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @READ4(%struct.clknode* %180, i64 %185, i32* %14)
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* @RK3399_CLK_PLL_LOCK_MASK, align 4
  %189 = and i32 %187, %188
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %179
  br label %197

192:                                              ; preds = %179
  %193 = call i32 @DELAY(i32 1)
  br label %194

194:                                              ; preds = %192
  %195 = load i32, i32* %15, align 4
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %15, align 4
  br label %176

197:                                              ; preds = %191, %176
  %198 = load i32, i32* @RK3399_CLK_PLL_MODE_NORMAL, align 4
  %199 = load i32, i32* @RK3399_CLK_PLL_MODE_SHIFT, align 4
  %200 = shl i32 %198, %199
  store i32 %200, i32* %14, align 4
  %201 = load i32, i32* @RK3399_CLK_PLL_MODE_MASK, align 4
  %202 = load i32, i32* @RK_CLK_PLL_MASK_SHIFT, align 4
  %203 = shl i32 %201, %202
  %204 = load i32, i32* %14, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %14, align 4
  %206 = load %struct.clknode*, %struct.clknode** %7, align 8
  %207 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %13, align 8
  %208 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %209, 12
  %211 = load i32, i32* %14, align 4
  %212 = call i32 @WRITE4(%struct.clknode* %206, i64 %210, i32 %211)
  %213 = load %struct.clknode*, %struct.clknode** %7, align 8
  %214 = call i32 @DEVICE_UNLOCK(%struct.clknode* %213)
  %215 = load i32*, i32** %11, align 8
  store i32 1, i32* %215, align 4
  store i32 0, i32* %6, align 4
  br label %216

216:                                              ; preds = %197, %61, %35
  %217 = load i32, i32* %6, align 4
  ret i32 %217
}

declare dso_local %struct.rk_clk_pll_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @DEVICE_LOCK(%struct.clknode*) #1

declare dso_local i32 @WRITE4(%struct.clknode*, i64, i32) #1

declare dso_local i32 @READ4(%struct.clknode*, i64, i32*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

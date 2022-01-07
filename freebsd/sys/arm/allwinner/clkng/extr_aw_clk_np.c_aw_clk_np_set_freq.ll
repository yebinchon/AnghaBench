; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_np.c_aw_clk_np_set_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_np.c_aw_clk_np_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.aw_clk_np_sc = type { i32, i32, i32, i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CLK_SET_DRYRUN = common dso_local global i32 0, align 4
@CLK_SET_ROUND_DOWN = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@CLK_SET_ROUND_UP = common dso_local global i32 0, align 4
@AW_CLK_HAS_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i64, i64*, i32, i32*)* @aw_clk_np_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_clk_np_set_freq(%struct.clknode* %0, i64 %1, i64* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.clknode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.aw_clk_np_sc*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %21 = load %struct.clknode*, %struct.clknode** %7, align 8
  %22 = call %struct.aw_clk_np_sc* @clknode_get_softc(%struct.clknode* %21)
  store %struct.aw_clk_np_sc* %22, %struct.aw_clk_np_sc** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %23 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %12, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64*, i64** %9, align 8
  %26 = call i64 @aw_clk_np_find_best(%struct.aw_clk_np_sc* %23, i64 %24, i64* %25, i32* %18, i32* %19)
  store i64 %26, i64* %14, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @CLK_SET_DRYRUN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = load i64, i64* %14, align 8
  %33 = load i64*, i64** %9, align 8
  store i64 %32, i64* %33, align 8
  %34 = load i32*, i32** %11, align 8
  store i32 1, i32* %34, align 4
  store i32 0, i32* %6, align 4
  br label %152

35:                                               ; preds = %5
  %36 = load i64, i64* %14, align 8
  %37 = load i64*, i64** %9, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @CLK_SET_ROUND_DOWN, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32*, i32** %11, align 8
  store i32 1, i32* %46, align 4
  %47 = load i32, i32* @ERANGE, align 4
  store i32 %47, i32* %6, align 4
  br label %152

48:                                               ; preds = %40, %35
  %49 = load i64, i64* %14, align 8
  %50 = load i64*, i64** %9, align 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %49, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @CLK_SET_ROUND_UP, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32*, i32** %11, align 8
  store i32 1, i32* %59, align 4
  %60 = load i32, i32* @ERANGE, align 4
  store i32 %60, i32* %6, align 4
  br label %152

61:                                               ; preds = %53, %48
  %62 = load %struct.clknode*, %struct.clknode** %7, align 8
  %63 = call i32 @DEVICE_LOCK(%struct.clknode* %62)
  %64 = load %struct.clknode*, %struct.clknode** %7, align 8
  %65 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %12, align 8
  %66 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @READ4(%struct.clknode* %64, i32 %67, i32* %15)
  %69 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %12, align 8
  %70 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %69, i32 0, i32 5
  %71 = load i32, i32* %18, align 4
  %72 = call i32 @aw_clk_factor_get_value(%struct.TYPE_2__* %70, i32 %71)
  store i32 %72, i32* %16, align 4
  %73 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %12, align 8
  %74 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %73, i32 0, i32 4
  %75 = load i32, i32* %19, align 4
  %76 = call i32 @aw_clk_factor_get_value(%struct.TYPE_2__* %74, i32 %75)
  store i32 %76, i32* %17, align 4
  %77 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %12, align 8
  %78 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %15, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %15, align 4
  %84 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %12, align 8
  %85 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %15, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %16, align 4
  %92 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %12, align 8
  %93 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %91, %95
  %97 = load i32, i32* %15, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %12, align 8
  %101 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %99, %103
  %105 = load i32, i32* %15, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %15, align 4
  %107 = load %struct.clknode*, %struct.clknode** %7, align 8
  %108 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %12, align 8
  %109 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @WRITE4(%struct.clknode* %107, i32 %110, i32 %111)
  %113 = load %struct.clknode*, %struct.clknode** %7, align 8
  %114 = call i32 @DEVICE_UNLOCK(%struct.clknode* %113)
  %115 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %12, align 8
  %116 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @AW_CLK_HAS_LOCK, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %148

121:                                              ; preds = %61
  store i32 0, i32* %20, align 4
  br label %122

122:                                              ; preds = %144, %121
  %123 = load i32, i32* %20, align 4
  %124 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %12, align 8
  %125 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %147

128:                                              ; preds = %122
  %129 = load %struct.clknode*, %struct.clknode** %7, align 8
  %130 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %12, align 8
  %131 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @READ4(%struct.clknode* %129, i32 %132, i32* %15)
  %134 = load i32, i32* %15, align 4
  %135 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %12, align 8
  %136 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 1, %137
  %139 = and i32 %134, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %128
  br label %147

142:                                              ; preds = %128
  %143 = call i32 @DELAY(i32 1000)
  br label %144

144:                                              ; preds = %142
  %145 = load i32, i32* %20, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %20, align 4
  br label %122

147:                                              ; preds = %141, %122
  br label %148

148:                                              ; preds = %147, %61
  %149 = load i64, i64* %14, align 8
  %150 = load i64*, i64** %9, align 8
  store i64 %149, i64* %150, align 8
  %151 = load i32*, i32** %11, align 8
  store i32 1, i32* %151, align 4
  store i32 0, i32* %6, align 4
  br label %152

152:                                              ; preds = %148, %58, %45, %31
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

declare dso_local %struct.aw_clk_np_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i64 @aw_clk_np_find_best(%struct.aw_clk_np_sc*, i64, i64*, i32*, i32*) #1

declare dso_local i32 @DEVICE_LOCK(%struct.clknode*) #1

declare dso_local i32 @READ4(%struct.clknode*, i32, i32*) #1

declare dso_local i32 @aw_clk_factor_get_value(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @WRITE4(%struct.clknode*, i32, i32) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.clknode*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

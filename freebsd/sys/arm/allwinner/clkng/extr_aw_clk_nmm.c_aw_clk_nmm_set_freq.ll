; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_nmm.c_aw_clk_nmm_set_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_nmm.c_aw_clk_nmm_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.aw_clk_nmm_sc = type { i32, i32, i32, i32, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CLK_SET_DRYRUN = common dso_local global i32 0, align 4
@CLK_SET_ROUND_DOWN = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@CLK_SET_ROUND_UP = common dso_local global i32 0, align 4
@AW_CLK_HAS_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i64, i64*, i32, i32*)* @aw_clk_nmm_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_clk_nmm_set_freq(%struct.clknode* %0, i64 %1, i64* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.clknode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.aw_clk_nmm_sc*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %23 = load %struct.clknode*, %struct.clknode** %7, align 8
  %24 = call %struct.aw_clk_nmm_sc* @clknode_get_softc(%struct.clknode* %23)
  store %struct.aw_clk_nmm_sc* %24, %struct.aw_clk_nmm_sc** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %25 = load %struct.aw_clk_nmm_sc*, %struct.aw_clk_nmm_sc** %12, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64*, i64** %9, align 8
  %28 = call i64 @aw_clk_nmm_find_best(%struct.aw_clk_nmm_sc* %25, i64 %26, i64* %27, i32* %19, i32* %20, i32* %21)
  store i64 %28, i64* %14, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @CLK_SET_DRYRUN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %5
  %34 = load i64, i64* %14, align 8
  %35 = load i64*, i64** %9, align 8
  store i64 %34, i64* %35, align 8
  %36 = load i32*, i32** %11, align 8
  store i32 1, i32* %36, align 4
  store i32 0, i32* %6, align 4
  br label %173

37:                                               ; preds = %5
  %38 = load i64, i64* %14, align 8
  %39 = load i64*, i64** %9, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @CLK_SET_ROUND_DOWN, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32*, i32** %11, align 8
  store i32 1, i32* %48, align 4
  %49 = load i32, i32* @ERANGE, align 4
  store i32 %49, i32* %6, align 4
  br label %173

50:                                               ; preds = %42, %37
  %51 = load i64, i64* %14, align 8
  %52 = load i64*, i64** %9, align 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %51, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @CLK_SET_ROUND_UP, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32*, i32** %11, align 8
  store i32 1, i32* %61, align 4
  %62 = load i32, i32* @ERANGE, align 4
  store i32 %62, i32* %6, align 4
  br label %173

63:                                               ; preds = %55, %50
  %64 = load %struct.clknode*, %struct.clknode** %7, align 8
  %65 = call i32 @DEVICE_LOCK(%struct.clknode* %64)
  %66 = load %struct.clknode*, %struct.clknode** %7, align 8
  %67 = load %struct.aw_clk_nmm_sc*, %struct.aw_clk_nmm_sc** %12, align 8
  %68 = getelementptr inbounds %struct.aw_clk_nmm_sc, %struct.aw_clk_nmm_sc* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @READ4(%struct.clknode* %66, i32 %69, i32* %15)
  %71 = load %struct.aw_clk_nmm_sc*, %struct.aw_clk_nmm_sc** %12, align 8
  %72 = getelementptr inbounds %struct.aw_clk_nmm_sc, %struct.aw_clk_nmm_sc* %71, i32 0, i32 6
  %73 = load i32, i32* %19, align 4
  %74 = call i32 @aw_clk_factor_get_value(%struct.TYPE_2__* %72, i32 %73)
  store i32 %74, i32* %16, align 4
  %75 = load %struct.aw_clk_nmm_sc*, %struct.aw_clk_nmm_sc** %12, align 8
  %76 = getelementptr inbounds %struct.aw_clk_nmm_sc, %struct.aw_clk_nmm_sc* %75, i32 0, i32 5
  %77 = load i32, i32* %20, align 4
  %78 = call i32 @aw_clk_factor_get_value(%struct.TYPE_2__* %76, i32 %77)
  store i32 %78, i32* %17, align 4
  %79 = load %struct.aw_clk_nmm_sc*, %struct.aw_clk_nmm_sc** %12, align 8
  %80 = getelementptr inbounds %struct.aw_clk_nmm_sc, %struct.aw_clk_nmm_sc* %79, i32 0, i32 4
  %81 = load i32, i32* %21, align 4
  %82 = call i32 @aw_clk_factor_get_value(%struct.TYPE_2__* %80, i32 %81)
  store i32 %82, i32* %18, align 4
  %83 = load %struct.aw_clk_nmm_sc*, %struct.aw_clk_nmm_sc** %12, align 8
  %84 = getelementptr inbounds %struct.aw_clk_nmm_sc, %struct.aw_clk_nmm_sc* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %15, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %15, align 4
  %90 = load %struct.aw_clk_nmm_sc*, %struct.aw_clk_nmm_sc** %12, align 8
  %91 = getelementptr inbounds %struct.aw_clk_nmm_sc, %struct.aw_clk_nmm_sc* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %15, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %15, align 4
  %97 = load %struct.aw_clk_nmm_sc*, %struct.aw_clk_nmm_sc** %12, align 8
  %98 = getelementptr inbounds %struct.aw_clk_nmm_sc, %struct.aw_clk_nmm_sc* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %15, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load %struct.aw_clk_nmm_sc*, %struct.aw_clk_nmm_sc** %12, align 8
  %106 = getelementptr inbounds %struct.aw_clk_nmm_sc, %struct.aw_clk_nmm_sc* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %104, %108
  %110 = load i32, i32* %15, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %17, align 4
  %113 = load %struct.aw_clk_nmm_sc*, %struct.aw_clk_nmm_sc** %12, align 8
  %114 = getelementptr inbounds %struct.aw_clk_nmm_sc, %struct.aw_clk_nmm_sc* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %112, %116
  %118 = load i32, i32* %15, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %18, align 4
  %121 = load %struct.aw_clk_nmm_sc*, %struct.aw_clk_nmm_sc** %12, align 8
  %122 = getelementptr inbounds %struct.aw_clk_nmm_sc, %struct.aw_clk_nmm_sc* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %120, %124
  %126 = load i32, i32* %15, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %15, align 4
  %128 = load %struct.clknode*, %struct.clknode** %7, align 8
  %129 = load %struct.aw_clk_nmm_sc*, %struct.aw_clk_nmm_sc** %12, align 8
  %130 = getelementptr inbounds %struct.aw_clk_nmm_sc, %struct.aw_clk_nmm_sc* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %15, align 4
  %133 = call i32 @WRITE4(%struct.clknode* %128, i32 %131, i32 %132)
  %134 = load %struct.clknode*, %struct.clknode** %7, align 8
  %135 = call i32 @DEVICE_UNLOCK(%struct.clknode* %134)
  %136 = load %struct.aw_clk_nmm_sc*, %struct.aw_clk_nmm_sc** %12, align 8
  %137 = getelementptr inbounds %struct.aw_clk_nmm_sc, %struct.aw_clk_nmm_sc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @AW_CLK_HAS_LOCK, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %169

142:                                              ; preds = %63
  store i32 0, i32* %22, align 4
  br label %143

143:                                              ; preds = %165, %142
  %144 = load i32, i32* %22, align 4
  %145 = load %struct.aw_clk_nmm_sc*, %struct.aw_clk_nmm_sc** %12, align 8
  %146 = getelementptr inbounds %struct.aw_clk_nmm_sc, %struct.aw_clk_nmm_sc* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %168

149:                                              ; preds = %143
  %150 = load %struct.clknode*, %struct.clknode** %7, align 8
  %151 = load %struct.aw_clk_nmm_sc*, %struct.aw_clk_nmm_sc** %12, align 8
  %152 = getelementptr inbounds %struct.aw_clk_nmm_sc, %struct.aw_clk_nmm_sc* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @READ4(%struct.clknode* %150, i32 %153, i32* %15)
  %155 = load i32, i32* %15, align 4
  %156 = load %struct.aw_clk_nmm_sc*, %struct.aw_clk_nmm_sc** %12, align 8
  %157 = getelementptr inbounds %struct.aw_clk_nmm_sc, %struct.aw_clk_nmm_sc* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = shl i32 1, %158
  %160 = and i32 %155, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %149
  br label %168

163:                                              ; preds = %149
  %164 = call i32 @DELAY(i32 1000)
  br label %165

165:                                              ; preds = %163
  %166 = load i32, i32* %22, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %22, align 4
  br label %143

168:                                              ; preds = %162, %143
  br label %169

169:                                              ; preds = %168, %63
  %170 = load i64, i64* %14, align 8
  %171 = load i64*, i64** %9, align 8
  store i64 %170, i64* %171, align 8
  %172 = load i32*, i32** %11, align 8
  store i32 1, i32* %172, align 4
  store i32 0, i32* %6, align 4
  br label %173

173:                                              ; preds = %169, %60, %47, %33
  %174 = load i32, i32* %6, align 4
  ret i32 %174
}

declare dso_local %struct.aw_clk_nmm_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i64 @aw_clk_nmm_find_best(%struct.aw_clk_nmm_sc*, i64, i64*, i32*, i32*, i32*) #1

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

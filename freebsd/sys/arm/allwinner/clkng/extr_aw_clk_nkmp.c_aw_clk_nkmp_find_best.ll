; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_nkmp.c_aw_clk_nkmp_find_best.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_nkmp.c_aw_clk_nkmp_find_best.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_clk_nkmp_sc = type { %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AW_CLK_FACTOR_POWER_OF_TWO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.aw_clk_nkmp_sc*, i64, i64*, i64*, i64*, i64*, i64*)* @aw_clk_nkmp_find_best to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @aw_clk_nkmp_find_best(%struct.aw_clk_nkmp_sc* %0, i64 %1, i64* %2, i64* %3, i64* %4, i64* %5, i64* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.aw_clk_nkmp_sc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.aw_clk_nkmp_sc* %0, %struct.aw_clk_nkmp_sc** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64* %2, i64** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  store i64 0, i64* %17, align 8
  %22 = load i64*, i64** %12, align 8
  store i64 0, i64* %22, align 8
  %23 = load i64*, i64** %13, align 8
  store i64 0, i64* %23, align 8
  %24 = load i64*, i64** %14, align 8
  store i64 0, i64* %24, align 8
  %25 = load i64*, i64** %15, align 8
  store i64 0, i64* %25, align 8
  %26 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %9, align 8
  %27 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %26, i32 0, i32 0
  %28 = call i64 @aw_clk_factor_get_min(%struct.TYPE_3__* %27)
  store i64 %28, i64* %18, align 8
  br label %29

29:                                               ; preds = %160, %7
  %30 = load i64, i64* %18, align 8
  %31 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %9, align 8
  %32 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %31, i32 0, i32 0
  %33 = call i64 @aw_clk_factor_get_max(%struct.TYPE_3__* %32)
  %34 = icmp sle i64 %30, %33
  br i1 %34, label %35, label %161

35:                                               ; preds = %29
  %36 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %9, align 8
  %37 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %36, i32 0, i32 1
  %38 = call i64 @aw_clk_factor_get_min(%struct.TYPE_3__* %37)
  store i64 %38, i64* %19, align 8
  br label %39

39:                                               ; preds = %145, %35
  %40 = load i64, i64* %19, align 8
  %41 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %9, align 8
  %42 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %41, i32 0, i32 1
  %43 = call i64 @aw_clk_factor_get_max(%struct.TYPE_3__* %42)
  %44 = icmp sle i64 %40, %43
  br i1 %44, label %45, label %146

45:                                               ; preds = %39
  %46 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %9, align 8
  %47 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %46, i32 0, i32 2
  %48 = call i64 @aw_clk_factor_get_min(%struct.TYPE_3__* %47)
  store i64 %48, i64* %20, align 8
  br label %49

49:                                               ; preds = %130, %45
  %50 = load i64, i64* %20, align 8
  %51 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %9, align 8
  %52 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %51, i32 0, i32 2
  %53 = call i64 @aw_clk_factor_get_max(%struct.TYPE_3__* %52)
  %54 = icmp sle i64 %50, %53
  br i1 %54, label %55, label %131

55:                                               ; preds = %49
  %56 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %9, align 8
  %57 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %56, i32 0, i32 3
  %58 = call i64 @aw_clk_factor_get_min(%struct.TYPE_3__* %57)
  store i64 %58, i64* %21, align 8
  br label %59

59:                                               ; preds = %115, %55
  %60 = load i64, i64* %21, align 8
  %61 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %9, align 8
  %62 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %61, i32 0, i32 3
  %63 = call i64 @aw_clk_factor_get_max(%struct.TYPE_3__* %62)
  %64 = icmp sle i64 %60, %63
  br i1 %64, label %65, label %116

65:                                               ; preds = %59
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %18, align 8
  %68 = mul nsw i64 %66, %67
  %69 = load i64, i64* %19, align 8
  %70 = mul nsw i64 %68, %69
  %71 = load i64, i64* %20, align 8
  %72 = load i64, i64* %21, align 8
  %73 = mul nsw i64 %71, %72
  %74 = sdiv i64 %70, %73
  store i64 %74, i64* %16, align 8
  %75 = load i64*, i64** %11, align 8
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %16, align 8
  %78 = sub nsw i64 %76, %77
  %79 = load i64*, i64** %11, align 8
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %17, align 8
  %82 = sub nsw i64 %80, %81
  %83 = icmp slt i64 %78, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %65
  %85 = load i64, i64* %16, align 8
  store i64 %85, i64* %17, align 8
  %86 = load i64, i64* %18, align 8
  %87 = load i64*, i64** %12, align 8
  store i64 %86, i64* %87, align 8
  %88 = load i64, i64* %19, align 8
  %89 = load i64*, i64** %13, align 8
  store i64 %88, i64* %89, align 8
  %90 = load i64, i64* %20, align 8
  %91 = load i64*, i64** %14, align 8
  store i64 %90, i64* %91, align 8
  %92 = load i64, i64* %21, align 8
  %93 = load i64*, i64** %15, align 8
  store i64 %92, i64* %93, align 8
  br label %94

94:                                               ; preds = %84, %65
  %95 = load i64, i64* %17, align 8
  %96 = load i64*, i64** %11, align 8
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %95, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i64, i64* %17, align 8
  store i64 %100, i64* %8, align 8
  br label %163

101:                                              ; preds = %94
  %102 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %9, align 8
  %103 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @AW_CLK_FACTOR_POWER_OF_TWO, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i64, i64* %21, align 8
  %111 = shl i64 %110, 1
  store i64 %111, i64* %21, align 8
  br label %115

112:                                              ; preds = %101
  %113 = load i64, i64* %21, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %21, align 8
  br label %115

115:                                              ; preds = %112, %109
  br label %59

116:                                              ; preds = %59
  %117 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %9, align 8
  %118 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @AW_CLK_FACTOR_POWER_OF_TWO, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = load i64, i64* %20, align 8
  %126 = shl i64 %125, 1
  store i64 %126, i64* %20, align 8
  br label %130

127:                                              ; preds = %116
  %128 = load i64, i64* %20, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %20, align 8
  br label %130

130:                                              ; preds = %127, %124
  br label %49

131:                                              ; preds = %49
  %132 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %9, align 8
  %133 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @AW_CLK_FACTOR_POWER_OF_TWO, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %131
  %140 = load i64, i64* %19, align 8
  %141 = shl i64 %140, 1
  store i64 %141, i64* %19, align 8
  br label %145

142:                                              ; preds = %131
  %143 = load i64, i64* %19, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %19, align 8
  br label %145

145:                                              ; preds = %142, %139
  br label %39

146:                                              ; preds = %39
  %147 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %9, align 8
  %148 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @AW_CLK_FACTOR_POWER_OF_TWO, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %146
  %155 = load i64, i64* %18, align 8
  %156 = shl i64 %155, 1
  store i64 %156, i64* %18, align 8
  br label %160

157:                                              ; preds = %146
  %158 = load i64, i64* %18, align 8
  %159 = add nsw i64 %158, 1
  store i64 %159, i64* %18, align 8
  br label %160

160:                                              ; preds = %157, %154
  br label %29

161:                                              ; preds = %29
  %162 = load i64, i64* %17, align 8
  store i64 %162, i64* %8, align 8
  br label %163

163:                                              ; preds = %161, %99
  %164 = load i64, i64* %8, align 8
  ret i64 %164
}

declare dso_local i64 @aw_clk_factor_get_min(%struct.TYPE_3__*) #1

declare dso_local i64 @aw_clk_factor_get_max(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

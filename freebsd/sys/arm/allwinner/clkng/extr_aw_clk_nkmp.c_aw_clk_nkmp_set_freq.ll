; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_nkmp.c_aw_clk_nkmp_set_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_nkmp.c_aw_clk_nkmp_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.aw_clk_nkmp_sc = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CLK_SET_DRYRUN = common dso_local global i32 0, align 4
@CLK_SET_ROUND_DOWN = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@CLK_SET_ROUND_UP = common dso_local global i32 0, align 4
@AW_CLK_SCALE_CHANGE = common dso_local global i32 0, align 4
@AW_CLK_HAS_UPDATE = common dso_local global i32 0, align 4
@AW_CLK_HAS_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i64, i64*, i32, i32*)* @aw_clk_nkmp_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_clk_nkmp_set_freq(%struct.clknode* %0, i64 %1, i64* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.clknode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.aw_clk_nkmp_sc*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %20 = load %struct.clknode*, %struct.clknode** %7, align 8
  %21 = call %struct.aw_clk_nkmp_sc* @clknode_get_softc(%struct.clknode* %20)
  store %struct.aw_clk_nkmp_sc* %21, %struct.aw_clk_nkmp_sc** %12, align 8
  %22 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64*, i64** %9, align 8
  %25 = call i64 @aw_clk_nkmp_find_best(%struct.aw_clk_nkmp_sc* %22, i64 %23, i64* %24, i32* %15, i32* %16, i32* %17, i32* %18)
  store i64 %25, i64* %13, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @CLK_SET_DRYRUN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %5
  %31 = load i64, i64* %13, align 8
  %32 = load i64*, i64** %9, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i32*, i32** %11, align 8
  store i32 1, i32* %33, align 4
  store i32 0, i32* %6, align 4
  br label %232

34:                                               ; preds = %5
  %35 = load i64, i64* %13, align 8
  %36 = load i64*, i64** %9, align 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @CLK_SET_ROUND_DOWN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32*, i32** %11, align 8
  store i32 1, i32* %45, align 4
  %46 = load i32, i32* @ERANGE, align 4
  store i32 %46, i32* %6, align 4
  br label %232

47:                                               ; preds = %39, %34
  %48 = load i64, i64* %13, align 8
  %49 = load i64*, i64** %9, align 8
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %48, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @CLK_SET_ROUND_UP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32*, i32** %11, align 8
  store i32 1, i32* %58, align 4
  %59 = load i32, i32* @ERANGE, align 4
  store i32 %59, i32* %6, align 4
  br label %232

60:                                               ; preds = %52, %47
  %61 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %62 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AW_CLK_SCALE_CHANGE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %60
  %68 = load %struct.clknode*, %struct.clknode** %7, align 8
  %69 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %18, align 4
  %74 = call i32 @aw_clk_nkmp_set_freq_scale(%struct.clknode* %68, %struct.aw_clk_nkmp_sc* %69, i32 %70, i32 %71, i32 %72, i32 %73)
  br label %228

75:                                               ; preds = %60
  %76 = load %struct.clknode*, %struct.clknode** %7, align 8
  %77 = call i32 @DEVICE_LOCK(%struct.clknode* %76)
  %78 = load %struct.clknode*, %struct.clknode** %7, align 8
  %79 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %80 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @READ4(%struct.clknode* %78, i32 %81, i32* %14)
  %83 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %84 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %83, i32 0, i32 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %14, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %14, align 4
  %90 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %91 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %90, i32 0, i32 7
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %14, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %14, align 4
  %97 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %98 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %14, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %14, align 4
  %104 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %105 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %14, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %14, align 4
  %111 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %112 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %111, i32 0, i32 8
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @aw_clk_factor_get_value(%struct.TYPE_2__* %112, i32 %113)
  %115 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %116 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %115, i32 0, i32 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %114, %118
  %120 = load i32, i32* %14, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %14, align 4
  %122 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %123 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %122, i32 0, i32 7
  %124 = load i32, i32* %16, align 4
  %125 = call i32 @aw_clk_factor_get_value(%struct.TYPE_2__* %123, i32 %124)
  %126 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %127 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %126, i32 0, i32 7
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %125, %129
  %131 = load i32, i32* %14, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %14, align 4
  %133 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %134 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %133, i32 0, i32 6
  %135 = load i32, i32* %17, align 4
  %136 = call i32 @aw_clk_factor_get_value(%struct.TYPE_2__* %134, i32 %135)
  %137 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %138 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %137, i32 0, i32 6
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = shl i32 %136, %140
  %142 = load i32, i32* %14, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %14, align 4
  %144 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %145 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %144, i32 0, i32 5
  %146 = load i32, i32* %18, align 4
  %147 = call i32 @aw_clk_factor_get_value(%struct.TYPE_2__* %145, i32 %146)
  %148 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %149 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 %147, %151
  %153 = load i32, i32* %14, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %14, align 4
  %155 = load %struct.clknode*, %struct.clknode** %7, align 8
  %156 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %157 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %14, align 4
  %160 = call i32 @WRITE4(%struct.clknode* %155, i32 %158, i32 %159)
  %161 = call i32 @DELAY(i32 2000)
  %162 = load %struct.clknode*, %struct.clknode** %7, align 8
  %163 = call i32 @DEVICE_UNLOCK(%struct.clknode* %162)
  %164 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %165 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @AW_CLK_HAS_UPDATE, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %193

170:                                              ; preds = %75
  %171 = load %struct.clknode*, %struct.clknode** %7, align 8
  %172 = call i32 @DEVICE_LOCK(%struct.clknode* %171)
  %173 = load %struct.clknode*, %struct.clknode** %7, align 8
  %174 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %175 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @READ4(%struct.clknode* %173, i32 %176, i32* %14)
  %178 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %179 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = shl i32 1, %180
  %182 = load i32, i32* %14, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %14, align 4
  %184 = load %struct.clknode*, %struct.clknode** %7, align 8
  %185 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %186 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %14, align 4
  %189 = call i32 @WRITE4(%struct.clknode* %184, i32 %187, i32 %188)
  %190 = call i32 @DELAY(i32 2000)
  %191 = load %struct.clknode*, %struct.clknode** %7, align 8
  %192 = call i32 @DEVICE_UNLOCK(%struct.clknode* %191)
  br label %193

193:                                              ; preds = %170, %75
  %194 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %195 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @AW_CLK_HAS_LOCK, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %227

200:                                              ; preds = %193
  store i32 0, i32* %19, align 4
  br label %201

201:                                              ; preds = %223, %200
  %202 = load i32, i32* %19, align 4
  %203 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %204 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %207, label %226

207:                                              ; preds = %201
  %208 = load %struct.clknode*, %struct.clknode** %7, align 8
  %209 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %210 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @READ4(%struct.clknode* %208, i32 %211, i32* %14)
  %213 = load i32, i32* %14, align 4
  %214 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %12, align 8
  %215 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = shl i32 1, %216
  %218 = and i32 %213, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %207
  br label %226

221:                                              ; preds = %207
  %222 = call i32 @DELAY(i32 1000)
  br label %223

223:                                              ; preds = %221
  %224 = load i32, i32* %19, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %19, align 4
  br label %201

226:                                              ; preds = %220, %201
  br label %227

227:                                              ; preds = %226, %193
  br label %228

228:                                              ; preds = %227, %67
  %229 = load i64, i64* %13, align 8
  %230 = load i64*, i64** %9, align 8
  store i64 %229, i64* %230, align 8
  %231 = load i32*, i32** %11, align 8
  store i32 1, i32* %231, align 4
  store i32 0, i32* %6, align 4
  br label %232

232:                                              ; preds = %228, %57, %44, %30
  %233 = load i32, i32* %6, align 4
  ret i32 %233
}

declare dso_local %struct.aw_clk_nkmp_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i64 @aw_clk_nkmp_find_best(%struct.aw_clk_nkmp_sc*, i64, i64*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @aw_clk_nkmp_set_freq_scale(%struct.clknode*, %struct.aw_clk_nkmp_sc*, i32, i32, i32, i32) #1

declare dso_local i32 @DEVICE_LOCK(%struct.clknode*) #1

declare dso_local i32 @READ4(%struct.clknode*, i32, i32*) #1

declare dso_local i32 @aw_clk_factor_get_value(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @WRITE4(%struct.clknode*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

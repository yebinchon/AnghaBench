; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_nkmp.c_aw_clk_nkmp_set_freq_scale.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_nkmp.c_aw_clk_nkmp_set_freq_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.aw_clk_nkmp_sc = type { i32, i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@AW_CLK_HAS_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clknode*, %struct.aw_clk_nkmp_sc*, i64, i64, i64, i64)* @aw_clk_nkmp_set_freq_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aw_clk_nkmp_set_freq_scale(%struct.clknode* %0, %struct.aw_clk_nkmp_sc* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.clknode*, align 8
  %8 = alloca %struct.aw_clk_nkmp_sc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %7, align 8
  store %struct.aw_clk_nkmp_sc* %1, %struct.aw_clk_nkmp_sc** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %19 = load %struct.clknode*, %struct.clknode** %7, align 8
  %20 = call i32 @DEVICE_LOCK(%struct.clknode* %19)
  %21 = load %struct.clknode*, %struct.clknode** %7, align 8
  %22 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %23 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @READ4(%struct.clknode* %21, i32 %24, i64* %13)
  %26 = load i64, i64* %13, align 8
  %27 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %28 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %27, i32 0, i32 7
  %29 = call i64 @aw_clk_get_factor(i64 %26, %struct.TYPE_3__* %28)
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %32 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %31, i32 0, i32 6
  %33 = call i64 @aw_clk_get_factor(i64 %30, %struct.TYPE_3__* %32)
  store i64 %33, i64* %15, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %36 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %35, i32 0, i32 5
  %37 = call i64 @aw_clk_get_factor(i64 %34, %struct.TYPE_3__* %36)
  store i64 %37, i64* %16, align 8
  %38 = load i64, i64* %13, align 8
  %39 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %40 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %39, i32 0, i32 4
  %41 = call i64 @aw_clk_get_factor(i64 %38, %struct.TYPE_3__* %40)
  store i64 %41, i64* %17, align 8
  %42 = load i64, i64* %17, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %71

45:                                               ; preds = %6
  %46 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %47 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = xor i64 %49, -1
  %51 = load i64, i64* %13, align 8
  %52 = and i64 %51, %50
  store i64 %52, i64* %13, align 8
  %53 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %54 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %53, i32 0, i32 4
  %55 = load i64, i64* %12, align 8
  %56 = call i64 @aw_clk_factor_get_value(%struct.TYPE_3__* %54, i64 %55)
  %57 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %58 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = shl i64 %56, %60
  %62 = load i64, i64* %13, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %13, align 8
  %64 = load %struct.clknode*, %struct.clknode** %7, align 8
  %65 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %66 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %13, align 8
  %69 = call i32 @WRITE4(%struct.clknode* %64, i32 %67, i64 %68)
  %70 = call i32 @DELAY(i32 2000)
  br label %71

71:                                               ; preds = %45, %6
  %72 = load i64, i64* %16, align 8
  %73 = load i64, i64* %11, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %101

75:                                               ; preds = %71
  %76 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %77 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = xor i64 %79, -1
  %81 = load i64, i64* %13, align 8
  %82 = and i64 %81, %80
  store i64 %82, i64* %13, align 8
  %83 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %84 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %83, i32 0, i32 5
  %85 = load i64, i64* %11, align 8
  %86 = call i64 @aw_clk_factor_get_value(%struct.TYPE_3__* %84, i64 %85)
  %87 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %88 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = shl i64 %86, %90
  %92 = load i64, i64* %13, align 8
  %93 = or i64 %92, %91
  store i64 %93, i64* %13, align 8
  %94 = load %struct.clknode*, %struct.clknode** %7, align 8
  %95 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %96 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i64, i64* %13, align 8
  %99 = call i32 @WRITE4(%struct.clknode* %94, i32 %97, i64 %98)
  %100 = call i32 @DELAY(i32 2000)
  br label %101

101:                                              ; preds = %75, %71
  %102 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %103 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %102, i32 0, i32 7
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = xor i64 %105, -1
  %107 = load i64, i64* %13, align 8
  %108 = and i64 %107, %106
  store i64 %108, i64* %13, align 8
  %109 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %110 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %109, i32 0, i32 6
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = xor i64 %112, -1
  %114 = load i64, i64* %13, align 8
  %115 = and i64 %114, %113
  store i64 %115, i64* %13, align 8
  %116 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %117 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %116, i32 0, i32 7
  %118 = load i64, i64* %9, align 8
  %119 = call i64 @aw_clk_factor_get_value(%struct.TYPE_3__* %117, i64 %118)
  %120 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %121 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %120, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = shl i64 %119, %123
  %125 = load i64, i64* %13, align 8
  %126 = or i64 %125, %124
  store i64 %126, i64* %13, align 8
  %127 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %128 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %127, i32 0, i32 6
  %129 = load i64, i64* %10, align 8
  %130 = call i64 @aw_clk_factor_get_value(%struct.TYPE_3__* %128, i64 %129)
  %131 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %132 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %131, i32 0, i32 6
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = shl i64 %130, %134
  %136 = load i64, i64* %13, align 8
  %137 = or i64 %136, %135
  store i64 %137, i64* %13, align 8
  %138 = load %struct.clknode*, %struct.clknode** %7, align 8
  %139 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %140 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load i64, i64* %13, align 8
  %143 = call i32 @WRITE4(%struct.clknode* %138, i32 %141, i64 %142)
  %144 = call i32 @DELAY(i32 2000)
  %145 = load i64, i64* %16, align 8
  %146 = load i64, i64* %11, align 8
  %147 = icmp sgt i64 %145, %146
  br i1 %147, label %148, label %174

148:                                              ; preds = %101
  %149 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %150 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = xor i64 %152, -1
  %154 = load i64, i64* %13, align 8
  %155 = and i64 %154, %153
  store i64 %155, i64* %13, align 8
  %156 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %157 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %156, i32 0, i32 5
  %158 = load i64, i64* %11, align 8
  %159 = call i64 @aw_clk_factor_get_value(%struct.TYPE_3__* %157, i64 %158)
  %160 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %161 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = shl i64 %159, %163
  %165 = load i64, i64* %13, align 8
  %166 = or i64 %165, %164
  store i64 %166, i64* %13, align 8
  %167 = load %struct.clknode*, %struct.clknode** %7, align 8
  %168 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %169 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load i64, i64* %13, align 8
  %172 = call i32 @WRITE4(%struct.clknode* %167, i32 %170, i64 %171)
  %173 = call i32 @DELAY(i32 2000)
  br label %174

174:                                              ; preds = %148, %101
  %175 = load i64, i64* %17, align 8
  %176 = load i64, i64* %12, align 8
  %177 = icmp sgt i64 %175, %176
  br i1 %177, label %178, label %204

178:                                              ; preds = %174
  %179 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %180 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = xor i64 %182, -1
  %184 = load i64, i64* %13, align 8
  %185 = and i64 %184, %183
  store i64 %185, i64* %13, align 8
  %186 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %187 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %186, i32 0, i32 4
  %188 = load i64, i64* %12, align 8
  %189 = call i64 @aw_clk_factor_get_value(%struct.TYPE_3__* %187, i64 %188)
  %190 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %191 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = shl i64 %189, %193
  %195 = load i64, i64* %13, align 8
  %196 = or i64 %195, %194
  store i64 %196, i64* %13, align 8
  %197 = load %struct.clknode*, %struct.clknode** %7, align 8
  %198 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %199 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = load i64, i64* %13, align 8
  %202 = call i32 @WRITE4(%struct.clknode* %197, i32 %200, i64 %201)
  %203 = call i32 @DELAY(i32 2000)
  br label %204

204:                                              ; preds = %178, %174
  %205 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %206 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @AW_CLK_HAS_LOCK, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %239

211:                                              ; preds = %204
  store i32 0, i32* %18, align 4
  br label %212

212:                                              ; preds = %235, %211
  %213 = load i32, i32* %18, align 4
  %214 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %215 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = icmp slt i32 %213, %216
  br i1 %217, label %218, label %238

218:                                              ; preds = %212
  %219 = load %struct.clknode*, %struct.clknode** %7, align 8
  %220 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %221 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @READ4(%struct.clknode* %219, i32 %222, i64* %13)
  %224 = load i64, i64* %13, align 8
  %225 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %8, align 8
  %226 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = shl i32 1, %227
  %229 = sext i32 %228 to i64
  %230 = and i64 %224, %229
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %218
  br label %238

233:                                              ; preds = %218
  %234 = call i32 @DELAY(i32 1000)
  br label %235

235:                                              ; preds = %233
  %236 = load i32, i32* %18, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %18, align 4
  br label %212

238:                                              ; preds = %232, %212
  br label %239

239:                                              ; preds = %238, %204
  %240 = load %struct.clknode*, %struct.clknode** %7, align 8
  %241 = call i32 @DEVICE_UNLOCK(%struct.clknode* %240)
  ret void
}

declare dso_local i32 @DEVICE_LOCK(%struct.clknode*) #1

declare dso_local i32 @READ4(%struct.clknode*, i32, i64*) #1

declare dso_local i64 @aw_clk_get_factor(i64, %struct.TYPE_3__*) #1

declare dso_local i64 @aw_clk_factor_get_value(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @WRITE4(%struct.clknode*, i32, i64) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

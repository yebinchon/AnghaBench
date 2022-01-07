; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_lcd_syscons.c_am335x_syscons_putc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_lcd_syscons.c_am335x_syscons_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.video_adapter_softc = type { i64, i32*, i32, i32, i32, i32 }

@AM335X_FONT_HEIGHT = common dso_local global i32 0, align 4
@am335x_syscons_palette = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i32)* @am335x_syscons_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_syscons_putc(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.video_adapter_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = bitcast %struct.TYPE_6__* %22 to %struct.video_adapter_softc*
  store %struct.video_adapter_softc* %23, %struct.video_adapter_softc** %10, align 8
  %24 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %25 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %265

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %30, %34
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %35, %39
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = srem i32 %41, %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %46, %50
  store i32 %51, i32* %12, align 4
  %52 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %53 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @AM335X_FONT_HEIGHT, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  store i32* %59, i32** %17, align 8
  %60 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %61 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %66 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %64, %67
  %69 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %70 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %68, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %63, i64 %73
  %75 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %76 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = sdiv i32 %77, 8
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %81 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %79, %82
  %84 = mul nsw i32 %78, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %74, i64 %85
  store i32* %86, i32** %16, align 8
  %87 = load i32, i32* %9, align 4
  %88 = and i32 %87, 15
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %9, align 4
  %90 = ashr i32 %89, 4
  %91 = and i32 %90, 15
  store i32 %91, i32* %19, align 4
  store i32 0, i32* %13, align 4
  br label %92

92:                                               ; preds = %261, %29
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @AM335X_FONT_HEIGHT, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %264

96:                                               ; preds = %92
  store i32 0, i32* %14, align 4
  store i32 7, i32* %15, align 4
  br label %97

97:                                               ; preds = %249, %96
  %98 = load i32, i32* %14, align 4
  %99 = icmp slt i32 %98, 8
  br i1 %99, label %100, label %254

100:                                              ; preds = %97
  %101 = load i32*, i32** %17, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %15, align 4
  %107 = shl i32 1, %106
  %108 = and i32 %105, %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %100
  %111 = load i32, i32* %19, align 4
  store i32 %111, i32* %20, align 4
  br label %114

112:                                              ; preds = %100
  %113 = load i32, i32* %18, align 4
  store i32 %113, i32* %20, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %116 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  switch i32 %117, label %247 [
    i32 32, label %118
    i32 24, label %167
    i32 16, label %203
  ]

118:                                              ; preds = %114
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** @am335x_syscons_palette, align 8
  %120 = load i32, i32* %20, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %16, align 8
  %126 = load i32, i32* %14, align 4
  %127 = mul nsw i32 4, %126
  %128 = add nsw i32 %127, 0
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %125, i64 %129
  store i32 %124, i32* %130, align 4
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** @am335x_syscons_palette, align 8
  %132 = load i32, i32* %20, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %16, align 8
  %138 = load i32, i32* %14, align 4
  %139 = mul nsw i32 4, %138
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %137, i64 %141
  store i32 %136, i32* %142, align 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** @am335x_syscons_palette, align 8
  %144 = load i32, i32* %20, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load i32*, i32** %16, align 8
  %150 = load i32, i32* %14, align 4
  %151 = mul nsw i32 4, %150
  %152 = add nsw i32 %151, 2
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %149, i64 %153
  store i32 %148, i32* %154, align 4
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** @am335x_syscons_palette, align 8
  %156 = load i32, i32* %20, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %16, align 8
  %162 = load i32, i32* %14, align 4
  %163 = mul nsw i32 4, %162
  %164 = add nsw i32 %163, 3
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %161, i64 %165
  store i32 %160, i32* %166, align 4
  br label %248

167:                                              ; preds = %114
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** @am335x_syscons_palette, align 8
  %169 = load i32, i32* %20, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %16, align 8
  %175 = load i32, i32* %14, align 4
  %176 = mul nsw i32 3, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  store i32 %173, i32* %178, align 4
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** @am335x_syscons_palette, align 8
  %180 = load i32, i32* %20, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %16, align 8
  %186 = load i32, i32* %14, align 4
  %187 = mul nsw i32 3, %186
  %188 = add nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %185, i64 %189
  store i32 %184, i32* %190, align 4
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** @am335x_syscons_palette, align 8
  %192 = load i32, i32* %20, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %16, align 8
  %198 = load i32, i32* %14, align 4
  %199 = mul nsw i32 3, %198
  %200 = add nsw i32 %199, 2
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %197, i64 %201
  store i32 %196, i32* %202, align 4
  br label %248

203:                                              ; preds = %114
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** @am335x_syscons_palette, align 8
  %205 = load i32, i32* %20, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = ashr i32 %209, 3
  %211 = shl i32 %210, 11
  store i32 %211, i32* %21, align 4
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** @am335x_syscons_palette, align 8
  %213 = load i32, i32* %20, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = ashr i32 %217, 2
  %219 = shl i32 %218, 5
  %220 = load i32, i32* %21, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %21, align 4
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** @am335x_syscons_palette, align 8
  %223 = load i32, i32* %20, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = ashr i32 %227, 3
  %229 = load i32, i32* %21, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %21, align 4
  %231 = load i32, i32* %21, align 4
  %232 = and i32 %231, 255
  %233 = load i32*, i32** %16, align 8
  %234 = load i32, i32* %14, align 4
  %235 = mul nsw i32 2, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %233, i64 %236
  store i32 %232, i32* %237, align 4
  %238 = load i32, i32* %21, align 4
  %239 = ashr i32 %238, 8
  %240 = and i32 %239, 255
  %241 = load i32*, i32** %16, align 8
  %242 = load i32, i32* %14, align 4
  %243 = mul nsw i32 2, %242
  %244 = add nsw i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %241, i64 %245
  store i32 %240, i32* %246, align 4
  br label %247

247:                                              ; preds = %114, %203
  br label %248

248:                                              ; preds = %247, %167, %118
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %14, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %14, align 4
  %252 = load i32, i32* %15, align 4
  %253 = add nsw i32 %252, -1
  store i32 %253, i32* %15, align 4
  br label %97

254:                                              ; preds = %97
  %255 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %256 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = load i32*, i32** %16, align 8
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  store i32* %260, i32** %16, align 8
  br label %261

261:                                              ; preds = %254
  %262 = load i32, i32* %13, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %13, align 4
  br label %92

264:                                              ; preds = %92
  store i32 0, i32* %5, align 4
  br label %265

265:                                              ; preds = %264, %28
  %266 = load i32, i32* %5, align 4
  ret i32 %266
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

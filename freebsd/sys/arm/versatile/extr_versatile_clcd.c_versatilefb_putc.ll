; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_versatile_clcd.c_versatilefb_putc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_versatile_clcd.c_versatilefb_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.video_adapter_softc = type { i64, i32*, i32, i32, i32, i32 }

@VERSATILE_FONT_HEIGHT = common dso_local global i32 0, align 4
@versatilefb_palette = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i32)* @versatilefb_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @versatilefb_putc(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  br label %193

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %34, %38
  %40 = icmp sge i32 %30, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %193

42:                                               ; preds = %29
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %43, %47
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %48, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = srem i32 %54, %58
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %59, %63
  store i32 %64, i32* %12, align 4
  %65 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %66 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @VERSATILE_FONT_HEIGHT, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  store i32* %72, i32** %17, align 8
  %73 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %74 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i32*
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %79 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %77, %80
  %82 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %83 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %81, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %76, i64 %86
  %88 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %89 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = sdiv i32 %90, 8
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %94 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %92, %95
  %97 = mul nsw i32 %91, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %87, i64 %98
  store i32* %99, i32** %16, align 8
  %100 = load i32, i32* %9, align 4
  %101 = and i32 %100, 15
  store i32 %101, i32* %18, align 4
  %102 = load i32, i32* %9, align 4
  %103 = ashr i32 %102, 4
  %104 = and i32 %103, 15
  store i32 %104, i32* %19, align 4
  store i32 0, i32* %13, align 4
  br label %105

105:                                              ; preds = %189, %42
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @VERSATILE_FONT_HEIGHT, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %192

109:                                              ; preds = %105
  store i32 0, i32* %14, align 4
  store i32 7, i32* %15, align 4
  br label %110

110:                                              ; preds = %177, %109
  %111 = load i32, i32* %14, align 4
  %112 = icmp slt i32 %111, 8
  br i1 %112, label %113, label %182

113:                                              ; preds = %110
  %114 = load i32*, i32** %17, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %15, align 4
  %120 = shl i32 1, %119
  %121 = and i32 %118, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %113
  %124 = load i32, i32* %19, align 4
  store i32 %124, i32* %20, align 4
  br label %127

125:                                              ; preds = %113
  %126 = load i32, i32* %18, align 4
  store i32 %126, i32* %20, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %129 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  switch i32 %130, label %175 [
    i32 16, label %131
  ]

131:                                              ; preds = %127
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** @versatilefb_palette, align 8
  %133 = load i32, i32* %20, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = ashr i32 %137, 3
  %139 = shl i32 %138, 11
  store i32 %139, i32* %21, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** @versatilefb_palette, align 8
  %141 = load i32, i32* %20, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = ashr i32 %145, 2
  %147 = shl i32 %146, 5
  %148 = load i32, i32* %21, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %21, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** @versatilefb_palette, align 8
  %151 = load i32, i32* %20, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = ashr i32 %155, 3
  %157 = load i32, i32* %21, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %21, align 4
  %159 = load i32, i32* %21, align 4
  %160 = and i32 %159, 255
  %161 = load i32*, i32** %16, align 8
  %162 = load i32, i32* %14, align 4
  %163 = mul nsw i32 2, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  store i32 %160, i32* %165, align 4
  %166 = load i32, i32* %21, align 4
  %167 = ashr i32 %166, 8
  %168 = and i32 %167, 255
  %169 = load i32*, i32** %16, align 8
  %170 = load i32, i32* %14, align 4
  %171 = mul nsw i32 2, %170
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %169, i64 %173
  store i32 %168, i32* %174, align 4
  br label %175

175:                                              ; preds = %127, %131
  br label %176

176:                                              ; preds = %175
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %14, align 4
  %180 = load i32, i32* %15, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %15, align 4
  br label %110

182:                                              ; preds = %110
  %183 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %184 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** %16, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  store i32* %188, i32** %16, align 8
  br label %189

189:                                              ; preds = %182
  %190 = load i32, i32* %13, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %13, align 4
  br label %105

192:                                              ; preds = %105
  store i32 0, i32* %5, align 4
  br label %193

193:                                              ; preds = %192, %41, %28
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

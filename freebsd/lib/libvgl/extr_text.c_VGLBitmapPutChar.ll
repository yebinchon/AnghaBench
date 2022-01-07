; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvgl/extr_text.c_VGLBitmapPutChar.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvgl/extr_text.c_VGLBitmapPutChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32* }

@VGLTextFont = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VGLBitmapPutChar(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VGLTextFont, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 7
  %27 = sdiv i32 %26, 8
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %19, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VGLTextFont, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  store i32 %32, i32* %18, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VGLTextFont, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %22, align 4
  store i32 0, i32* %20, align 4
  br label %37

37:                                               ; preds = %222, %8
  %38 = load i32, i32* %20, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VGLTextFont, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %225

43:                                               ; preds = %37
  store i32 0, i32* %21, align 4
  br label %44

44:                                               ; preds = %218, %43
  %45 = load i32, i32* %21, align 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VGLTextFont, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %221

50:                                               ; preds = %44
  %51 = load i32, i32* %21, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VGLTextFont, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 0, %54
  %56 = and i32 %55, 7
  %57 = add nsw i32 %51, %56
  store i32 %57, i32* %17, align 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VGLTextFont, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %18, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* %19, align 4
  %66 = mul nsw i32 %64, %65
  %67 = add nsw i32 %63, %66
  %68 = load i32, i32* %17, align 4
  %69 = sdiv i32 %68, 8
  %70 = add nsw i32 %67, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %60, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %17, align 4
  %75 = srem i32 %74, 8
  %76 = shl i32 1, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %146

79:                                               ; preds = %50
  %80 = load i32, i32* %16, align 4
  switch i32 %80, label %145 [
    i32 0, label %81
    i32 1, label %93
    i32 2, label %105
    i32 3, label %117
    i32 4, label %129
  ]

81:                                               ; preds = %79
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %22, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* %21, align 4
  %87 = sub nsw i32 %85, %86
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %20, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @VGLSetXY(i32* %82, i32 %87, i32 %90, i32 %91)
  br label %145

93:                                               ; preds = %79
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %20, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %22, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i32, i32* %21, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @VGLSetXY(i32* %94, i32 %97, i32 %102, i32 %103)
  br label %145

105:                                              ; preds = %79
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %22, align 4
  %109 = sub nsw i32 %107, %108
  %110 = load i32, i32* %21, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %20, align 4
  %114 = sub nsw i32 %112, %113
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @VGLSetXY(i32* %106, i32 %111, i32 %114, i32 %115)
  br label %145

117:                                              ; preds = %79
  %118 = load i32*, i32** %9, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %20, align 4
  %121 = sub nsw i32 %119, %120
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %22, align 4
  %124 = add nsw i32 %122, %123
  %125 = load i32, i32* %21, align 4
  %126 = sub nsw i32 %124, %125
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @VGLSetXY(i32* %118, i32 %121, i32 %126, i32 %127)
  br label %145

129:                                              ; preds = %79
  %130 = load i32*, i32** %9, align 8
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %20, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* %22, align 4
  %135 = add nsw i32 %133, %134
  %136 = load i32, i32* %21, align 4
  %137 = sub nsw i32 %135, %136
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %20, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32, i32* %21, align 4
  %142 = add nsw i32 %140, %141
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @VGLSetXY(i32* %130, i32 %137, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %79, %129, %117, %105, %93, %81
  br label %217

146:                                              ; preds = %50
  %147 = load i32, i32* %15, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %216

149:                                              ; preds = %146
  %150 = load i32, i32* %16, align 4
  switch i32 %150, label %215 [
    i32 0, label %151
    i32 1, label %163
    i32 2, label %175
    i32 3, label %187
    i32 4, label %199
  ]

151:                                              ; preds = %149
  %152 = load i32*, i32** %9, align 8
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %22, align 4
  %155 = add nsw i32 %153, %154
  %156 = load i32, i32* %21, align 4
  %157 = sub nsw i32 %155, %156
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %20, align 4
  %160 = add nsw i32 %158, %159
  %161 = load i32, i32* %14, align 4
  %162 = call i32 @VGLSetXY(i32* %152, i32 %157, i32 %160, i32 %161)
  br label %215

163:                                              ; preds = %149
  %164 = load i32*, i32** %9, align 8
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %20, align 4
  %167 = add nsw i32 %165, %166
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %22, align 4
  %170 = sub nsw i32 %168, %169
  %171 = load i32, i32* %21, align 4
  %172 = add nsw i32 %170, %171
  %173 = load i32, i32* %14, align 4
  %174 = call i32 @VGLSetXY(i32* %164, i32 %167, i32 %172, i32 %173)
  br label %215

175:                                              ; preds = %149
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %22, align 4
  %179 = sub nsw i32 %177, %178
  %180 = load i32, i32* %21, align 4
  %181 = add nsw i32 %179, %180
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* %20, align 4
  %184 = sub nsw i32 %182, %183
  %185 = load i32, i32* %14, align 4
  %186 = call i32 @VGLSetXY(i32* %176, i32 %181, i32 %184, i32 %185)
  br label %215

187:                                              ; preds = %149
  %188 = load i32*, i32** %9, align 8
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* %20, align 4
  %191 = sub nsw i32 %189, %190
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %22, align 4
  %194 = add nsw i32 %192, %193
  %195 = load i32, i32* %21, align 4
  %196 = sub nsw i32 %194, %195
  %197 = load i32, i32* %14, align 4
  %198 = call i32 @VGLSetXY(i32* %188, i32 %191, i32 %196, i32 %197)
  br label %215

199:                                              ; preds = %149
  %200 = load i32*, i32** %9, align 8
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* %20, align 4
  %203 = add nsw i32 %201, %202
  %204 = load i32, i32* %22, align 4
  %205 = add nsw i32 %203, %204
  %206 = load i32, i32* %21, align 4
  %207 = sub nsw i32 %205, %206
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* %20, align 4
  %210 = add nsw i32 %208, %209
  %211 = load i32, i32* %21, align 4
  %212 = add nsw i32 %210, %211
  %213 = load i32, i32* %14, align 4
  %214 = call i32 @VGLSetXY(i32* %200, i32 %207, i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %149, %199, %187, %175, %163, %151
  br label %216

216:                                              ; preds = %215, %146
  br label %217

217:                                              ; preds = %216, %145
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %21, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %21, align 4
  br label %44

221:                                              ; preds = %44
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %20, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %20, align 4
  br label %37

225:                                              ; preds = %37
  ret void
}

declare dso_local i32 @VGLSetXY(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

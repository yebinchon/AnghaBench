; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvgl/extr_simple.c_VGLSetXY.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvgl/extr_simple.c_VGLSetXY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_7__ = type { i32, i32 }

@VGLDisplay = common dso_local global %struct.TYPE_6__* null, align 8
@VGLVDisplay = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@VGLAdpInfo = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VGLSetXY(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = call i32 (...) @VGLCheckSwitch()
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %228

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %228

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %228

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %228

30:                                               ; preds = %24
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @VGLDisplay, align 8
  %33 = icmp eq %struct.TYPE_6__* %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @VGLMouseFreezeXY(i32 %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  call void @VGLSetXY(%struct.TYPE_6__* @VGLVDisplay, i32 %38, i32 %39, i32 %40)
  br label %49

41:                                               ; preds = %30
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 139
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %228

47:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48, %34
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %221, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %53, %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %57, %58
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %59, %62
  store i32 %63, i32* %9, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %220 [
    i32 129, label %67
    i32 137, label %67
    i32 133, label %67
    i32 139, label %70
    i32 130, label %70
    i32 138, label %70
    i32 136, label %70
    i32 134, label %70
    i32 135, label %109
    i32 128, label %164
    i32 131, label %182
    i32 132, label %190
  ]

67:                                               ; preds = %52, %52, %52
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @VGLSetSegment(i32 %68)
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %52, %52, %52, %52, %52, %67
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @htole32(i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  switch i32 %75, label %108 [
    i32 1, label %76
    i32 2, label %84
    i32 3, label %92
    i32 4, label %100
  ]

76:                                               ; preds = %70
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = call i32 @memcpy(i32* %82, i32* %8, i32 1)
  br label %108

84:                                               ; preds = %70
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = call i32 @memcpy(i32* %90, i32* %8, i32 2)
  br label %108

92:                                               ; preds = %70
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = call i32 @memcpy(i32* %98, i32* %8, i32 3)
  br label %108

100:                                              ; preds = %70
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = call i32 @memcpy(i32* %106, i32* %8, i32 4)
  br label %108

108:                                              ; preds = %70, %100, %92, %84, %76
  br label %220

109:                                              ; preds = %52
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @VGLSetSegment(i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @htole32(i32 %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @VGLAdpInfo, i32 0, i32 1), align 4
  %115 = load i32, i32* %10, align 4
  %116 = sub nsw i32 %114, %115
  switch i32 %116, label %155 [
    i32 1, label %117
    i32 2, label %136
  ]

117:                                              ; preds = %109
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = call i32 @memcpy(i32* %123, i32* %8, i32 1)
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  %127 = call i32 @VGLSetSegment(i32 %126)
  store i32 %127, i32* %10, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 4
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = getelementptr inbounds i32, i32* %8, i64 1
  %135 = call i32 @memcpy(i32* %133, i32* %134, i32 2)
  br label %163

136:                                              ; preds = %109
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = call i32 @memcpy(i32* %142, i32* %8, i32 2)
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 2
  %146 = call i32 @VGLSetSegment(i32 %145)
  store i32 %146, i32* %10, align 4
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = getelementptr inbounds i32, i32* %8, i64 2
  %154 = call i32 @memcpy(i32* %152, i32* %153, i32 1)
  br label %163

155:                                              ; preds = %109
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = call i32 @memcpy(i32* %161, i32* %8, i32 3)
  br label %163

163:                                              ; preds = %155, %136, %117
  br label %220

164:                                              ; preds = %52
  %165 = call i32 @outb(i32 964, i32 2)
  %166 = load i32, i32* %6, align 4
  %167 = and i32 %166, 3
  %168 = shl i32 1, %167
  %169 = call i32 @outb(i32 965, i32 %168)
  %170 = load i32, i32* %8, align 4
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 4
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @VGLAdpInfo, i32 0, i32 0), align 4
  %175 = load i32, i32* %7, align 4
  %176 = mul nsw i32 %174, %175
  %177 = load i32, i32* %6, align 4
  %178 = sdiv i32 %177, 4
  %179 = add i32 %176, %178
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %173, i64 %180
  store i32 %170, i32* %181, align 4
  br label %220

182:                                              ; preds = %52
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @VGLAdpInfo, i32 0, i32 0), align 4
  %185 = mul nsw i32 %183, %184
  %186 = load i32, i32* %6, align 4
  %187 = sdiv i32 %186, 8
  %188 = add nsw i32 %185, %187
  %189 = call i32 @VGLSetSegment(i32 %188)
  store i32 %189, i32* %9, align 4
  br label %197

190:                                              ; preds = %52
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @VGLAdpInfo, i32 0, i32 0), align 4
  %193 = mul nsw i32 %191, %192
  %194 = load i32, i32* %6, align 4
  %195 = sdiv i32 %194, 8
  %196 = add nsw i32 %193, %195
  store i32 %196, i32* %9, align 4
  br label %197

197:                                              ; preds = %190, %182
  %198 = call i32 @outb(i32 964, i32 2)
  %199 = call i32 @outb(i32 965, i32 15)
  %200 = call i32 @outb(i32 974, i32 0)
  %201 = load i32, i32* %8, align 4
  %202 = and i32 %201, 15
  %203 = call i32 @outb(i32 975, i32 %202)
  %204 = call i32 @outb(i32 974, i32 1)
  %205 = call i32 @outb(i32 975, i32 15)
  %206 = call i32 @outb(i32 974, i32 8)
  %207 = load i32, i32* %6, align 4
  %208 = srem i32 %207, 8
  %209 = ashr i32 128, %208
  %210 = call i32 @outb(i32 975, i32 %209)
  %211 = load i32, i32* %8, align 4
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 4
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %218, %211
  store i32 %219, i32* %217, align 4
  br label %220

220:                                              ; preds = %197, %52, %164, %163, %108
  br label %221

221:                                              ; preds = %220, %49
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** @VGLDisplay, align 8
  %224 = icmp eq %struct.TYPE_6__* %222, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %221
  %226 = call i32 (...) @VGLMouseUnFreeze()
  br label %227

227:                                              ; preds = %225, %221
  br label %228

228:                                              ; preds = %46, %227, %24, %21, %15, %4
  ret void
}

declare dso_local i32 @VGLCheckSwitch(...) #1

declare dso_local i32 @VGLMouseFreezeXY(i32, i32) #1

declare dso_local i32 @VGLSetSegment(i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @VGLMouseUnFreeze(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

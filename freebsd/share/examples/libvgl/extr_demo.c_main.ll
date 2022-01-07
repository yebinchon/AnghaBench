; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/libvgl/extr_demo.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/libvgl/extr_demo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32* }

@SW_VGA_MODEX = common dso_local global i32 0, align 4
@VGL_MOUSESHOW = common dso_local global i32 0, align 4
@VGLDisplay = common dso_local global %struct.TYPE_11__* null, align 8
@MEMBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"This is text\00", align 1
@VGL_DIR_RIGHT = common dso_local global i32 0, align 4
@VGL_DIR_UP = common dso_local global i32 0, align 4
@VGL_DIR_LEFT = common dso_local global i32 0, align 4
@VGL_DIR_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @SW_VGA_MODEX, align 4
  %13 = call i32 @VGLInit(i32 %12)
  %14 = load i32, i32* @VGL_MOUSESHOW, align 4
  %15 = call i32 @VGLMouseInit(i32 %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VGLDisplay, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VGLDisplay, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @MEMBUF, align 4
  %23 = call %struct.TYPE_11__* @VGLBitmapCreate(i32 %22, i32 256, i32 256, i32* null)
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %11, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %25 = call i32 @VGLBitmapAllocateBits(%struct.TYPE_11__* %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %27 = call i32 @VGLClear(%struct.TYPE_11__* %26, i32 0)
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %42, %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VGLDisplay, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sdiv i32 %38, 2
  %40 = srem i32 %39, 256
  %41 = call i32 @VGLLine(%struct.TYPE_11__* %33, i32 0, i32 %34, i32 %36, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %28

45:                                               ; preds = %28
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VGLDisplay, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %49, 1
  %51 = call i32 @VGLLine(%struct.TYPE_11__* %46, i32 0, i32 0, i32 %48, i32 %50, i32 63)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VGLDisplay, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %53, 1
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %55, 1
  %57 = call i32 @VGLLine(%struct.TYPE_11__* %52, i32 0, i32 %54, i32 %56, i32 0, i32 63)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VGLDisplay, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sub nsw i32 %59, 1
  %61 = call i32 @VGLLine(%struct.TYPE_11__* %58, i32 0, i32 0, i32 0, i32 %60, i32 63)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VGLDisplay, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %63, 1
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 %65, 1
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %67, 1
  %69 = call i32 @VGLLine(%struct.TYPE_11__* %62, i32 %64, i32 0, i32 %66, i32 %68, i32 63)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VGLDisplay, align 8
  %71 = call i32 @VGLEllipse(%struct.TYPE_11__* %70, i32 256, i32 0, i32 256, i32 256, i32 63)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VGLDisplay, align 8
  %73 = call i32 @VGLEllipse(%struct.TYPE_11__* %72, i32 0, i32 256, i32 256, i32 256, i32 0)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VGLDisplay, align 8
  %75 = load i32, i32* @VGL_DIR_RIGHT, align 4
  %76 = call i32 @VGLBitmapString(%struct.TYPE_11__* %74, i32 100, i32 100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 63, i32 0, i32 0, i32 %75)
  %77 = call i32 @sleep(i32 2)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VGLDisplay, align 8
  %79 = load i32, i32* @VGL_DIR_UP, align 4
  %80 = call i32 @VGLBitmapString(%struct.TYPE_11__* %78, i32 100, i32 100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 63, i32 0, i32 0, i32 %79)
  %81 = call i32 @sleep(i32 2)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VGLDisplay, align 8
  %83 = load i32, i32* @VGL_DIR_LEFT, align 4
  %84 = call i32 @VGLBitmapString(%struct.TYPE_11__* %82, i32 100, i32 100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 63, i32 0, i32 0, i32 %83)
  %85 = call i32 @sleep(i32 2)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VGLDisplay, align 8
  %87 = load i32, i32* @VGL_DIR_DOWN, align 4
  %88 = call i32 @VGLBitmapString(%struct.TYPE_11__* %86, i32 100, i32 100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 63, i32 0, i32 0, i32 %87)
  %89 = call i32 @sleep(i32 2)
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %113, %45
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %91, 256
  br i1 %92, label %93, label %116

93:                                               ; preds = %90
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %109, %93
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 256
  br i1 %96, label %97, label %112

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4
  %99 = srem i32 %98, 16
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = mul nsw i32 256, %104
  %106 = add nsw i32 %103, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %102, i64 %107
  store i32 %99, i32* %108, align 4
  br label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %94

112:                                              ; preds = %94
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %90

116:                                              ; preds = %90
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VGLDisplay, align 8
  %119 = call i32 @VGLBitmapCopy(%struct.TYPE_11__* %117, i32 0, i32 0, %struct.TYPE_11__* %118, i32 0, i32 0, i32 128, i32 128)
  store i32 0, i32* %9, align 4
  br label %120

120:                                              ; preds = %143, %116
  %121 = load i32, i32* %9, align 4
  %122 = icmp slt i32 %121, 256
  br i1 %122, label %123, label %146

123:                                              ; preds = %120
  store i32 0, i32* %10, align 4
  br label %124

124:                                              ; preds = %139, %123
  %125 = load i32, i32* %10, align 4
  %126 = icmp slt i32 %125, 256
  br i1 %126, label %127, label %142

127:                                              ; preds = %124
  %128 = load i32, i32* %10, align 4
  %129 = srem i32 %128, 16
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %10, align 4
  %135 = mul nsw i32 256, %134
  %136 = add nsw i32 %133, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %132, i64 %137
  store i32 %129, i32* %138, align 4
  br label %139

139:                                              ; preds = %127
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %10, align 4
  br label %124

142:                                              ; preds = %124
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  br label %120

146:                                              ; preds = %120
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VGLDisplay, align 8
  %149 = call i32 @VGLBitmapCopy(%struct.TYPE_11__* %147, i32 0, i32 0, %struct.TYPE_11__* %148, i32 3, i32 128, i32 128, i32 128)
  %150 = call i32 @sleep(i32 2)
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VGLDisplay, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %153 = call i32 @VGLBitmapCopy(%struct.TYPE_11__* %151, i32 237, i32 311, %struct.TYPE_11__* %152, i32 64, i32 64, i32 128, i32 128)
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VGLDisplay, align 8
  %156 = call i32 @VGLBitmapCopy(%struct.TYPE_11__* %154, i32 32, i32 32, %struct.TYPE_11__* %155, i32 400, i32 128, i32 128, i32 128)
  %157 = call i32 @sleep(i32 2)
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VGLDisplay, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VGLDisplay, align 8
  %160 = call i32 @VGLBitmapCopy(%struct.TYPE_11__* %158, i32 300, i32 300, %struct.TYPE_11__* %159, i32 500, i32 128, i32 128, i32 128)
  %161 = call i32 @sleep(i32 5)
  store i32 0, i32* %9, align 4
  br label %162

162:                                              ; preds = %226, %146
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %227

166:                                              ; preds = %162
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VGLDisplay, align 8
  %168 = call i32 (...) @rand()
  %169 = load i32, i32* %7, align 4
  %170 = srem i32 %168, %169
  %171 = call i32 (...) @rand()
  %172 = load i32, i32* %8, align 4
  %173 = srem i32 %171, %172
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VGLDisplay, align 8
  %175 = call i32 (...) @rand()
  %176 = load i32, i32* %7, align 4
  %177 = srem i32 %175, %176
  %178 = call i32 (...) @rand()
  %179 = load i32, i32* %8, align 4
  %180 = srem i32 %178, %179
  %181 = call i32 (...) @rand()
  %182 = load i32, i32* %7, align 4
  %183 = srem i32 %181, %182
  %184 = call i32 (...) @rand()
  %185 = load i32, i32* %8, align 4
  %186 = srem i32 %184, %185
  %187 = call i32 @VGLBitmapCopy(%struct.TYPE_11__* %167, i32 %170, i32 %173, %struct.TYPE_11__* %174, i32 %177, i32 %180, i32 %183, i32 %186)
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VGLDisplay, align 8
  %189 = call i32 (...) @rand()
  %190 = load i32, i32* %7, align 4
  %191 = srem i32 %189, %190
  %192 = call i32 (...) @rand()
  %193 = load i32, i32* %8, align 4
  %194 = srem i32 %192, %193
  %195 = call i32 (...) @rand()
  %196 = load i32, i32* %7, align 4
  %197 = srem i32 %195, %196
  %198 = call i32 (...) @rand()
  %199 = load i32, i32* %8, align 4
  %200 = srem i32 %198, %199
  %201 = call i32 (...) @rand()
  %202 = srem i32 %201, 256
  %203 = call i32 @VGLLine(%struct.TYPE_11__* %188, i32 %191, i32 %194, i32 %197, i32 %200, i32 %202)
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VGLDisplay, align 8
  %205 = call i32 (...) @rand()
  %206 = load i32, i32* %7, align 4
  %207 = srem i32 %205, %206
  %208 = call i32 (...) @rand()
  %209 = load i32, i32* %8, align 4
  %210 = srem i32 %208, %209
  %211 = call i32 (...) @rand()
  %212 = load i32, i32* %7, align 4
  %213 = srem i32 %211, %212
  %214 = sdiv i32 %213, 2
  %215 = call i32 (...) @rand()
  %216 = load i32, i32* %8, align 4
  %217 = srem i32 %215, %216
  %218 = sdiv i32 %217, 2
  %219 = call i32 (...) @rand()
  %220 = srem i32 %219, 256
  %221 = call i32 @VGLEllipse(%struct.TYPE_11__* %204, i32 %207, i32 %210, i32 %214, i32 %218, i32 %220)
  %222 = call i32 (...) @rand()
  %223 = load i32, i32* %9, align 4
  %224 = icmp sgt i32 %223, 1000
  br i1 %224, label %225, label %226

225:                                              ; preds = %166
  br label %227

226:                                              ; preds = %166
  br label %162

227:                                              ; preds = %225, %162
  %228 = call i32 (...) @VGLEnd()
  ret i32 0
}

declare dso_local i32 @VGLInit(i32) #1

declare dso_local i32 @VGLMouseInit(i32) #1

declare dso_local %struct.TYPE_11__* @VGLBitmapCreate(i32, i32, i32, i32*) #1

declare dso_local i32 @VGLBitmapAllocateBits(%struct.TYPE_11__*) #1

declare dso_local i32 @VGLClear(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @VGLLine(%struct.TYPE_11__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VGLEllipse(%struct.TYPE_11__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VGLBitmapString(%struct.TYPE_11__*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @VGLBitmapCopy(%struct.TYPE_11__*, i32, i32, %struct.TYPE_11__*, i32, i32, i32, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @VGLEnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

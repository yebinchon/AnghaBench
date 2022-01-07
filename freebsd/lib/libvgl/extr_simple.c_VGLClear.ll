; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvgl/extr_simple.c_VGLClear.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvgl/extr_simple.c_VGLClear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@VGLDisplay = common dso_local global %struct.TYPE_8__* null, align 8
@VGLVDisplay = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@VGL_MOUSEHIDE = common dso_local global i32 0, align 4
@VGLAdpInfo = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VGLClear(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = call i32 (...) @VGLCheckSwitch()
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @VGLDisplay, align 8
  %13 = icmp eq %struct.TYPE_8__* %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = call i32 (...) @VGLMouseFreeze()
  %16 = load i32, i32* %4, align 4
  call void @VGLClear(%struct.TYPE_8__* @VGLVDisplay, i32 %16)
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 139
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %168

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %14
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %162 [
    i32 139, label %28
    i32 130, label %28
    i32 129, label %28
    i32 138, label %28
    i32 137, label %28
    i32 136, label %28
    i32 135, label %28
    i32 134, label %28
    i32 133, label %28
    i32 128, label %97
    i32 132, label %115
    i32 131, label %115
  ]

28:                                               ; preds = %24, %24, %24, %24, %24, %24, %24, %24, %24
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 139, i32* %29, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  store i32 1, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  store i32 1, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 7
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 6
  store i32 0, i32* %41, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %44, %47
  %49 = call i32 @alloca(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 5
  store i32 %49, i32* %50, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 4
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @htole32(i32 %55)
  store i32 %56, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %76, %28
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  %71 = add nsw i32 %65, %70
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bcopy(i32* %4, i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %63
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %57

79:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %93, %79
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %80
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @__VGLBitmapCopy(%struct.TYPE_8__* %5, i32 0, i32 0, %struct.TYPE_8__* %87, i32 0, i32 %88, i32 %91, i32 -1)
  br label %93

93:                                               ; preds = %86
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %80

96:                                               ; preds = %80
  br label %162

97:                                               ; preds = %24
  %98 = load i32, i32* @VGL_MOUSEHIDE, align 4
  %99 = call i32 @__VGLMouseMode(i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = call i32 @outb(i32 966, i32 255)
  %101 = call i32 @outb(i32 964, i32 2)
  %102 = call i32 @outb(i32 965, i32 15)
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @VGLAdpInfo, i32 0, i32 0), align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %107, %110
  %112 = call i32 @memset(i32 %105, i32 %106, i32 %111)
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @__VGLMouseMode(i32 %113)
  br label %162

115:                                              ; preds = %24, %24
  %116 = load i32, i32* @VGL_MOUSEHIDE, align 4
  %117 = call i32 @__VGLMouseMode(i32 %116)
  store i32 %117, i32* %8, align 4
  %118 = call i32 @outb(i32 964, i32 2)
  %119 = call i32 @outb(i32 965, i32 15)
  %120 = call i32 @outb(i32 974, i32 5)
  %121 = call i32 @outb(i32 975, i32 2)
  %122 = call i32 @outb(i32 974, i32 1)
  %123 = call i32 @outb(i32 975, i32 0)
  %124 = call i32 @outb(i32 974, i32 8)
  %125 = call i32 @outb(i32 975, i32 255)
  store i32 0, i32* %9, align 4
  br label %126

126:                                              ; preds = %134, %115
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @VGLAdpInfo, i32 0, i32 0), align 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %128, %131
  %133 = icmp slt i32 %127, %132
  br i1 %133, label %134, label %157

134:                                              ; preds = %126
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @VGLSetSegment(i32 %135)
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %139, %142
  %144 = load i32, i32* %9, align 4
  %145 = sub nsw i32 %143, %144
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @VGLAdpInfo, i32 0, i32 1), align 4
  %147 = call i32 @min(i32 %145, i32 %146)
  store i32 %147, i32* %7, align 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @memset(i32 %150, i32 %151, i32 %152)
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %9, align 4
  br label %126

157:                                              ; preds = %126
  %158 = call i32 @outb(i32 974, i32 5)
  %159 = call i32 @outb(i32 975, i32 0)
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @__VGLMouseMode(i32 %160)
  br label %162

162:                                              ; preds = %24, %157, %97, %96
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** @VGLDisplay, align 8
  %165 = icmp eq %struct.TYPE_8__* %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = call i32 (...) @VGLMouseUnFreeze()
  br label %168

168:                                              ; preds = %22, %166, %162
  ret void
}

declare dso_local i32 @VGLCheckSwitch(...) #1

declare dso_local i32 @VGLMouseFreeze(...) #1

declare dso_local i32 @alloca(i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

declare dso_local i32 @__VGLBitmapCopy(%struct.TYPE_8__*, i32, i32, %struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @__VGLMouseMode(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @VGLSetSegment(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @VGLMouseUnFreeze(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

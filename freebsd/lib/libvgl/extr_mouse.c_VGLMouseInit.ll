; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvgl/extr_mouse.c_VGLMouseInit.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvgl/extr_mouse.c_VGLMouseInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i32* }
%struct.mouse_info = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@VGLModeInfo = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@BORDER = common dso_local global i32 0, align 4
@INTERIOR = common dso_local global i32 0, align 4
@M_BG640x480 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"VGLMOUSEBORDERCOLOR\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"VGLMOUSEINTERIORCOLOR\00", align 1
@VGLMouseLargeOrMask = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@VGLMouseSmallOrMask = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@MOUSE_MODE = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@CONS_MOUSECTL = common dso_local global i32 0, align 4
@VGLMouseAction = common dso_local global i32 0, align 4
@MOUSE_GETINFO = common dso_local global i32 0, align 4
@VGLMouseXpos = common dso_local global i32 0, align 4
@VGLMouseYpos = common dso_local global i32 0, align 4
@VGLMouseButtons = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VGLMouseInit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mouse_info, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @VGLModeInfo, i32 0, i32 0), align 8
  switch i32 %11, label %14 [
    i32 130, label %12
    i32 129, label %12
    i32 128, label %13
  ]

12:                                               ; preds = %1, %1
  store i32 15, i32* %6, align 4
  store i32 15, i32* %7, align 4
  store i32 4, i32* %10, align 4
  br label %17

13:                                               ; preds = %1
  store i32 63, i32* %6, align 4
  store i32 63, i32* %7, align 4
  store i32 36, i32* %10, align 4
  br label %17

14:                                               ; preds = %1
  store i32 255, i32* %6, align 4
  %15 = load i32, i32* @BORDER, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @INTERIOR, align 4
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %14, %13, %12
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @VGLModeInfo, i32 0, i32 1), align 8
  %19 = load i64, i64* @M_BG640x480, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %21, %17
  %23 = call i32* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = call i32* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @strtoul(i32* %26, i32* null, i32 0)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = call i32* @getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = call i32* @getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @strtoul(i32* %32, i32* null, i32 0)
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %31, %28
  store %struct.TYPE_11__* @VGLMouseLargeOrMask, %struct.TYPE_11__** %5, align 8
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %80, %34
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %39, %42
  %44 = icmp slt i32 %36, %43
  br i1 %44, label %45, label %83

45:                                               ; preds = %35
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @BORDER, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* %7, align 4
  br label %72

57:                                               ; preds = %45
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @INTERIOR, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %10, align 4
  br label %70

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  br label %72

72:                                               ; preds = %70, %55
  %73 = phi i32 [ %56, %55 ], [ %71, %70 ]
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %73, i32* %79, align 4
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %35

83:                                               ; preds = %35
  store %struct.TYPE_11__* @VGLMouseSmallOrMask, %struct.TYPE_11__** %5, align 8
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %129, %83
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %88, %91
  %93 = icmp slt i32 %85, %92
  br i1 %93, label %94, label %132

94:                                               ; preds = %84
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @BORDER, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %94
  %105 = load i32, i32* %7, align 4
  br label %121

106:                                              ; preds = %94
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @INTERIOR, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %106
  %117 = load i32, i32* %10, align 4
  br label %119

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118, %116
  %120 = phi i32 [ %117, %116 ], [ 0, %118 ]
  br label %121

121:                                              ; preds = %119, %104
  %122 = phi i32 [ %105, %104 ], [ %120, %119 ]
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %122, i32* %128, align 4
  br label %129

129:                                              ; preds = %121
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %84

132:                                              ; preds = %84
  %133 = call i32 (...) @VGLMouseSetStdImage()
  %134 = load i32, i32* @MOUSE_MODE, align 4
  %135 = getelementptr inbounds %struct.mouse_info, %struct.mouse_info* %4, i32 0, i32 1
  store i32 %134, i32* %135, align 4
  %136 = load i32, i32* @SIGUSR2, align 4
  %137 = getelementptr inbounds %struct.mouse_info, %struct.mouse_info* %4, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 4
  %140 = load i32, i32* @CONS_MOUSECTL, align 4
  %141 = call i32 @ioctl(i32 0, i32 %140, %struct.mouse_info* %4)
  store i32 %141, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %132
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %2, align 4
  br label %167

145:                                              ; preds = %132
  %146 = load i32, i32* @SIGUSR2, align 4
  %147 = load i32, i32* @VGLMouseAction, align 4
  %148 = call i32 @signal(i32 %146, i32 %147)
  %149 = load i32, i32* @MOUSE_GETINFO, align 4
  %150 = getelementptr inbounds %struct.mouse_info, %struct.mouse_info* %4, i32 0, i32 1
  store i32 %149, i32* %150, align 4
  %151 = load i32, i32* @CONS_MOUSECTL, align 4
  %152 = call i32 @ioctl(i32 0, i32 %151, %struct.mouse_info* %4)
  %153 = getelementptr inbounds %struct.mouse_info, %struct.mouse_info* %4, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* @VGLMouseXpos, align 4
  %157 = getelementptr inbounds %struct.mouse_info, %struct.mouse_info* %4, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* @VGLMouseYpos, align 4
  %161 = getelementptr inbounds %struct.mouse_info, %struct.mouse_info* %4, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* @VGLMouseButtons, align 4
  %165 = load i32, i32* %3, align 4
  %166 = call i32 @VGLMouseMode(i32 %165)
  store i32 0, i32* %2, align 4
  br label %167

167:                                              ; preds = %145, %143
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i32* @getenv(i8*) #1

declare dso_local i32 @strtoul(i32*, i32*, i32) #1

declare dso_local i32 @VGLMouseSetStdImage(...) #1

declare dso_local i32 @ioctl(i32, i32, %struct.mouse_info*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @VGLMouseMode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

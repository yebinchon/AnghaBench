; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_path_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_path_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"(nopath): \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(%s%d:\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"(noperiph:\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s%d:%d:\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"nobus:\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"X:\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%jx): \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"X): \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xpt_path_sbuf(%struct.cam_path* %0, %struct.sbuf* %1) #0 {
  %3 = alloca %struct.cam_path*, align 8
  %4 = alloca %struct.sbuf*, align 8
  store %struct.cam_path* %0, %struct.cam_path** %3, align 8
  store %struct.sbuf* %1, %struct.sbuf** %4, align 8
  %5 = load %struct.cam_path*, %struct.cam_path** %3, align 8
  %6 = icmp eq %struct.cam_path* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %9 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %97

10:                                               ; preds = %2
  %11 = load %struct.cam_path*, %struct.cam_path** %3, align 8
  %12 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %11, i32 0, i32 3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %17 = load %struct.cam_path*, %struct.cam_path** %3, align 8
  %18 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %17, i32 0, i32 3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cam_path*, %struct.cam_path** %3, align 8
  %23 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %22, i32 0, i32 3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %26)
  br label %31

28:                                               ; preds = %10
  %29 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %30 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %15
  %32 = load %struct.cam_path*, %struct.cam_path** %3, align 8
  %33 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %32, i32 0, i32 2
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = icmp ne %struct.TYPE_8__* %34, null
  br i1 %35, label %36, label %60

36:                                               ; preds = %31
  %37 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %38 = load %struct.cam_path*, %struct.cam_path** %3, align 8
  %39 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %38, i32 0, i32 2
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cam_path*, %struct.cam_path** %3, align 8
  %46 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.cam_path*, %struct.cam_path** %3, align 8
  %53 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %52, i32 0, i32 2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %44, i32 %51, i32 %58)
  br label %63

60:                                               ; preds = %31
  %61 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %62 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %36
  %64 = load %struct.cam_path*, %struct.cam_path** %3, align 8
  %65 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %64, i32 0, i32 1
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = icmp ne %struct.TYPE_9__* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %70 = load %struct.cam_path*, %struct.cam_path** %3, align 8
  %71 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %70, i32 0, i32 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  br label %79

76:                                               ; preds = %63
  %77 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %78 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %68
  %80 = load %struct.cam_path*, %struct.cam_path** %3, align 8
  %81 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = icmp ne %struct.TYPE_10__* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %86 = load %struct.cam_path*, %struct.cam_path** %3, align 8
  %87 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %91)
  br label %96

93:                                               ; preds = %79
  %94 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %95 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %84
  br label %97

97:                                               ; preds = %96, %7
  %98 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %99 = call i32 @sbuf_len(%struct.sbuf* %98)
  ret i32 %99
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i32 @sbuf_len(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

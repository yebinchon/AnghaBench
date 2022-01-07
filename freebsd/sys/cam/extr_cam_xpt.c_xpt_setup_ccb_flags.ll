; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_setup_ccb_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_setup_ccb_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_hdr = type { i64, i8*, %struct.TYPE_12__, i8*, i8*, i32, %struct.cam_path* }
%struct.TYPE_12__ = type { i32, i64, i8* }
%struct.cam_path = type { %struct.TYPE_11__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"xpt_setup_ccb\0A\00", align 1
@CAM_TARGET_WILDCARD = common dso_local global i8* null, align 8
@CAM_UNQUEUED_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpt_setup_ccb_flags(%struct.ccb_hdr* %0, %struct.cam_path* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.ccb_hdr*, align 8
  %6 = alloca %struct.cam_path*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.ccb_hdr* %0, %struct.ccb_hdr** %5, align 8
  store %struct.cam_path* %1, %struct.cam_path** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %10 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %11 = call i32 @CAM_DEBUG(%struct.cam_path* %9, i32 %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** %7, align 8
  %13 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %14 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  store i8* %12, i8** %15, align 8
  %16 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %17 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %18 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %17, i32 0, i32 6
  store %struct.cam_path* %16, %struct.cam_path** %18, align 8
  %19 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %20 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %25 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 8
  %26 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %27 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = icmp ne %struct.TYPE_8__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %4
  %31 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %32 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %37 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  br label %42

38:                                               ; preds = %4
  %39 = load i8*, i8** @CAM_TARGET_WILDCARD, align 8
  %40 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %41 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %38, %30
  %43 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %44 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %43, i32 0, i32 0
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = icmp ne %struct.TYPE_11__* %45, null
  br i1 %46, label %47, label %66

47:                                               ; preds = %42
  %48 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %49 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %54 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %56 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %64 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  store i64 %62, i64* %65, align 8
  br label %70

66:                                               ; preds = %42
  %67 = load i8*, i8** @CAM_TARGET_WILDCARD, align 8
  %68 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %69 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %66, %47
  %71 = load i32, i32* @CAM_UNQUEUED_INDEX, align 4
  %72 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %73 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %77 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %79 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  ret void
}

declare dso_local i32 @CAM_DEBUG(%struct.cam_path*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

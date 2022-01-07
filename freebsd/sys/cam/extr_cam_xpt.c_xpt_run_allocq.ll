; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_run_allocq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_run_allocq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.cam_periph = type { i32, i64, i32, i32, i32 (%struct.cam_periph*, %union.ccb*)*, i64, i32, %struct.TYPE_7__*, i32 }
%union.ccb = type { i32 }
%struct.TYPE_7__ = type { %struct.cam_ed* }
%struct.cam_ed = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@CAM_DEBUG_XPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"xpt_run_allocq(%p)\0A\00", align 1
@CAM_PRIORITY_NONE = common dso_local global i64 0, align 8
@CAM_PRIORITY_OOB = common dso_local global i64 0, align 8
@CAM_PERIPH_RUN_TASK = common dso_local global i32 0, align 4
@xsoftc = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"waking cam_periph_getccb()\0A\00", align 1
@periph_links = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"calling periph_start()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, i32)* @xpt_run_allocq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpt_run_allocq(%struct.cam_periph* %0, i32 %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cam_ed*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca i64, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @cam_periph_assert(%struct.cam_periph* %8, i32 %9)
  %11 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %12 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %148

16:                                               ; preds = %2
  %17 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %18 = call i32 @cam_periph_doacquire(%struct.cam_periph* %17)
  %19 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %20 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* @CAM_DEBUG_XPT, align 4
  %22 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %23 = bitcast %struct.cam_periph* %22 to i8*
  %24 = call i32 @CAM_DEBUG_PRINT(i32 %21, i8* %23)
  %25 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %26 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %25, i32 0, i32 7
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.cam_ed*, %struct.cam_ed** %28, align 8
  store %struct.cam_ed* %29, %struct.cam_ed** %5, align 8
  store %union.ccb* null, %union.ccb** %6, align 8
  br label %30

30:                                               ; preds = %73, %16
  br label %31

31:                                               ; preds = %136, %30
  %32 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %33 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %36 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @min(i64 %34, i64 %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* @CAM_PRIORITY_NONE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %31
  %42 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %43 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %union.ccb*, %union.ccb** %6, align 8
  %46 = icmp ne %union.ccb* %45, null
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  %49 = sub nsw i32 %44, %48
  %50 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  %51 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %41
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @CAM_PRIORITY_OOB, align 8
  %58 = icmp sle i64 %56, %57
  br label %59

59:                                               ; preds = %55, %41
  %60 = phi i1 [ true, %41 ], [ %58, %55 ]
  br label %61

61:                                               ; preds = %59, %31
  %62 = phi i1 [ false, %31 ], [ %60, %59 ]
  br i1 %62, label %63, label %137

63:                                               ; preds = %61
  %64 = load %union.ccb*, %union.ccb** %6, align 8
  %65 = icmp eq %union.ccb* %64, null
  br i1 %65, label %66, label %96

66:                                               ; preds = %63
  %67 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %68 = call %union.ccb* @xpt_get_ccb_nowait(%struct.cam_periph* %67)
  store %union.ccb* %68, %union.ccb** %6, align 8
  %69 = icmp eq %union.ccb* %68, null
  br i1 %69, label %70, label %96

70:                                               ; preds = %66
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %75 = call %union.ccb* @xpt_get_ccb(%struct.cam_periph* %74)
  store %union.ccb* %75, %union.ccb** %6, align 8
  br label %30

76:                                               ; preds = %70
  %77 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %78 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @CAM_PERIPH_RUN_TASK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %137

84:                                               ; preds = %76
  %85 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %86 = call i32 @cam_periph_doacquire(%struct.cam_periph* %85)
  %87 = load i32, i32* @CAM_PERIPH_RUN_TASK, align 4
  %88 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %89 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @xsoftc, i32 0, i32 0), align 4
  %93 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %94 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %93, i32 0, i32 8
  %95 = call i32 @taskqueue_enqueue(i32 %92, i32* %94)
  br label %137

96:                                               ; preds = %66, %63
  %97 = load %union.ccb*, %union.ccb** %6, align 8
  %98 = bitcast %union.ccb* %97 to i32*
  %99 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %100 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %99, i32 0, i32 7
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @xpt_setup_ccb(i32* %98, %struct.TYPE_7__* %101, i64 %102)
  %104 = load i64, i64* %7, align 8
  %105 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %106 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %104, %107
  br i1 %108, label %109, label %124

109:                                              ; preds = %96
  %110 = load i64, i64* @CAM_PRIORITY_NONE, align 8
  %111 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %112 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load i32, i32* @CAM_DEBUG_XPT, align 4
  %114 = call i32 @CAM_DEBUG_PRINT(i32 %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %115 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %116 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %115, i32 0, i32 6
  %117 = load %union.ccb*, %union.ccb** %6, align 8
  %118 = bitcast %union.ccb* %117 to i32*
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @periph_links, i32 0, i32 0), align 4
  %120 = call i32 @SLIST_INSERT_HEAD(i32* %116, i32* %118, i32 %119)
  %121 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %122 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %121, i32 0, i32 6
  %123 = call i32 @wakeup(i32* %122)
  br label %136

124:                                              ; preds = %96
  %125 = load i64, i64* @CAM_PRIORITY_NONE, align 8
  %126 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %127 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %126, i32 0, i32 5
  store i64 %125, i64* %127, align 8
  %128 = load i32, i32* @CAM_DEBUG_XPT, align 4
  %129 = call i32 @CAM_DEBUG_PRINT(i32 %128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %130 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %131 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %130, i32 0, i32 4
  %132 = load i32 (%struct.cam_periph*, %union.ccb*)*, i32 (%struct.cam_periph*, %union.ccb*)** %131, align 8
  %133 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %134 = load %union.ccb*, %union.ccb** %6, align 8
  %135 = call i32 %132(%struct.cam_periph* %133, %union.ccb* %134)
  br label %136

136:                                              ; preds = %124, %109
  store %union.ccb* null, %union.ccb** %6, align 8
  br label %31

137:                                              ; preds = %84, %83, %61
  %138 = load %union.ccb*, %union.ccb** %6, align 8
  %139 = icmp ne %union.ccb* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load %union.ccb*, %union.ccb** %6, align 8
  %142 = call i32 @xpt_release_ccb(%union.ccb* %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %145 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %144, i32 0, i32 0
  store i32 0, i32* %145, align 8
  %146 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %147 = call i32 @cam_periph_release_locked(%struct.cam_periph* %146)
  br label %148

148:                                              ; preds = %143, %15
  ret void
}

declare dso_local i32 @cam_periph_assert(%struct.cam_periph*, i32) #1

declare dso_local i32 @cam_periph_doacquire(%struct.cam_periph*) #1

declare dso_local i32 @CAM_DEBUG_PRINT(i32, i8*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local %union.ccb* @xpt_get_ccb_nowait(%struct.cam_periph*) #1

declare dso_local %union.ccb* @xpt_get_ccb(%struct.cam_periph*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @xpt_setup_ccb(i32*, %struct.TYPE_7__*, i64) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, i32*, i32) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

declare dso_local i32 @cam_periph_release_locked(%struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

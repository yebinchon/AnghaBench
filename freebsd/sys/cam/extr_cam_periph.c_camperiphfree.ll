; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_camperiphfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_camperiphfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.periph_driver = type { i32, i32, i32 }
%struct.cam_periph = type { i64, i32, i32, i32, i32 (i32*, i32, i32, i8*)*, i32 (%struct.cam_periph*)*, i32, i32 }
%union.ccb = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s%d: freed while allocating\00", align 1
@periph_drivers = common dso_local global %struct.periph_driver** null, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"camperiphfree: attempt to free non-existant periph\0A\00", align 1
@CAM_PERIPH_FREE = common dso_local global i32 0, align 4
@unit_links = common dso_local global i32 0, align 4
@CAM_PERIPH_ANNOUNCED = common dso_local global i32 0, align 4
@rebooting = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Periph destroyed\0A\00", align 1
@CAM_DEBUG_INFO = common dso_local global i32 0, align 4
@CAM_PERIPH_NEW_DEV_FOUND = common dso_local global i32 0, align 4
@XPT_GDEV_TYPE = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@M_CAMPERIPH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*)* @camperiphfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camperiphfree(%struct.cam_periph* %0) #0 {
  %2 = alloca %struct.cam_periph*, align 8
  %3 = alloca %struct.periph_driver**, align 8
  %4 = alloca %struct.periph_driver*, align 8
  %5 = alloca %union.ccb, align 4
  %6 = alloca i8*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %2, align 8
  %7 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @cam_periph_assert(%struct.cam_periph* %7, i32 %8)
  %10 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %11 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %16 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %19 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @KASSERT(i32 %14, i8* %22)
  %24 = load %struct.periph_driver**, %struct.periph_driver*** @periph_drivers, align 8
  store %struct.periph_driver** %24, %struct.periph_driver*** %3, align 8
  br label %25

25:                                               ; preds = %41, %1
  %26 = load %struct.periph_driver**, %struct.periph_driver*** %3, align 8
  %27 = load %struct.periph_driver*, %struct.periph_driver** %26, align 8
  %28 = icmp ne %struct.periph_driver* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load %struct.periph_driver**, %struct.periph_driver*** %3, align 8
  %31 = load %struct.periph_driver*, %struct.periph_driver** %30, align 8
  %32 = getelementptr inbounds %struct.periph_driver, %struct.periph_driver* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %35 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @strcmp(i32 %33, i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %44

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.periph_driver**, %struct.periph_driver*** %3, align 8
  %43 = getelementptr inbounds %struct.periph_driver*, %struct.periph_driver** %42, i32 1
  store %struct.periph_driver** %43, %struct.periph_driver*** %3, align 8
  br label %25

44:                                               ; preds = %39, %25
  %45 = load %struct.periph_driver**, %struct.periph_driver*** %3, align 8
  %46 = load %struct.periph_driver*, %struct.periph_driver** %45, align 8
  %47 = icmp eq %struct.periph_driver* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %155

50:                                               ; preds = %44
  %51 = load %struct.periph_driver**, %struct.periph_driver*** %3, align 8
  %52 = load %struct.periph_driver*, %struct.periph_driver** %51, align 8
  store %struct.periph_driver* %52, %struct.periph_driver** %4, align 8
  %53 = load i32, i32* @CAM_PERIPH_FREE, align 4
  %54 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %55 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = call i32 (...) @xpt_unlock_buses()
  %59 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %60 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %59, i32 0, i32 5
  %61 = load i32 (%struct.cam_periph*)*, i32 (%struct.cam_periph*)** %60, align 8
  %62 = icmp ne i32 (%struct.cam_periph*)* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %50
  %64 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %65 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %64, i32 0, i32 5
  %66 = load i32 (%struct.cam_periph*)*, i32 (%struct.cam_periph*)** %65, align 8
  %67 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %68 = call i32 %66(%struct.cam_periph* %67)
  br label %69

69:                                               ; preds = %63, %50
  %70 = call i32 (...) @xpt_lock_buses()
  %71 = load %struct.periph_driver*, %struct.periph_driver** %4, align 8
  %72 = getelementptr inbounds %struct.periph_driver, %struct.periph_driver* %71, i32 0, i32 1
  %73 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %74 = load i32, i32* @unit_links, align 4
  %75 = call i32 @TAILQ_REMOVE(i32* %72, %struct.cam_periph* %73, i32 %74)
  %76 = load %struct.periph_driver*, %struct.periph_driver** %4, align 8
  %77 = getelementptr inbounds %struct.periph_driver, %struct.periph_driver* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %81 = call i32 @xpt_remove_periph(%struct.cam_periph* %80)
  %82 = call i32 (...) @xpt_unlock_buses()
  %83 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %84 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @CAM_PERIPH_ANNOUNCED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %69
  %90 = load i32, i32* @rebooting, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  %93 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %94 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @xpt_print(i32 %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %103

97:                                               ; preds = %89, %69
  %98 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %99 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @CAM_DEBUG_INFO, align 4
  %102 = call i32 @CAM_DEBUG(i32 %100, i32 %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %103

103:                                              ; preds = %97, %92
  %104 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %105 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @CAM_PERIPH_NEW_DEV_FOUND, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %146

110:                                              ; preds = %103
  %111 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %112 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  switch i32 %113, label %133 [
    i32 129, label %114
    i32 128, label %126
  ]

114:                                              ; preds = %110
  %115 = load i32, i32* @XPT_GDEV_TYPE, align 4
  %116 = bitcast %union.ccb* %5 to %struct.TYPE_2__*
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = bitcast %union.ccb* %5 to %struct.TYPE_2__*
  %119 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %120 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %123 = call i32 @xpt_setup_ccb(%struct.TYPE_2__* %118, i32 %121, i32 %122)
  %124 = call i32 @xpt_action(%union.ccb* %5)
  %125 = bitcast %union.ccb* %5 to i8*
  store i8* %125, i8** %6, align 8
  br label %134

126:                                              ; preds = %110
  %127 = bitcast %union.ccb* %5 to i32*
  %128 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %129 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @xpt_path_inq(i32* %127, i32 %130)
  %132 = bitcast %union.ccb* %5 to i8*
  store i8* %132, i8** %6, align 8
  br label %134

133:                                              ; preds = %110
  store i8* null, i8** %6, align 8
  br label %134

134:                                              ; preds = %133, %126, %114
  %135 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %136 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %135, i32 0, i32 4
  %137 = load i32 (i32*, i32, i32, i8*)*, i32 (i32*, i32, i32, i8*)** %136, align 8
  %138 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %139 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %142 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load i8*, i8** %6, align 8
  %145 = call i32 %137(i32* null, i32 %140, i32 %143, i8* %144)
  br label %146

146:                                              ; preds = %134, %103
  %147 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %148 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @xpt_free_path(i32 %149)
  %151 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %152 = load i32, i32* @M_CAMPERIPH, align 4
  %153 = call i32 @free(%struct.cam_periph* %151, i32 %152)
  %154 = call i32 (...) @xpt_lock_buses()
  br label %155

155:                                              ; preds = %146, %48
  ret void
}

declare dso_local i32 @cam_periph_assert(%struct.cam_periph*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @xpt_unlock_buses(...) #1

declare dso_local i32 @xpt_lock_buses(...) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.cam_periph*, i32) #1

declare dso_local i32 @xpt_remove_periph(%struct.cam_periph*) #1

declare dso_local i32 @xpt_print(i32, i8*) #1

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @xpt_path_inq(i32*, i32) #1

declare dso_local i32 @xpt_free_path(i32) #1

declare dso_local i32 @free(%struct.cam_periph*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

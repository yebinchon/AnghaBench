; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptplistpdrvfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptplistpdrvfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.periph_driver = type { i64 }
%struct.cam_periph = type { i32 }
%struct.ccb_dev_match = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, %struct.periph_driver** }

@CAM_DEV_POS_PDPTR = common dso_local global i32 0, align 4
@CAM_DEV_POS_PERIPH = common dso_local global i32 0, align 4
@CAM_PERIPH_GENERATION = common dso_local global i64 0, align 8
@CAM_DEV_MATCH_LIST_CHANGED = common dso_local global i32 0, align 4
@xptplistperiphfunc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.periph_driver**, i8*)* @xptplistpdrvfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xptplistpdrvfunc(%struct.periph_driver** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.periph_driver**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cam_periph*, align 8
  %7 = alloca %struct.ccb_dev_match*, align 8
  store %struct.periph_driver** %0, %struct.periph_driver*** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.ccb_dev_match*
  store %struct.ccb_dev_match* %9, %struct.ccb_dev_match** %7, align 8
  %10 = call i32 (...) @xpt_lock_buses()
  %11 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %7, align 8
  %12 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CAM_DEV_POS_PDPTR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %70

18:                                               ; preds = %2
  %19 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %7, align 8
  %20 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.periph_driver**, %struct.periph_driver*** %22, align 8
  %24 = load %struct.periph_driver**, %struct.periph_driver*** %4, align 8
  %25 = icmp eq %struct.periph_driver** %23, %24
  br i1 %25, label %26, label %70

26:                                               ; preds = %18
  %27 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %7, align 8
  %28 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CAM_DEV_POS_PERIPH, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %70

34:                                               ; preds = %26
  %35 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %7, align 8
  %36 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %70

41:                                               ; preds = %34
  %42 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %7, align 8
  %43 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* @CAM_PERIPH_GENERATION, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.periph_driver**, %struct.periph_driver*** %4, align 8
  %50 = load %struct.periph_driver*, %struct.periph_driver** %49, align 8
  %51 = getelementptr inbounds %struct.periph_driver, %struct.periph_driver* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %48, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %41
  %55 = call i32 (...) @xpt_unlock_buses()
  %56 = load i32, i32* @CAM_DEV_MATCH_LIST_CHANGED, align 4
  %57 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %7, align 8
  %58 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  store i32 0, i32* %3, align 4
  br label %78

59:                                               ; preds = %41
  %60 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %7, align 8
  %61 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = bitcast i32* %64 to %struct.cam_periph*
  store %struct.cam_periph* %65, %struct.cam_periph** %6, align 8
  %66 = load %struct.cam_periph*, %struct.cam_periph** %6, align 8
  %67 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %71

70:                                               ; preds = %34, %26, %18, %2
  store %struct.cam_periph* null, %struct.cam_periph** %6, align 8
  br label %71

71:                                               ; preds = %70, %59
  %72 = call i32 (...) @xpt_unlock_buses()
  %73 = load %struct.periph_driver**, %struct.periph_driver*** %4, align 8
  %74 = load %struct.cam_periph*, %struct.cam_periph** %6, align 8
  %75 = load i32, i32* @xptplistperiphfunc, align 4
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @xptpdperiphtraverse(%struct.periph_driver** %73, %struct.cam_periph* %74, i32 %75, i8* %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %71, %54
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @xpt_lock_buses(...) #1

declare dso_local i32 @xpt_unlock_buses(...) #1

declare dso_local i32 @xptpdperiphtraverse(%struct.periph_driver**, %struct.cam_periph*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

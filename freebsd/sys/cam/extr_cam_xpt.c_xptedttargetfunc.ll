; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptedttargetfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptedttargetfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_et = type { i64, %struct.cam_eb* }
%struct.cam_eb = type { i32 }
%struct.ccb_dev_match = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, %struct.cam_et*, %struct.cam_eb* }
%struct.cam_ed = type { i32 }

@CAM_DEV_POS_BUS = common dso_local global i32 0, align 4
@CAM_DEV_POS_TARGET = common dso_local global i32 0, align 4
@CAM_DEV_POS_DEVICE = common dso_local global i32 0, align 4
@CAM_DEV_GENERATION = common dso_local global i64 0, align 8
@CAM_DEV_MATCH_LIST_CHANGED = common dso_local global i32 0, align 4
@xptedtdevicefunc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_et*, i8*)* @xptedttargetfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xptedttargetfunc(%struct.cam_et* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_et*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ccb_dev_match*, align 8
  %7 = alloca %struct.cam_eb*, align 8
  %8 = alloca %struct.cam_ed*, align 8
  store %struct.cam_et* %0, %struct.cam_et** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ccb_dev_match*
  store %struct.ccb_dev_match* %10, %struct.ccb_dev_match** %6, align 8
  %11 = load %struct.cam_et*, %struct.cam_et** %4, align 8
  %12 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %11, i32 0, i32 1
  %13 = load %struct.cam_eb*, %struct.cam_eb** %12, align 8
  store %struct.cam_eb* %13, %struct.cam_eb** %7, align 8
  %14 = load %struct.cam_eb*, %struct.cam_eb** %7, align 8
  %15 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %14, i32 0, i32 0
  %16 = call i32 @mtx_lock(i32* %15)
  %17 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %18 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CAM_DEV_POS_BUS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %93

24:                                               ; preds = %2
  %25 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %26 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load %struct.cam_eb*, %struct.cam_eb** %28, align 8
  %30 = load %struct.cam_eb*, %struct.cam_eb** %7, align 8
  %31 = icmp eq %struct.cam_eb* %29, %30
  br i1 %31, label %32, label %93

32:                                               ; preds = %24
  %33 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %34 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CAM_DEV_POS_TARGET, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %93

40:                                               ; preds = %32
  %41 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %42 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load %struct.cam_et*, %struct.cam_et** %44, align 8
  %46 = load %struct.cam_et*, %struct.cam_et** %4, align 8
  %47 = icmp eq %struct.cam_et* %45, %46
  br i1 %47, label %48, label %93

48:                                               ; preds = %40
  %49 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %50 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CAM_DEV_POS_DEVICE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %93

56:                                               ; preds = %48
  %57 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %58 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %93

63:                                               ; preds = %56
  %64 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %65 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* @CAM_DEV_GENERATION, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.cam_et*, %struct.cam_et** %4, align 8
  %72 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %63
  %76 = load %struct.cam_eb*, %struct.cam_eb** %7, align 8
  %77 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %76, i32 0, i32 0
  %78 = call i32 @mtx_unlock(i32* %77)
  %79 = load i32, i32* @CAM_DEV_MATCH_LIST_CHANGED, align 4
  %80 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %81 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  store i32 0, i32* %3, align 4
  br label %103

82:                                               ; preds = %63
  %83 = load %struct.ccb_dev_match*, %struct.ccb_dev_match** %6, align 8
  %84 = getelementptr inbounds %struct.ccb_dev_match, %struct.ccb_dev_match* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = bitcast i32* %87 to %struct.cam_ed*
  store %struct.cam_ed* %88, %struct.cam_ed** %8, align 8
  %89 = load %struct.cam_ed*, %struct.cam_ed** %8, align 8
  %90 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %94

93:                                               ; preds = %56, %48, %40, %32, %24, %2
  store %struct.cam_ed* null, %struct.cam_ed** %8, align 8
  br label %94

94:                                               ; preds = %93, %82
  %95 = load %struct.cam_eb*, %struct.cam_eb** %7, align 8
  %96 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %95, i32 0, i32 0
  %97 = call i32 @mtx_unlock(i32* %96)
  %98 = load %struct.cam_et*, %struct.cam_et** %4, align 8
  %99 = load %struct.cam_ed*, %struct.cam_ed** %8, align 8
  %100 = load i32, i32* @xptedtdevicefunc, align 4
  %101 = load i8*, i8** %5, align 8
  %102 = call i32 @xptdevicetraverse(%struct.cam_et* %98, %struct.cam_ed* %99, i32 %100, i8* %101)
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %94, %75
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @xptdevicetraverse(%struct.cam_et*, %struct.cam_ed*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

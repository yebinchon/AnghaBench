; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_release_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_release_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.cam_ed = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.cam_eb* }
%struct.cam_eb = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.cam_devq* }
%struct.cam_devq = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@links = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"destroying device, but periphs list is not empty\00", align 1
@CAM_UNQUEUED_INDEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"destroying device while still queued for ccbs\00", align 1
@CAM_DEV_REL_TIMEOUT_PENDING = common dso_local global i32 0, align 4
@M_CAMXPT = common dso_local global i32 0, align 4
@xsoftc = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpt_release_device(%struct.cam_ed* %0) #0 {
  %2 = alloca %struct.cam_ed*, align 8
  %3 = alloca %struct.cam_eb*, align 8
  %4 = alloca %struct.cam_devq*, align 8
  store %struct.cam_ed* %0, %struct.cam_ed** %2, align 8
  %5 = load %struct.cam_ed*, %struct.cam_ed** %2, align 8
  %6 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %5, i32 0, i32 12
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %9 = load %struct.cam_eb*, %struct.cam_eb** %8, align 8
  store %struct.cam_eb* %9, %struct.cam_eb** %3, align 8
  %10 = load %struct.cam_eb*, %struct.cam_eb** %3, align 8
  %11 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %10, i32 0, i32 1
  %12 = call i32 @mtx_lock(i32* %11)
  %13 = load %struct.cam_ed*, %struct.cam_ed** %2, align 8
  %14 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.cam_eb*, %struct.cam_eb** %3, align 8
  %20 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %19, i32 0, i32 1
  %21 = call i32 @mtx_unlock(i32* %20)
  br label %131

22:                                               ; preds = %1
  %23 = load %struct.cam_ed*, %struct.cam_ed** %2, align 8
  %24 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %23, i32 0, i32 12
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load %struct.cam_ed*, %struct.cam_ed** %2, align 8
  %28 = load i32, i32* @links, align 4
  %29 = call i32 @TAILQ_REMOVE(i32* %26, %struct.cam_ed* %27, i32 %28)
  %30 = load %struct.cam_ed*, %struct.cam_ed** %2, align 8
  %31 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %30, i32 0, i32 12
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load %struct.cam_eb*, %struct.cam_eb** %3, align 8
  %37 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %36, i32 0, i32 1
  %38 = call i32 @mtx_unlock(i32* %37)
  %39 = load %struct.cam_eb*, %struct.cam_eb** %3, align 8
  %40 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.cam_devq*, %struct.cam_devq** %42, align 8
  store %struct.cam_devq* %43, %struct.cam_devq** %4, align 8
  %44 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %45 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %44, i32 0, i32 0
  %46 = call i32 @mtx_lock(i32* %45)
  %47 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %48 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %49 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, 1
  %53 = call i32 @cam_devq_resize(%struct.cam_devq* %47, i64 %52)
  %54 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %55 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %54, i32 0, i32 0
  %56 = call i32 @mtx_unlock(i32* %55)
  %57 = load %struct.cam_ed*, %struct.cam_ed** %2, align 8
  %58 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %57, i32 0, i32 15
  %59 = call i32 @SLIST_EMPTY(i32* %58)
  %60 = call i32 @KASSERT(i32 %59, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.cam_ed*, %struct.cam_ed** %2, align 8
  %62 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %61, i32 0, i32 14
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CAM_UNQUEUED_INDEX, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @KASSERT(i32 %67, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.cam_ed*, %struct.cam_ed** %2, align 8
  %70 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CAM_DEV_REL_TIMEOUT_PENDING, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %22
  %76 = load %struct.cam_ed*, %struct.cam_ed** %2, align 8
  %77 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %76, i32 0, i32 13
  %78 = call i32 @callout_stop(i32* %77)
  br label %79

79:                                               ; preds = %75, %22
  %80 = load %struct.cam_ed*, %struct.cam_ed** %2, align 8
  %81 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %80, i32 0, i32 12
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = call i32 @xpt_release_target(%struct.TYPE_10__* %82)
  %84 = load %struct.cam_ed*, %struct.cam_ed** %2, align 8
  %85 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %84, i32 0, i32 11
  %86 = call i32 @cam_ccbq_fini(i32* %85)
  %87 = load %struct.cam_ed*, %struct.cam_ed** %2, align 8
  %88 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %87, i32 0, i32 10
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @M_CAMXPT, align 4
  %91 = call i32 @free(i32 %89, i32 %90)
  %92 = load %struct.cam_ed*, %struct.cam_ed** %2, align 8
  %93 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @M_CAMXPT, align 4
  %96 = call i32 @free(i32 %94, i32 %95)
  %97 = load %struct.cam_ed*, %struct.cam_ed** %2, align 8
  %98 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @M_CAMXPT, align 4
  %101 = call i32 @free(i32 %99, i32 %100)
  %102 = load %struct.cam_ed*, %struct.cam_ed** %2, align 8
  %103 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @M_CAMXPT, align 4
  %106 = call i32 @free(i32 %104, i32 %105)
  %107 = load %struct.cam_ed*, %struct.cam_ed** %2, align 8
  %108 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @M_CAMXPT, align 4
  %111 = call i32 @free(i32 %109, i32 %110)
  %112 = load %struct.cam_ed*, %struct.cam_ed** %2, align 8
  %113 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @M_CAMXPT, align 4
  %116 = call i32 @free(i32 %114, i32 %115)
  %117 = load %struct.cam_ed*, %struct.cam_ed** %2, align 8
  %118 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @M_CAMXPT, align 4
  %121 = call i32 @free(i32 %119, i32 %120)
  %122 = load %struct.cam_ed*, %struct.cam_ed** %2, align 8
  %123 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @M_CAMXPT, align 4
  %126 = call i32 @free(i32 %124, i32 %125)
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xsoftc, i32 0, i32 0), align 4
  %128 = load %struct.cam_ed*, %struct.cam_ed** %2, align 8
  %129 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %128, i32 0, i32 2
  %130 = call i32 @taskqueue_enqueue(i32 %127, i32* %129)
  br label %131

131:                                              ; preds = %79, %18
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.cam_ed*, i32) #1

declare dso_local i32 @cam_devq_resize(%struct.cam_devq*, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SLIST_EMPTY(i32*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @xpt_release_target(%struct.TYPE_10__*) #1

declare dso_local i32 @cam_ccbq_fini(i32*) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

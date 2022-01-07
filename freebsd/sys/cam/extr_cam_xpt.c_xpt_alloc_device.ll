; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_alloc_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_alloc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_ed = type { i64, i32, i32, i32, i32, i64, i64, i32, i64, i32, i32, i32, %struct.TYPE_4__*, %struct.cam_et*, i32 }
%struct.TYPE_4__ = type { i32, %struct.cam_devq* }
%struct.cam_devq = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.cam_eb = type { %struct.TYPE_4__*, i32 }
%struct.cam_et = type { i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@M_CAMDEV = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@CAM_DEV_UNCONFIGURED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"CAM device lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@xpt_destroy_device = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cam_ed* @xpt_alloc_device(%struct.cam_eb* %0, %struct.cam_et* %1, i64 %2) #0 {
  %4 = alloca %struct.cam_ed*, align 8
  %5 = alloca %struct.cam_eb*, align 8
  %6 = alloca %struct.cam_et*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cam_ed*, align 8
  %9 = alloca %struct.cam_ed*, align 8
  %10 = alloca %struct.cam_devq*, align 8
  %11 = alloca i64, align 8
  store %struct.cam_eb* %0, %struct.cam_eb** %5, align 8
  store %struct.cam_et* %1, %struct.cam_et** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.cam_eb*, %struct.cam_eb** %5, align 8
  %13 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %12, i32 0, i32 1
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @mtx_assert(i32* %13, i32 %14)
  %16 = load %struct.cam_eb*, %struct.cam_eb** %5, align 8
  %17 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.cam_devq*, %struct.cam_devq** %19, align 8
  store %struct.cam_devq* %20, %struct.cam_devq** %10, align 8
  %21 = load %struct.cam_devq*, %struct.cam_devq** %10, align 8
  %22 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %21, i32 0, i32 0
  %23 = call i32 @mtx_lock(i32* %22)
  %24 = load %struct.cam_devq*, %struct.cam_devq** %10, align 8
  %25 = load %struct.cam_devq*, %struct.cam_devq** %10, align 8
  %26 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  %30 = call i64 @cam_devq_resize(%struct.cam_devq* %24, i64 %29)
  store i64 %30, i64* %11, align 8
  %31 = load %struct.cam_devq*, %struct.cam_devq** %10, align 8
  %32 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %31, i32 0, i32 0
  %33 = call i32 @mtx_unlock(i32* %32)
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @CAM_REQ_CMP, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  store %struct.cam_ed* null, %struct.cam_ed** %4, align 8
  br label %150

38:                                               ; preds = %3
  %39 = load i32, i32* @M_CAMDEV, align 4
  %40 = load i32, i32* @M_NOWAIT, align 4
  %41 = load i32, i32* @M_ZERO, align 4
  %42 = or i32 %40, %41
  %43 = call i64 @malloc(i32 96, i32 %39, i32 %42)
  %44 = inttoptr i64 %43 to %struct.cam_ed*
  store %struct.cam_ed* %44, %struct.cam_ed** %9, align 8
  %45 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %46 = icmp eq %struct.cam_ed* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store %struct.cam_ed* null, %struct.cam_ed** %4, align 8
  br label %150

48:                                               ; preds = %38
  %49 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %50 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %49, i32 0, i32 14
  %51 = call i32 @cam_init_pinfo(i32* %50)
  %52 = load %struct.cam_et*, %struct.cam_et** %6, align 8
  %53 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %54 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %53, i32 0, i32 13
  store %struct.cam_et* %52, %struct.cam_et** %54, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %57 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.cam_eb*, %struct.cam_eb** %5, align 8
  %59 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %62 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %61, i32 0, i32 12
  store %struct.TYPE_4__* %60, %struct.TYPE_4__** %62, align 8
  %63 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %64 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %63, i32 0, i32 11
  %65 = load %struct.cam_eb*, %struct.cam_eb** %5, align 8
  %66 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @cam_ccbq_init(i32* %64, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %48
  %73 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %74 = load i32, i32* @M_CAMDEV, align 4
  %75 = call i32 @free(%struct.cam_ed* %73, i32 %74)
  store %struct.cam_ed* null, %struct.cam_ed** %4, align 8
  br label %150

76:                                               ; preds = %48
  %77 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %78 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %77, i32 0, i32 10
  %79 = call i32 @SLIST_INIT(i32* %78)
  %80 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %81 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %80, i32 0, i32 9
  %82 = call i32 @SLIST_INIT(i32* %81)
  %83 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %84 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %83, i32 0, i32 8
  store i64 0, i64* %84, align 8
  %85 = load i32, i32* @CAM_DEV_UNCONFIGURED, align 4
  %86 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %87 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 8
  %88 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %89 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %88, i32 0, i32 6
  store i64 0, i64* %89, align 8
  %90 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %91 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %90, i32 0, i32 5
  store i64 0, i64* %91, align 8
  %92 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %93 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %92, i32 0, i32 1
  store i32 1, i32* %93, align 8
  %94 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %95 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %94, i32 0, i32 4
  %96 = load i32, i32* @MTX_DEF, align 4
  %97 = call i32 @mtx_init(i32* %95, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null, i32 %96)
  %98 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %99 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %98, i32 0, i32 3
  %100 = load %struct.cam_devq*, %struct.cam_devq** %10, align 8
  %101 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %100, i32 0, i32 0
  %102 = call i32 @callout_init_mtx(i32* %99, i32* %101, i32 0)
  %103 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %104 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %103, i32 0, i32 2
  %105 = load i32, i32* @xpt_destroy_device, align 4
  %106 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %107 = call i32 @TASK_INIT(i32* %104, i32 0, i32 %105, %struct.cam_ed* %106)
  %108 = load %struct.cam_et*, %struct.cam_et** %6, align 8
  %109 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = load %struct.cam_et*, %struct.cam_et** %6, align 8
  %113 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %112, i32 0, i32 1
  %114 = call %struct.cam_ed* @TAILQ_FIRST(i32* %113)
  store %struct.cam_ed* %114, %struct.cam_ed** %8, align 8
  br label %115

115:                                              ; preds = %126, %76
  %116 = load %struct.cam_ed*, %struct.cam_ed** %8, align 8
  %117 = icmp ne %struct.cam_ed* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load %struct.cam_ed*, %struct.cam_ed** %8, align 8
  %120 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %7, align 8
  %123 = icmp slt i64 %121, %122
  br label %124

124:                                              ; preds = %118, %115
  %125 = phi i1 [ false, %115 ], [ %123, %118 ]
  br i1 %125, label %126, label %130

126:                                              ; preds = %124
  %127 = load %struct.cam_ed*, %struct.cam_ed** %8, align 8
  %128 = load i32, i32* @links, align 4
  %129 = call %struct.cam_ed* @TAILQ_NEXT(%struct.cam_ed* %127, i32 %128)
  store %struct.cam_ed* %129, %struct.cam_ed** %8, align 8
  br label %115

130:                                              ; preds = %124
  %131 = load %struct.cam_ed*, %struct.cam_ed** %8, align 8
  %132 = icmp ne %struct.cam_ed* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load %struct.cam_ed*, %struct.cam_ed** %8, align 8
  %135 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %136 = load i32, i32* @links, align 4
  %137 = call i32 @TAILQ_INSERT_BEFORE(%struct.cam_ed* %134, %struct.cam_ed* %135, i32 %136)
  br label %144

138:                                              ; preds = %130
  %139 = load %struct.cam_et*, %struct.cam_et** %6, align 8
  %140 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %139, i32 0, i32 1
  %141 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %142 = load i32, i32* @links, align 4
  %143 = call i32 @TAILQ_INSERT_TAIL(i32* %140, %struct.cam_ed* %141, i32 %142)
  br label %144

144:                                              ; preds = %138, %133
  %145 = load %struct.cam_et*, %struct.cam_et** %6, align 8
  %146 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  %149 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  store %struct.cam_ed* %149, %struct.cam_ed** %4, align 8
  br label %150

150:                                              ; preds = %144, %72, %47, %37
  %151 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  ret %struct.cam_ed* %151
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @cam_devq_resize(%struct.cam_devq*, i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @cam_init_pinfo(i32*) #1

declare dso_local i64 @cam_ccbq_init(i32*, i32) #1

declare dso_local i32 @free(%struct.cam_ed*, i32) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.cam_ed*) #1

declare dso_local %struct.cam_ed* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.cam_ed* @TAILQ_NEXT(%struct.cam_ed*, i32) #1

declare dso_local i32 @TAILQ_INSERT_BEFORE(%struct.cam_ed*, %struct.cam_ed*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.cam_ed*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

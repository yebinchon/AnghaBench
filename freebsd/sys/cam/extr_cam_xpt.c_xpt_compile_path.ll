; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_compile_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_compile_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { %struct.cam_ed*, %struct.cam_et*, %struct.cam_eb*, %struct.cam_periph* }
%struct.cam_ed = type { i32 }
%struct.cam_et = type { i32 }
%struct.cam_eb = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.cam_ed* (%struct.cam_eb*, %struct.cam_et*, i32)* }
%struct.cam_periph = type { i32 }

@CAM_REQ_CMP = common dso_local global i64 0, align 8
@CAM_PATH_INVALID = common dso_local global i64 0, align 8
@CAM_RESRC_UNAVAIL = common dso_local global i64 0, align 8
@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"xpt_compile_path\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xpt_compile_path(%struct.cam_path* %0, %struct.cam_periph* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.cam_path*, align 8
  %7 = alloca %struct.cam_periph*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cam_eb*, align 8
  %12 = alloca %struct.cam_et*, align 8
  %13 = alloca %struct.cam_ed*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.cam_et*, align 8
  %16 = alloca %struct.cam_ed*, align 8
  store %struct.cam_path* %0, %struct.cam_path** %6, align 8
  store %struct.cam_periph* %1, %struct.cam_periph** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i64, i64* @CAM_REQ_CMP, align 8
  store i64 %17, i64* %14, align 8
  store %struct.cam_et* null, %struct.cam_et** %12, align 8
  store %struct.cam_ed* null, %struct.cam_ed** %13, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.cam_eb* @xpt_find_bus(i32 %18)
  store %struct.cam_eb* %19, %struct.cam_eb** %11, align 8
  %20 = load %struct.cam_eb*, %struct.cam_eb** %11, align 8
  %21 = icmp eq %struct.cam_eb* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i64, i64* @CAM_PATH_INVALID, align 8
  store i64 %23, i64* %14, align 8
  br label %79

24:                                               ; preds = %5
  %25 = call i32 (...) @xpt_lock_buses()
  %26 = load %struct.cam_eb*, %struct.cam_eb** %11, align 8
  %27 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %26, i32 0, i32 0
  %28 = call i32 @mtx_lock(i32* %27)
  %29 = load %struct.cam_eb*, %struct.cam_eb** %11, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.cam_et* @xpt_find_target(%struct.cam_eb* %29, i32 %30)
  store %struct.cam_et* %31, %struct.cam_et** %12, align 8
  %32 = load %struct.cam_et*, %struct.cam_et** %12, align 8
  %33 = icmp eq %struct.cam_et* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %24
  %35 = load %struct.cam_eb*, %struct.cam_eb** %11, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call %struct.cam_et* @xpt_alloc_target(%struct.cam_eb* %35, i32 %36)
  store %struct.cam_et* %37, %struct.cam_et** %15, align 8
  %38 = load %struct.cam_et*, %struct.cam_et** %15, align 8
  %39 = icmp eq %struct.cam_et* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* @CAM_RESRC_UNAVAIL, align 8
  store i64 %41, i64* %14, align 8
  br label %44

42:                                               ; preds = %34
  %43 = load %struct.cam_et*, %struct.cam_et** %15, align 8
  store %struct.cam_et* %43, %struct.cam_et** %12, align 8
  br label %44

44:                                               ; preds = %42, %40
  br label %45

45:                                               ; preds = %44, %24
  %46 = call i32 (...) @xpt_unlock_buses()
  %47 = load %struct.cam_et*, %struct.cam_et** %12, align 8
  %48 = icmp ne %struct.cam_et* %47, null
  br i1 %48, label %49, label %75

49:                                               ; preds = %45
  %50 = load %struct.cam_et*, %struct.cam_et** %12, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call %struct.cam_ed* @xpt_find_device(%struct.cam_et* %50, i32 %51)
  store %struct.cam_ed* %52, %struct.cam_ed** %13, align 8
  %53 = load %struct.cam_ed*, %struct.cam_ed** %13, align 8
  %54 = icmp eq %struct.cam_ed* %53, null
  br i1 %54, label %55, label %74

55:                                               ; preds = %49
  %56 = load %struct.cam_eb*, %struct.cam_eb** %11, align 8
  %57 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load %struct.cam_ed* (%struct.cam_eb*, %struct.cam_et*, i32)*, %struct.cam_ed* (%struct.cam_eb*, %struct.cam_et*, i32)** %61, align 8
  %63 = load %struct.cam_eb*, %struct.cam_eb** %11, align 8
  %64 = load %struct.cam_et*, %struct.cam_et** %12, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call %struct.cam_ed* %62(%struct.cam_eb* %63, %struct.cam_et* %64, i32 %65)
  store %struct.cam_ed* %66, %struct.cam_ed** %16, align 8
  %67 = load %struct.cam_ed*, %struct.cam_ed** %16, align 8
  %68 = icmp eq %struct.cam_ed* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %55
  %70 = load i64, i64* @CAM_RESRC_UNAVAIL, align 8
  store i64 %70, i64* %14, align 8
  br label %73

71:                                               ; preds = %55
  %72 = load %struct.cam_ed*, %struct.cam_ed** %16, align 8
  store %struct.cam_ed* %72, %struct.cam_ed** %13, align 8
  br label %73

73:                                               ; preds = %71, %69
  br label %74

74:                                               ; preds = %73, %49
  br label %75

75:                                               ; preds = %74, %45
  %76 = load %struct.cam_eb*, %struct.cam_eb** %11, align 8
  %77 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %76, i32 0, i32 0
  %78 = call i32 @mtx_unlock(i32* %77)
  br label %79

79:                                               ; preds = %75, %22
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* @CAM_REQ_CMP, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %79
  %84 = load %struct.cam_periph*, %struct.cam_periph** %7, align 8
  %85 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %86 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %85, i32 0, i32 3
  store %struct.cam_periph* %84, %struct.cam_periph** %86, align 8
  %87 = load %struct.cam_eb*, %struct.cam_eb** %11, align 8
  %88 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %89 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %88, i32 0, i32 2
  store %struct.cam_eb* %87, %struct.cam_eb** %89, align 8
  %90 = load %struct.cam_et*, %struct.cam_et** %12, align 8
  %91 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %92 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %91, i32 0, i32 1
  store %struct.cam_et* %90, %struct.cam_et** %92, align 8
  %93 = load %struct.cam_ed*, %struct.cam_ed** %13, align 8
  %94 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %95 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %94, i32 0, i32 0
  store %struct.cam_ed* %93, %struct.cam_ed** %95, align 8
  %96 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %97 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %98 = call i32 @CAM_DEBUG(%struct.cam_path* %96, i32 %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %118

99:                                               ; preds = %79
  %100 = load %struct.cam_ed*, %struct.cam_ed** %13, align 8
  %101 = icmp ne %struct.cam_ed* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.cam_ed*, %struct.cam_ed** %13, align 8
  %104 = call i32 @xpt_release_device(%struct.cam_ed* %103)
  br label %105

105:                                              ; preds = %102, %99
  %106 = load %struct.cam_et*, %struct.cam_et** %12, align 8
  %107 = icmp ne %struct.cam_et* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load %struct.cam_et*, %struct.cam_et** %12, align 8
  %110 = call i32 @xpt_release_target(%struct.cam_et* %109)
  br label %111

111:                                              ; preds = %108, %105
  %112 = load %struct.cam_eb*, %struct.cam_eb** %11, align 8
  %113 = icmp ne %struct.cam_eb* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load %struct.cam_eb*, %struct.cam_eb** %11, align 8
  %116 = call i32 @xpt_release_bus(%struct.cam_eb* %115)
  br label %117

117:                                              ; preds = %114, %111
  br label %118

118:                                              ; preds = %117, %83
  %119 = load i64, i64* %14, align 8
  ret i64 %119
}

declare dso_local %struct.cam_eb* @xpt_find_bus(i32) #1

declare dso_local i32 @xpt_lock_buses(...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.cam_et* @xpt_find_target(%struct.cam_eb*, i32) #1

declare dso_local %struct.cam_et* @xpt_alloc_target(%struct.cam_eb*, i32) #1

declare dso_local i32 @xpt_unlock_buses(...) #1

declare dso_local %struct.cam_ed* @xpt_find_device(%struct.cam_et*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @CAM_DEBUG(%struct.cam_path*, i32, i8*) #1

declare dso_local i32 @xpt_release_device(%struct.cam_ed*) #1

declare dso_local i32 @xpt_release_target(%struct.cam_et*) #1

declare dso_local i32 @xpt_release_bus(%struct.cam_eb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

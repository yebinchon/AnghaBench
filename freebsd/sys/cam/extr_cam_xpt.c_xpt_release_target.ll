; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_release_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_release_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_et = type { i64, %struct.cam_et*, i32, i32, %struct.cam_eb* }
%struct.cam_eb = type { i32, i32, i32 }

@links = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"destroying target, but device list is not empty\00", align 1
@M_CAMXPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_et*)* @xpt_release_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpt_release_target(%struct.cam_et* %0) #0 {
  %2 = alloca %struct.cam_et*, align 8
  %3 = alloca %struct.cam_eb*, align 8
  store %struct.cam_et* %0, %struct.cam_et** %2, align 8
  %4 = load %struct.cam_et*, %struct.cam_et** %2, align 8
  %5 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %4, i32 0, i32 4
  %6 = load %struct.cam_eb*, %struct.cam_eb** %5, align 8
  store %struct.cam_eb* %6, %struct.cam_eb** %3, align 8
  %7 = load %struct.cam_eb*, %struct.cam_eb** %3, align 8
  %8 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %7, i32 0, i32 0
  %9 = call i32 @mtx_lock(i32* %8)
  %10 = load %struct.cam_et*, %struct.cam_et** %2, align 8
  %11 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.cam_eb*, %struct.cam_eb** %3, align 8
  %17 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %16, i32 0, i32 0
  %18 = call i32 @mtx_unlock(i32* %17)
  br label %55

19:                                               ; preds = %1
  %20 = load %struct.cam_eb*, %struct.cam_eb** %3, align 8
  %21 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %20, i32 0, i32 2
  %22 = load %struct.cam_et*, %struct.cam_et** %2, align 8
  %23 = load i32, i32* @links, align 4
  %24 = call i32 @TAILQ_REMOVE(i32* %21, %struct.cam_et* %22, i32 %23)
  %25 = load %struct.cam_eb*, %struct.cam_eb** %3, align 8
  %26 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.cam_eb*, %struct.cam_eb** %3, align 8
  %30 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %29, i32 0, i32 0
  %31 = call i32 @mtx_unlock(i32* %30)
  %32 = load %struct.cam_et*, %struct.cam_et** %2, align 8
  %33 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %32, i32 0, i32 3
  %34 = call i32 @TAILQ_EMPTY(i32* %33)
  %35 = call i32 @KASSERT(i32 %34, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.cam_eb*, %struct.cam_eb** %3, align 8
  %37 = call i32 @xpt_release_bus(%struct.cam_eb* %36)
  %38 = load %struct.cam_et*, %struct.cam_et** %2, align 8
  %39 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %38, i32 0, i32 2
  %40 = call i32 @mtx_destroy(i32* %39)
  %41 = load %struct.cam_et*, %struct.cam_et** %2, align 8
  %42 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %41, i32 0, i32 1
  %43 = load %struct.cam_et*, %struct.cam_et** %42, align 8
  %44 = icmp ne %struct.cam_et* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %19
  %46 = load %struct.cam_et*, %struct.cam_et** %2, align 8
  %47 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %46, i32 0, i32 1
  %48 = load %struct.cam_et*, %struct.cam_et** %47, align 8
  %49 = load i32, i32* @M_CAMXPT, align 4
  %50 = call i32 @free(%struct.cam_et* %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %19
  %52 = load %struct.cam_et*, %struct.cam_et** %2, align 8
  %53 = load i32, i32* @M_CAMXPT, align 4
  %54 = call i32 @free(%struct.cam_et* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %15
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.cam_et*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @xpt_release_bus(%struct.cam_eb*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.cam_et*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

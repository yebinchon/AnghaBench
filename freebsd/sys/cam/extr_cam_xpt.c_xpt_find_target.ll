; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_find_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_find_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_et = type { i64, i32 }
%struct.cam_eb = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cam_et* (%struct.cam_eb*, i64)* @xpt_find_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cam_et* @xpt_find_target(%struct.cam_eb* %0, i64 %1) #0 {
  %3 = alloca %struct.cam_eb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.cam_et*, align 8
  store %struct.cam_eb* %0, %struct.cam_eb** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.cam_eb*, %struct.cam_eb** %3, align 8
  %7 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %6, i32 0, i32 1
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @mtx_assert(i32* %7, i32 %8)
  %10 = load %struct.cam_eb*, %struct.cam_eb** %3, align 8
  %11 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %10, i32 0, i32 0
  %12 = call %struct.cam_et* @TAILQ_FIRST(i32* %11)
  store %struct.cam_et* %12, %struct.cam_et** %5, align 8
  br label %13

13:                                               ; preds = %28, %2
  %14 = load %struct.cam_et*, %struct.cam_et** %5, align 8
  %15 = icmp ne %struct.cam_et* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load %struct.cam_et*, %struct.cam_et** %5, align 8
  %18 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.cam_et*, %struct.cam_et** %5, align 8
  %24 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  br label %32

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.cam_et*, %struct.cam_et** %5, align 8
  %30 = load i32, i32* @links, align 4
  %31 = call %struct.cam_et* @TAILQ_NEXT(%struct.cam_et* %29, i32 %30)
  store %struct.cam_et* %31, %struct.cam_et** %5, align 8
  br label %13

32:                                               ; preds = %22, %13
  %33 = load %struct.cam_et*, %struct.cam_et** %5, align 8
  ret %struct.cam_et* %33
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.cam_et* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.cam_et* @TAILQ_NEXT(%struct.cam_et*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

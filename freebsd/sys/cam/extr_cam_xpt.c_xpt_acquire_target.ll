; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_acquire_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_acquire_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_et = type { i32, %struct.cam_eb* }
%struct.cam_eb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_et*)* @xpt_acquire_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpt_acquire_target(%struct.cam_et* %0) #0 {
  %2 = alloca %struct.cam_et*, align 8
  %3 = alloca %struct.cam_eb*, align 8
  store %struct.cam_et* %0, %struct.cam_et** %2, align 8
  %4 = load %struct.cam_et*, %struct.cam_et** %2, align 8
  %5 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %4, i32 0, i32 1
  %6 = load %struct.cam_eb*, %struct.cam_eb** %5, align 8
  store %struct.cam_eb* %6, %struct.cam_eb** %3, align 8
  %7 = load %struct.cam_eb*, %struct.cam_eb** %3, align 8
  %8 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %7, i32 0, i32 0
  %9 = call i32 @mtx_lock(i32* %8)
  %10 = load %struct.cam_et*, %struct.cam_et** %2, align 8
  %11 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 8
  %14 = load %struct.cam_eb*, %struct.cam_eb** %3, align 8
  %15 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %14, i32 0, i32 0
  %16 = call i32 @mtx_unlock(i32* %15)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

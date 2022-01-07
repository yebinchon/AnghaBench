; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_acquire_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_acquire_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_ed = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cam_eb* }
%struct.cam_eb = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpt_acquire_device(%struct.cam_ed* %0) #0 {
  %2 = alloca %struct.cam_ed*, align 8
  %3 = alloca %struct.cam_eb*, align 8
  store %struct.cam_ed* %0, %struct.cam_ed** %2, align 8
  %4 = load %struct.cam_ed*, %struct.cam_ed** %2, align 8
  %5 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.cam_eb*, %struct.cam_eb** %7, align 8
  store %struct.cam_eb* %8, %struct.cam_eb** %3, align 8
  %9 = load %struct.cam_eb*, %struct.cam_eb** %3, align 8
  %10 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %9, i32 0, i32 0
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load %struct.cam_ed*, %struct.cam_ed** %2, align 8
  %13 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.cam_eb*, %struct.cam_eb** %3, align 8
  %17 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %16, i32 0, i32 0
  %18 = call i32 @mtx_unlock(i32* %17)
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

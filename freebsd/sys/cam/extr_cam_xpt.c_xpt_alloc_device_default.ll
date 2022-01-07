; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_alloc_device_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_alloc_device_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_ed = type { i32, i32 }
%struct.cam_eb = type { i32 }
%struct.cam_et = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cam_ed* (%struct.cam_eb*, %struct.cam_et*, i32)* @xpt_alloc_device_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cam_ed* @xpt_alloc_device_default(%struct.cam_eb* %0, %struct.cam_et* %1, i32 %2) #0 {
  %4 = alloca %struct.cam_ed*, align 8
  %5 = alloca %struct.cam_eb*, align 8
  %6 = alloca %struct.cam_et*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cam_ed*, align 8
  store %struct.cam_eb* %0, %struct.cam_eb** %5, align 8
  store %struct.cam_et* %1, %struct.cam_et** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.cam_eb*, %struct.cam_eb** %5, align 8
  %10 = load %struct.cam_et*, %struct.cam_et** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.cam_ed* @xpt_alloc_device(%struct.cam_eb* %9, %struct.cam_et* %10, i32 %11)
  store %struct.cam_ed* %12, %struct.cam_ed** %8, align 8
  %13 = load %struct.cam_ed*, %struct.cam_ed** %8, align 8
  %14 = icmp eq %struct.cam_ed* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.cam_ed* null, %struct.cam_ed** %4, align 8
  br label %22

16:                                               ; preds = %3
  %17 = load %struct.cam_ed*, %struct.cam_ed** %8, align 8
  %18 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.cam_ed*, %struct.cam_ed** %8, align 8
  %20 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load %struct.cam_ed*, %struct.cam_ed** %8, align 8
  store %struct.cam_ed* %21, %struct.cam_ed** %4, align 8
  br label %22

22:                                               ; preds = %16, %15
  %23 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  ret %struct.cam_ed* %23
}

declare dso_local %struct.cam_ed* @xpt_alloc_device(%struct.cam_eb*, %struct.cam_et*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

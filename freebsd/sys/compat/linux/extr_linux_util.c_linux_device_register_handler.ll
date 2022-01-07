; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_util.c_linux_device_register_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_util.c_linux_device_register_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_device_handler = type { i64 }
%struct.device_element = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@M_LINUX = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@linux_major_starting = common dso_local global i32 0, align 4
@devices = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_device_register_handler(%struct.linux_device_handler* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linux_device_handler*, align 8
  %4 = alloca %struct.device_element*, align 8
  store %struct.linux_device_handler* %0, %struct.linux_device_handler** %3, align 8
  %5 = load %struct.linux_device_handler*, %struct.linux_device_handler** %3, align 8
  %6 = icmp eq %struct.linux_device_handler* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  store i32 %8, i32* %2, align 4
  br label %31

9:                                                ; preds = %1
  %10 = load i32, i32* @M_LINUX, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = call %struct.device_element* @malloc(i32 4, i32 %10, i32 %11)
  store %struct.device_element* %12, %struct.device_element** %4, align 8
  %13 = load %struct.linux_device_handler*, %struct.linux_device_handler** %3, align 8
  %14 = getelementptr inbounds %struct.linux_device_handler, %struct.linux_device_handler* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = load i32, i32* @linux_major_starting, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @linux_major_starting, align 4
  %20 = sext i32 %18 to i64
  %21 = load %struct.linux_device_handler*, %struct.linux_device_handler** %3, align 8
  %22 = getelementptr inbounds %struct.linux_device_handler, %struct.linux_device_handler* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %17, %9
  %24 = load %struct.linux_device_handler*, %struct.linux_device_handler** %3, align 8
  %25 = load %struct.device_element*, %struct.device_element** %4, align 8
  %26 = getelementptr inbounds %struct.device_element, %struct.device_element* %25, i32 0, i32 0
  %27 = call i32 @bcopy(%struct.linux_device_handler* %24, i32* %26, i32 8)
  %28 = load %struct.device_element*, %struct.device_element** %4, align 8
  %29 = load i32, i32* @list, align 4
  %30 = call i32 @TAILQ_INSERT_TAIL(i32* @devices, %struct.device_element* %28, i32 %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %23, %7
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.device_element* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(%struct.linux_device_handler*, i32*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.device_element*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

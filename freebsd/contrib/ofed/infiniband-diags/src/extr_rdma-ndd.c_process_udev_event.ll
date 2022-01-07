; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_rdma-ndd.c_process_udev_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_rdma-ndd.c_process_udev_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udev_device = type { i32 }

@mon = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Device event: %s, %s, %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @process_udev_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_udev_event(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.udev_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @mon, align 4
  %9 = call %struct.udev_device* @udev_monitor_receive_device(i32 %8)
  store %struct.udev_device* %9, %struct.udev_device** %5, align 8
  %10 = load %struct.udev_device*, %struct.udev_device** %5, align 8
  %11 = icmp ne %struct.udev_device* %10, null
  br i1 %11, label %12, label %39

12:                                               ; preds = %2
  %13 = load %struct.udev_device*, %struct.udev_device** %5, align 8
  %14 = call i8* @udev_device_get_sysname(%struct.udev_device* %13)
  store i8* %14, i8** %6, align 8
  %15 = load %struct.udev_device*, %struct.udev_device** %5, align 8
  %16 = call i8* @udev_device_get_action(%struct.udev_device* %15)
  store i8* %16, i8** %7, align 8
  %17 = load i32, i32* @LOG_INFO, align 4
  %18 = load %struct.udev_device*, %struct.udev_device** %5, align 8
  %19 = call i32 @udev_device_get_subsystem(%struct.udev_device* %18)
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @syslog(i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %20, i8* %21)
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %12
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @strncmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @update_node_desc(i8* %33, i8* %34, i32 1)
  br label %36

36:                                               ; preds = %32, %28, %25, %12
  %37 = load %struct.udev_device*, %struct.udev_device** %5, align 8
  %38 = call i32 @udev_device_unref(%struct.udev_device* %37)
  br label %39

39:                                               ; preds = %36, %2
  ret void
}

declare dso_local %struct.udev_device* @udev_monitor_receive_device(i32) #1

declare dso_local i8* @udev_device_get_sysname(%struct.udev_device*) #1

declare dso_local i8* @udev_device_get_action(%struct.udev_device*) #1

declare dso_local i32 @syslog(i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @udev_device_get_subsystem(%struct.udev_device*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @update_node_desc(i8*, i8*, i32) #1

declare dso_local i32 @udev_device_unref(%struct.udev_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_ioctl_sg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_ioctl_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_ioctl_args = type { i32 }
%struct.ioctl_args = type { i32 }

@SG_GET_VERSION_NUM = common dso_local global i32 0, align 4
@SG_SET_TIMEOUT = common dso_local global i32 0, align 4
@SG_GET_TIMEOUT = common dso_local global i32 0, align 4
@SG_IO = common dso_local global i32 0, align 4
@SG_GET_RESERVED_SIZE = common dso_local global i32 0, align 4
@SG_GET_SCSI_ID = common dso_local global i32 0, align 4
@SG_GET_SG_TABLESIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.linux_ioctl_args*)* @linux_ioctl_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_ioctl_sg(%struct.thread* %0, %struct.linux_ioctl_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_ioctl_args*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_ioctl_args* %1, %struct.linux_ioctl_args** %5, align 8
  %6 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %7 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %37 [
    i32 130, label %9
    i32 128, label %13
    i32 131, label %17
    i32 129, label %21
    i32 134, label %25
    i32 133, label %29
    i32 132, label %33
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @SG_GET_VERSION_NUM, align 4
  %11 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %12 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  br label %39

13:                                               ; preds = %2
  %14 = load i32, i32* @SG_SET_TIMEOUT, align 4
  %15 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %16 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %39

17:                                               ; preds = %2
  %18 = load i32, i32* @SG_GET_TIMEOUT, align 4
  %19 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %20 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %39

21:                                               ; preds = %2
  %22 = load i32, i32* @SG_IO, align 4
  %23 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %24 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %39

25:                                               ; preds = %2
  %26 = load i32, i32* @SG_GET_RESERVED_SIZE, align 4
  %27 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %28 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %39

29:                                               ; preds = %2
  %30 = load i32, i32* @SG_GET_SCSI_ID, align 4
  %31 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %32 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %39

33:                                               ; preds = %2
  %34 = load i32, i32* @SG_GET_SG_TABLESIZE, align 4
  %35 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %36 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %39

37:                                               ; preds = %2
  %38 = load i32, i32* @ENODEV, align 4
  store i32 %38, i32* %3, align 4
  br label %44

39:                                               ; preds = %33, %29, %25, %21, %17, %13, %9
  %40 = load %struct.thread*, %struct.thread** %4, align 8
  %41 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %42 = bitcast %struct.linux_ioctl_args* %41 to %struct.ioctl_args*
  %43 = call i32 @sys_ioctl(%struct.thread* %40, %struct.ioctl_args* %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %37
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @sys_ioctl(%struct.thread*, %struct.ioctl_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

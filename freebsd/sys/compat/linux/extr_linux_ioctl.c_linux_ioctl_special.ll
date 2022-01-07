; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_ioctl_special.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_ioctl_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_ioctl_args = type { i32 }
%struct.ioctl_args = type { i32 }

@SIOCGIFADDR = common dso_local global i32 0, align 4
@SIOCSIFADDR = common dso_local global i32 0, align 4
@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.linux_ioctl_args*)* @linux_ioctl_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_ioctl_special(%struct.thread* %0, %struct.linux_ioctl_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.linux_ioctl_args*, align 8
  %5 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.linux_ioctl_args* %1, %struct.linux_ioctl_args** %4, align 8
  %6 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %7 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %33 [
    i32 130, label %9
    i32 128, label %17
    i32 129, label %25
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @SIOCGIFADDR, align 4
  %11 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %12 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.thread*, %struct.thread** %3, align 8
  %14 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %15 = bitcast %struct.linux_ioctl_args* %14 to %struct.ioctl_args*
  %16 = call i32 @sys_ioctl(%struct.thread* %13, %struct.ioctl_args* %15)
  store i32 %16, i32* %5, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load i32, i32* @SIOCSIFADDR, align 4
  %19 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %20 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.thread*, %struct.thread** %3, align 8
  %22 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %23 = bitcast %struct.linux_ioctl_args* %22 to %struct.ioctl_args*
  %24 = call i32 @sys_ioctl(%struct.thread* %21, %struct.ioctl_args* %23)
  store i32 %24, i32* %5, align 4
  br label %35

25:                                               ; preds = %2
  %26 = load i32, i32* @SIOCGIFFLAGS, align 4
  %27 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %28 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.thread*, %struct.thread** %3, align 8
  %30 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %31 = bitcast %struct.linux_ioctl_args* %30 to %struct.ioctl_args*
  %32 = call i32 @sys_ioctl(%struct.thread* %29, %struct.ioctl_args* %31)
  store i32 %32, i32* %5, align 4
  br label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @ENOIOCTL, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %33, %25, %17, %9
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @sys_ioctl(%struct.thread*, %struct.ioctl_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

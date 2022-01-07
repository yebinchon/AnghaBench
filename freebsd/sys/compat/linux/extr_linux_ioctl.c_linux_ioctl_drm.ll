; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_ioctl_drm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_ioctl_drm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_ioctl_args = type { i32 }
%struct.ioctl_args = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.linux_ioctl_args*)* @linux_ioctl_drm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_ioctl_drm(%struct.thread* %0, %struct.linux_ioctl_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.linux_ioctl_args*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.linux_ioctl_args* %1, %struct.linux_ioctl_args** %4, align 8
  %5 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %6 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @SETDIR(i32 %7)
  %9 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %10 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.thread*, %struct.thread** %3, align 8
  %12 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %13 = bitcast %struct.linux_ioctl_args* %12 to %struct.ioctl_args*
  %14 = call i32 @sys_ioctl(%struct.thread* %11, %struct.ioctl_args* %13)
  ret i32 %14
}

declare dso_local i32 @SETDIR(i32) #1

declare dso_local i32 @sys_ioctl(%struct.thread*, %struct.ioctl_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

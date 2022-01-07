; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_ioctl_private.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_ioctl_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_ioctl_args = type { i32 }
%struct.file = type { i32 }

@cap_ioctl_rights = common dso_local global i32 0, align 4
@DTYPE_SOCKET = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.linux_ioctl_args*)* @linux_ioctl_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_ioctl_private(%struct.thread* %0, %struct.linux_ioctl_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_ioctl_args*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_ioctl_args* %1, %struct.linux_ioctl_args** %5, align 8
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %11 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @fget(%struct.thread* %9, i32 %12, i32* @cap_ioctl_rights, %struct.file** %6)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.file*, %struct.file** %6, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.file*, %struct.file** %6, align 8
  %23 = load %struct.thread*, %struct.thread** %4, align 8
  %24 = call i32 @fdrop(%struct.file* %22, %struct.thread* %23)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @DTYPE_SOCKET, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load %struct.thread*, %struct.thread** %4, align 8
  %30 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %31 = call i32 @linux_ioctl_socket(%struct.thread* %29, %struct.linux_ioctl_args* %30)
  store i32 %31, i32* %3, align 4
  br label %34

32:                                               ; preds = %18
  %33 = load i32, i32* @ENOIOCTL, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %28, %16
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @linux_ioctl_socket(%struct.thread*, %struct.linux_ioctl_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

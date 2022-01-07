; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_linux.c_aac_linux_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_linux.c_aac_linux_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_ioctl_args = type { i64, i32, i32 }
%struct.file = type { i32 }

@CAP_IOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.linux_ioctl_args*)* @aac_linux_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_linux_ioctl(%struct.thread* %0, %struct.linux_ioctl_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_ioctl_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_ioctl_args* %1, %struct.linux_ioctl_args** %5, align 8
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %12 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CAP_IOCTL, align 4
  %15 = call i32 @cap_rights_init(i32* %6, i32 %14)
  %16 = call i32 @fget(%struct.thread* %10, i32 %13, i32 %15, %struct.file** %7)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %3, align 4
  br label %40

21:                                               ; preds = %2
  %22 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %23 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load %struct.file*, %struct.file** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %28 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.thread*, %struct.thread** %4, align 8
  %32 = getelementptr inbounds %struct.thread, %struct.thread* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.thread*, %struct.thread** %4, align 8
  %35 = call i32 @fo_ioctl(%struct.file* %25, i32 %26, i32 %30, i32 %33, %struct.thread* %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.file*, %struct.file** %7, align 8
  %37 = load %struct.thread*, %struct.thread** %4, align 8
  %38 = call i32 @fdrop(%struct.file* %36, %struct.thread* %37)
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %21, %19
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @fget(%struct.thread*, i32, i32, %struct.file**) #1

declare dso_local i32 @cap_rights_init(i32*, i32) #1

declare dso_local i32 @fo_ioctl(%struct.file*, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

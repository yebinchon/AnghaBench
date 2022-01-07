; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_ioctl_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_ioctl_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_ioctl_args = type { i32, i64, i32 }
%struct.file = type { i32 }

@cap_ioctl_rights = common dso_local global i32 0, align 4
@DIOCGSECTORSIZE = common dso_local global i32 0, align 4
@DIOCGMEDIASIZE = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.linux_ioctl_args*)* @linux_ioctl_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_ioctl_disk(%struct.thread* %0, %struct.linux_ioctl_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_ioctl_args*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_ioctl_args* %1, %struct.linux_ioctl_args** %5, align 8
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %12 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @fget(%struct.thread* %10, i32 %13, i32* @cap_ioctl_rights, %struct.file** %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %88

19:                                               ; preds = %2
  %20 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %21 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 65535
  switch i32 %23, label %83 [
    i32 129, label %24
    i32 128, label %61
  ]

24:                                               ; preds = %19
  %25 = load %struct.file*, %struct.file** %6, align 8
  %26 = load i32, i32* @DIOCGSECTORSIZE, align 4
  %27 = ptrtoint i32* %8 to i32
  %28 = load %struct.thread*, %struct.thread** %4, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.thread*, %struct.thread** %4, align 8
  %32 = call i32 @fo_ioctl(%struct.file* %25, i32 %26, i32 %27, i32 %30, %struct.thread* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %24
  %36 = load %struct.file*, %struct.file** %6, align 8
  %37 = load i32, i32* @DIOCGMEDIASIZE, align 4
  %38 = ptrtoint i32* %9 to i32
  %39 = load %struct.thread*, %struct.thread** %4, align 8
  %40 = getelementptr inbounds %struct.thread, %struct.thread* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.thread*, %struct.thread** %4, align 8
  %43 = call i32 @fo_ioctl(%struct.file* %36, i32 %37, i32 %38, i32 %41, %struct.thread* %42)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %35, %24
  %45 = load %struct.file*, %struct.file** %6, align 8
  %46 = load %struct.thread*, %struct.thread** %4, align 8
  %47 = call i32 @fdrop(%struct.file* %45, %struct.thread* %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %88

52:                                               ; preds = %44
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* %8, align 4
  %56 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %57 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @copyout(i32* %8, i8* %59, i32 4)
  store i32 %60, i32* %3, align 4
  br label %88

61:                                               ; preds = %19
  %62 = load %struct.file*, %struct.file** %6, align 8
  %63 = load i32, i32* @DIOCGSECTORSIZE, align 4
  %64 = ptrtoint i32* %8 to i32
  %65 = load %struct.thread*, %struct.thread** %4, align 8
  %66 = getelementptr inbounds %struct.thread, %struct.thread* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.thread*, %struct.thread** %4, align 8
  %69 = call i32 @fo_ioctl(%struct.file* %62, i32 %63, i32 %64, i32 %67, %struct.thread* %68)
  store i32 %69, i32* %7, align 4
  %70 = load %struct.file*, %struct.file** %6, align 8
  %71 = load %struct.thread*, %struct.thread** %4, align 8
  %72 = call i32 @fdrop(%struct.file* %70, %struct.thread* %71)
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %61
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %88

77:                                               ; preds = %61
  %78 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %79 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 @copyout(i32* %8, i8* %81, i32 4)
  store i32 %82, i32* %3, align 4
  br label %88

83:                                               ; preds = %19
  %84 = load %struct.file*, %struct.file** %6, align 8
  %85 = load %struct.thread*, %struct.thread** %4, align 8
  %86 = call i32 @fdrop(%struct.file* %84, %struct.thread* %85)
  %87 = load i32, i32* @ENOIOCTL, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %83, %77, %75, %52, %50, %17
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @fo_ioctl(%struct.file*, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @copyout(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

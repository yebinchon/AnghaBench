; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/kld/cdev/module/extr_cdev.c_mydev_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/kld/cdev/module/extr_cdev.c_mydev_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"mydev_ioctl: dev_t=%lu, cmd=%lx, arg=%p, mode=%x procp=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"you called mydev_ioctl CDEV_IOCTL1\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"No such ioctl for me!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mydev_ioctl(%struct.cdev* %0, i32 %1, i32 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.proc*, align 8
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.thread*, %struct.thread** %10, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 0
  %15 = load %struct.proc*, %struct.proc** %14, align 8
  store %struct.proc* %15, %struct.proc** %12, align 8
  %16 = load %struct.cdev*, %struct.cdev** %6, align 8
  %17 = call i32 @dev2udev(%struct.cdev* %16)
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.proc*, %struct.proc** %12, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19, i32 %20, %struct.proc* %21)
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %26 [
    i32 128, label %24
  ]

24:                                               ; preds = %5
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %29

26:                                               ; preds = %5
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %26, %24
  %30 = load i32, i32* %11, align 4
  ret i32 %30
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dev2udev(%struct.cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

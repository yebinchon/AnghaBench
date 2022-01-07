; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_glue.c_ub_dev_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_glue.c_ub_dev_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_info = type { i32 }

@API_ENODEV = common dso_local global i32 0, align 4
@devices = common dso_local global %struct.device_info* null, align 8
@API_DEV_READ = common dso_local global i32 0, align 4
@API_ESYSC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_dev_recv(i32 %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.device_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @dev_net_valid(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @API_ENODEV, align 4
  store i32 %17, i32* %5, align 4
  br label %38

18:                                               ; preds = %4
  %19 = load %struct.device_info*, %struct.device_info** @devices, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.device_info, %struct.device_info* %19, i64 %21
  store %struct.device_info* %22, %struct.device_info** %10, align 8
  %23 = load i32, i32* @API_DEV_READ, align 4
  %24 = load %struct.device_info*, %struct.device_info** %10, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @syscall(i32 %23, i32* %11, %struct.device_info* %24, i8* %25, i32* %8, i32* %12)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* @API_ESYSC, align 4
  store i32 %29, i32* %5, align 4
  br label %38

30:                                               ; preds = %18
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %12, align 4
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %28, %16
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @dev_net_valid(i32) #1

declare dso_local i32 @syscall(i32, i32*, %struct.device_info*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_device.c___ibv_get_device_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_device.c___ibv_get_device_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_device = type { i32 }

@device_list_once = common dso_local global i32 0, align 4
@count_devices = common dso_local global i32 0, align 4
@num_devices = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@device_list = common dso_local global %struct.ibv_device** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_device** @__ibv_get_device_list(i32* %0) #0 {
  %2 = alloca %struct.ibv_device**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ibv_device**, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i32, i32* @count_devices, align 4
  %12 = call i32 @pthread_once(i32* @device_list_once, i32 %11)
  %13 = load i32, i32* @num_devices, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @num_devices, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* @errno, align 4
  store %struct.ibv_device** null, %struct.ibv_device*** %2, align 8
  br label %52

18:                                               ; preds = %10
  %19 = load i32, i32* @num_devices, align 4
  %20 = add nsw i32 %19, 1
  %21 = call %struct.ibv_device** @calloc(i32 %20, i32 8)
  store %struct.ibv_device** %21, %struct.ibv_device*** %4, align 8
  %22 = load %struct.ibv_device**, %struct.ibv_device*** %4, align 8
  %23 = icmp ne %struct.ibv_device** %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* @errno, align 4
  store %struct.ibv_device** null, %struct.ibv_device*** %2, align 8
  br label %52

26:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %41, %26
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @num_devices, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.ibv_device**, %struct.ibv_device*** @device_list, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %32, i64 %34
  %36 = load %struct.ibv_device*, %struct.ibv_device** %35, align 8
  %37 = load %struct.ibv_device**, %struct.ibv_device*** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %37, i64 %39
  store %struct.ibv_device* %36, %struct.ibv_device** %40, align 8
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %27

44:                                               ; preds = %27
  %45 = load i32*, i32** %3, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @num_devices, align 4
  %49 = load i32*, i32** %3, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.ibv_device**, %struct.ibv_device*** %4, align 8
  store %struct.ibv_device** %51, %struct.ibv_device*** %2, align 8
  br label %52

52:                                               ; preds = %50, %24, %15
  %53 = load %struct.ibv_device**, %struct.ibv_device*** %2, align 8
  ret %struct.ibv_device** %53
}

declare dso_local i32 @pthread_once(i32*, i32) #1

declare dso_local %struct.ibv_device** @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

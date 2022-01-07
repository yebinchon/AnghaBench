; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_open_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_open_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.ibv_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ibv_context* (i64)* @ucma_open_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ibv_context* @ucma_open_device(i64 %0) #0 {
  %2 = alloca %struct.ibv_context*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ibv_device**, align 8
  %5 = alloca %struct.ibv_context*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.ibv_context* null, %struct.ibv_context** %5, align 8
  %7 = call %struct.ibv_device** @ibv_get_device_list(i32* null)
  store %struct.ibv_device** %7, %struct.ibv_device*** %4, align 8
  %8 = load %struct.ibv_device**, %struct.ibv_device*** %4, align 8
  %9 = icmp ne %struct.ibv_device** %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.ibv_context* null, %struct.ibv_context** %2, align 8
  br label %43

11:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %36, %11
  %13 = load %struct.ibv_device**, %struct.ibv_device*** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %13, i64 %15
  %17 = load %struct.ibv_device*, %struct.ibv_device** %16, align 8
  %18 = icmp ne %struct.ibv_device* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %12
  %20 = load %struct.ibv_device**, %struct.ibv_device*** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %20, i64 %22
  %24 = load %struct.ibv_device*, %struct.ibv_device** %23, align 8
  %25 = call i64 @ibv_get_device_guid(%struct.ibv_device* %24)
  %26 = load i64, i64* %3, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.ibv_device**, %struct.ibv_device*** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %29, i64 %31
  %33 = load %struct.ibv_device*, %struct.ibv_device** %32, align 8
  %34 = call %struct.ibv_context* @ibv_open_device(%struct.ibv_device* %33)
  store %struct.ibv_context* %34, %struct.ibv_context** %5, align 8
  br label %39

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %12

39:                                               ; preds = %28, %12
  %40 = load %struct.ibv_device**, %struct.ibv_device*** %4, align 8
  %41 = call i32 @ibv_free_device_list(%struct.ibv_device** %40)
  %42 = load %struct.ibv_context*, %struct.ibv_context** %5, align 8
  store %struct.ibv_context* %42, %struct.ibv_context** %2, align 8
  br label %43

43:                                               ; preds = %39, %10
  %44 = load %struct.ibv_context*, %struct.ibv_context** %2, align 8
  ret %struct.ibv_context* %44
}

declare dso_local %struct.ibv_device** @ibv_get_device_list(i32*) #1

declare dso_local i64 @ibv_get_device_guid(%struct.ibv_device*) #1

declare dso_local %struct.ibv_context* @ibv_open_device(%struct.ibv_device*) #1

declare dso_local i32 @ibv_free_device_list(%struct.ibv_device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

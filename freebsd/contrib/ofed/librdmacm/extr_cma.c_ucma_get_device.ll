; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_get_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma_device = type { i64, i64, i32, i32 }
%struct.cma_id_private = type { %struct.TYPE_2__, %struct.cma_device* }
%struct.TYPE_2__ = type { i64, i32 }

@cma_dev_cnt = common dso_local global i32 0, align 4
@cma_dev_array = common dso_local global %struct.cma_device* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@mut = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cma_id_private*, i64)* @ucma_get_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_get_device(%struct.cma_id_private* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cma_id_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cma_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cma_id_private* %0, %struct.cma_id_private** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %25, %2
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @cma_dev_cnt, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load %struct.cma_device*, %struct.cma_device** @cma_dev_array, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %14, i64 %16
  store %struct.cma_device* %17, %struct.cma_device** %6, align 8
  %18 = load %struct.cma_device*, %struct.cma_device** %6, align 8
  %19 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %31

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %9

28:                                               ; preds = %9
  %29 = load i32, i32* @ENODEV, align 4
  %30 = call i32 @ERR(i32 %29)
  store i32 %30, i32* %3, align 4
  br label %81

31:                                               ; preds = %23
  %32 = call i32 @pthread_mutex_lock(i32* @mut)
  %33 = load %struct.cma_device*, %struct.cma_device** %6, align 8
  %34 = call i32 @ucma_init_device(%struct.cma_device* %33)
  store i32 %34, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %78

37:                                               ; preds = %31
  %38 = load %struct.cma_device*, %struct.cma_device** %6, align 8
  %39 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = icmp ne i32 %40, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %37
  %44 = load %struct.cma_device*, %struct.cma_device** %6, align 8
  %45 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @ibv_alloc_pd(i32 %46)
  %48 = load %struct.cma_device*, %struct.cma_device** %6, align 8
  %49 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.cma_device*, %struct.cma_device** %6, align 8
  %51 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %43
  %55 = load %struct.cma_device*, %struct.cma_device** %6, align 8
  %56 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = call i32 @ERR(i32 %59)
  store i32 %60, i32* %8, align 4
  br label %78

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %61, %37
  %63 = load %struct.cma_device*, %struct.cma_device** %6, align 8
  %64 = load %struct.cma_id_private*, %struct.cma_id_private** %4, align 8
  %65 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %64, i32 0, i32 1
  store %struct.cma_device* %63, %struct.cma_device** %65, align 8
  %66 = load %struct.cma_device*, %struct.cma_device** %6, align 8
  %67 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.cma_id_private*, %struct.cma_id_private** %4, align 8
  %70 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 8
  %72 = load %struct.cma_device*, %struct.cma_device** %6, align 8
  %73 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.cma_id_private*, %struct.cma_id_private** %4, align 8
  %76 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i64 %74, i64* %77, align 8
  br label %78

78:                                               ; preds = %62, %54, %36
  %79 = call i32 @pthread_mutex_unlock(i32* @mut)
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %28
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @ucma_init_device(%struct.cma_device*) #1

declare dso_local i64 @ibv_alloc_pd(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

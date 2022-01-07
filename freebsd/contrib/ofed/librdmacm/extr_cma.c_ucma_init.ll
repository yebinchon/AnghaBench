; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.ibv_device = type { i32 }

@cma_dev_cnt = common dso_local global i32 0, align 4
@mut = common dso_local global i32 0, align 4
@idm_lock = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@cma_dev_array = common dso_local global %struct.TYPE_3__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucma_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ibv_device**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ibv_device** null, %struct.ibv_device*** %2, align 8
  %6 = load i32, i32* @cma_dev_cnt, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %78

9:                                                ; preds = %0
  %10 = call i32 @pthread_mutex_lock(i32* @mut)
  %11 = load i32, i32* @cma_dev_cnt, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 @pthread_mutex_unlock(i32* @mut)
  store i32 0, i32* %1, align 4
  br label %78

15:                                               ; preds = %9
  %16 = call i32 @fastlock_init(i32* @idm_lock)
  %17 = call i32 (...) @check_abi_version()
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %74

21:                                               ; preds = %15
  %22 = call %struct.ibv_device** @ibv_get_device_list(i32* %5)
  store %struct.ibv_device** %22, %struct.ibv_device*** %2, align 8
  %23 = load %struct.ibv_device**, %struct.ibv_device*** %2, align 8
  %24 = icmp ne %struct.ibv_device** %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @ENODEV, align 4
  %27 = call i32 @ERR(i32 %26)
  store i32 %27, i32* %4, align 4
  br label %74

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @ENODEV, align 4
  %33 = call i32 @ERR(i32 %32)
  store i32 %33, i32* %4, align 4
  br label %71

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = call %struct.TYPE_3__* @calloc(i32 %35, i32 4)
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** @cma_dev_array, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cma_dev_array, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = call i32 @ERR(i32 %40)
  store i32 %41, i32* %4, align 4
  br label %71

42:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %62, %42
  %44 = load %struct.ibv_device**, %struct.ibv_device*** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %44, i64 %46
  %48 = load %struct.ibv_device*, %struct.ibv_device** %47, align 8
  %49 = icmp ne %struct.ibv_device* %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  %51 = load %struct.ibv_device**, %struct.ibv_device*** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %51, i64 %53
  %55 = load %struct.ibv_device*, %struct.ibv_device** %54, align 8
  %56 = call i32 @ibv_get_device_guid(%struct.ibv_device* %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cma_dev_array, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %56, i32* %61, align 4
  br label %62

62:                                               ; preds = %50
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %43

65:                                               ; preds = %43
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* @cma_dev_cnt, align 4
  %67 = call i32 (...) @ucma_set_af_ib_support()
  %68 = call i32 @pthread_mutex_unlock(i32* @mut)
  %69 = load %struct.ibv_device**, %struct.ibv_device*** %2, align 8
  %70 = call i32 @ibv_free_device_list(%struct.ibv_device** %69)
  store i32 0, i32* %1, align 4
  br label %78

71:                                               ; preds = %39, %31
  %72 = load %struct.ibv_device**, %struct.ibv_device*** %2, align 8
  %73 = call i32 @ibv_free_device_list(%struct.ibv_device** %72)
  br label %74

74:                                               ; preds = %71, %25, %20
  %75 = call i32 @fastlock_destroy(i32* @idm_lock)
  %76 = call i32 @pthread_mutex_unlock(i32* @mut)
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %1, align 4
  br label %78

78:                                               ; preds = %74, %65, %13, %8
  %79 = load i32, i32* %1, align 4
  ret i32 %79
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @fastlock_init(i32*) #1

declare dso_local i32 @check_abi_version(...) #1

declare dso_local %struct.ibv_device** @ibv_get_device_list(i32*) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local %struct.TYPE_3__* @calloc(i32, i32) #1

declare dso_local i32 @ibv_get_device_guid(%struct.ibv_device*) #1

declare dso_local i32 @ucma_set_af_ib_support(...) #1

declare dso_local i32 @ibv_free_device_list(%struct.ibv_device**) #1

declare dso_local i32 @fastlock_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

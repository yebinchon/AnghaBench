; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.h_mlx5_spin_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.h_mlx5_spin_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_spinlock = type { i32, i32 }

@mlx5_single_threaded = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [137 x i8] c"*** ERROR: multithreading vilation ***\0AYou are running a multithreaded application but\0Ayou set MLX5_SINGLE_THREADED=1. Please unset it.\0A\00", align 1
@memory_order_acq_rel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_spinlock*)* @mlx5_spin_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_spin_lock(%struct.mlx5_spinlock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_spinlock*, align 8
  store %struct.mlx5_spinlock* %0, %struct.mlx5_spinlock** %3, align 8
  %4 = load i32, i32* @mlx5_single_threaded, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %struct.mlx5_spinlock*, %struct.mlx5_spinlock** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_spinlock, %struct.mlx5_spinlock* %7, i32 0, i32 1
  %9 = call i32 @pthread_spin_lock(i32* %8)
  store i32 %9, i32* %2, align 4
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.mlx5_spinlock*, %struct.mlx5_spinlock** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5_spinlock, %struct.mlx5_spinlock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 (...) @abort() #3
  unreachable

20:                                               ; preds = %10
  %21 = load %struct.mlx5_spinlock*, %struct.mlx5_spinlock** %3, align 8
  %22 = getelementptr inbounds %struct.mlx5_spinlock, %struct.mlx5_spinlock* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* @memory_order_acq_rel, align 4
  %24 = call i32 @atomic_thread_fence(i32 %23)
  br label %25

25:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %6
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @pthread_spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @atomic_thread_fence(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.h_mlx5_spin_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.h_mlx5_spin_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_spinlock = type { i64, i32 }

@mlx5_single_threaded = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_spinlock*)* @mlx5_spin_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_spin_unlock(%struct.mlx5_spinlock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_spinlock*, align 8
  store %struct.mlx5_spinlock* %0, %struct.mlx5_spinlock** %3, align 8
  %4 = load i32, i32* @mlx5_single_threaded, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %struct.mlx5_spinlock*, %struct.mlx5_spinlock** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_spinlock, %struct.mlx5_spinlock* %7, i32 0, i32 1
  %9 = call i32 @pthread_spin_unlock(i32* %8)
  store i32 %9, i32* %2, align 4
  br label %13

10:                                               ; preds = %1
  %11 = load %struct.mlx5_spinlock*, %struct.mlx5_spinlock** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5_spinlock, %struct.mlx5_spinlock* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %10, %6
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local i32 @pthread_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

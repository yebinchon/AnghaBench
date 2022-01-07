; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_qp.c_wq_overflow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_qp.c_wq_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_wq = type { i32, i32, i32 }
%struct.mlx4_cq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_wq*, i32, %struct.mlx4_cq*)* @wq_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wq_overflow(%struct.mlx4_wq* %0, i32 %1, %struct.mlx4_cq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_wq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_cq*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx4_wq* %0, %struct.mlx4_wq** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mlx4_cq* %2, %struct.mlx4_cq** %7, align 8
  %9 = load %struct.mlx4_wq*, %struct.mlx4_wq** %5, align 8
  %10 = getelementptr inbounds %struct.mlx4_wq, %struct.mlx4_wq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mlx4_wq*, %struct.mlx4_wq** %5, align 8
  %13 = getelementptr inbounds %struct.mlx4_wq, %struct.mlx4_wq* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sub i32 %11, %14
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add i32 %16, %17
  %19 = load %struct.mlx4_wq*, %struct.mlx4_wq** %5, align 8
  %20 = getelementptr inbounds %struct.mlx4_wq, %struct.mlx4_wq* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %46

24:                                               ; preds = %3
  %25 = load %struct.mlx4_cq*, %struct.mlx4_cq** %7, align 8
  %26 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %25, i32 0, i32 0
  %27 = call i32 @pthread_spin_lock(i32* %26)
  %28 = load %struct.mlx4_wq*, %struct.mlx4_wq** %5, align 8
  %29 = getelementptr inbounds %struct.mlx4_wq, %struct.mlx4_wq* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mlx4_wq*, %struct.mlx4_wq** %5, align 8
  %32 = getelementptr inbounds %struct.mlx4_wq, %struct.mlx4_wq* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub i32 %30, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.mlx4_cq*, %struct.mlx4_cq** %7, align 8
  %36 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %35, i32 0, i32 0
  %37 = call i32 @pthread_spin_unlock(i32* %36)
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %38, %39
  %41 = load %struct.mlx4_wq*, %struct.mlx4_wq** %5, align 8
  %42 = getelementptr inbounds %struct.mlx4_wq, %struct.mlx4_wq* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp uge i32 %40, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %24, %23
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @pthread_spin_lock(i32*) #1

declare dso_local i32 @pthread_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

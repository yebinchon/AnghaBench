; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_unlock_cqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_unlock_cqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i32, i32 }
%struct.mlx5_cq = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibv_qp*)* @mlx5_unlock_cqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_unlock_cqs(%struct.ibv_qp* %0) #0 {
  %2 = alloca %struct.ibv_qp*, align 8
  %3 = alloca %struct.mlx5_cq*, align 8
  %4 = alloca %struct.mlx5_cq*, align 8
  store %struct.ibv_qp* %0, %struct.ibv_qp** %2, align 8
  %5 = load %struct.ibv_qp*, %struct.ibv_qp** %2, align 8
  %6 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.mlx5_cq* @to_mcq(i32 %7)
  store %struct.mlx5_cq* %8, %struct.mlx5_cq** %3, align 8
  %9 = load %struct.ibv_qp*, %struct.ibv_qp** %2, align 8
  %10 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mlx5_cq* @to_mcq(i32 %11)
  store %struct.mlx5_cq* %12, %struct.mlx5_cq** %4, align 8
  %13 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %14 = icmp ne %struct.mlx5_cq* %13, null
  br i1 %14, label %15, label %50

15:                                               ; preds = %1
  %16 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %17 = icmp ne %struct.mlx5_cq* %16, null
  br i1 %17, label %18, label %50

18:                                               ; preds = %15
  %19 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %20 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %21 = icmp eq %struct.mlx5_cq* %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %23, i32 0, i32 1
  %25 = call i32 @mlx5_spin_unlock(i32* %24)
  br label %49

26:                                               ; preds = %18
  %27 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %36 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %35, i32 0, i32 1
  %37 = call i32 @mlx5_spin_unlock(i32* %36)
  %38 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %39 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %38, i32 0, i32 1
  %40 = call i32 @mlx5_spin_unlock(i32* %39)
  br label %48

41:                                               ; preds = %26
  %42 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %43 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %42, i32 0, i32 1
  %44 = call i32 @mlx5_spin_unlock(i32* %43)
  %45 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %46 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %45, i32 0, i32 1
  %47 = call i32 @mlx5_spin_unlock(i32* %46)
  br label %48

48:                                               ; preds = %41, %34
  br label %49

49:                                               ; preds = %48, %22
  br label %66

50:                                               ; preds = %15, %1
  %51 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %52 = icmp ne %struct.mlx5_cq* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %55 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %54, i32 0, i32 1
  %56 = call i32 @mlx5_spin_unlock(i32* %55)
  br label %65

57:                                               ; preds = %50
  %58 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %59 = icmp ne %struct.mlx5_cq* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %62 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %61, i32 0, i32 1
  %63 = call i32 @mlx5_spin_unlock(i32* %62)
  br label %64

64:                                               ; preds = %60, %57
  br label %65

65:                                               ; preds = %64, %53
  br label %66

66:                                               ; preds = %65, %49
  ret void
}

declare dso_local %struct.mlx5_cq* @to_mcq(i32) #1

declare dso_local i32 @mlx5_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_lock_cqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_lock_cqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i32, i32 }
%struct.mlx4_cq = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibv_qp*)* @mlx4_lock_cqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_lock_cqs(%struct.ibv_qp* %0) #0 {
  %2 = alloca %struct.ibv_qp*, align 8
  %3 = alloca %struct.mlx4_cq*, align 8
  %4 = alloca %struct.mlx4_cq*, align 8
  store %struct.ibv_qp* %0, %struct.ibv_qp** %2, align 8
  %5 = load %struct.ibv_qp*, %struct.ibv_qp** %2, align 8
  %6 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.mlx4_cq* @to_mcq(i32 %7)
  store %struct.mlx4_cq* %8, %struct.mlx4_cq** %3, align 8
  %9 = load %struct.ibv_qp*, %struct.ibv_qp** %2, align 8
  %10 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mlx4_cq* @to_mcq(i32 %11)
  store %struct.mlx4_cq* %12, %struct.mlx4_cq** %4, align 8
  %13 = load %struct.ibv_qp*, %struct.ibv_qp** %2, align 8
  %14 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.ibv_qp*, %struct.ibv_qp** %2, align 8
  %19 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.ibv_qp*, %struct.ibv_qp** %2, align 8
  %24 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %29 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %28, i32 0, i32 1
  %30 = call i32 @pthread_spin_lock(i32* %29)
  br label %41

31:                                               ; preds = %22
  %32 = load %struct.ibv_qp*, %struct.ibv_qp** %2, align 8
  %33 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %38 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %37, i32 0, i32 1
  %39 = call i32 @pthread_spin_lock(i32* %38)
  br label %40

40:                                               ; preds = %36, %31
  br label %41

41:                                               ; preds = %40, %27
  br label %74

42:                                               ; preds = %17
  %43 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %44 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %45 = icmp eq %struct.mlx4_cq* %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %48 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %47, i32 0, i32 1
  %49 = call i32 @pthread_spin_lock(i32* %48)
  br label %73

50:                                               ; preds = %42
  %51 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %52 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %55 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %60 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %59, i32 0, i32 1
  %61 = call i32 @pthread_spin_lock(i32* %60)
  %62 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %63 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %62, i32 0, i32 1
  %64 = call i32 @pthread_spin_lock(i32* %63)
  br label %72

65:                                               ; preds = %50
  %66 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %67 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %66, i32 0, i32 1
  %68 = call i32 @pthread_spin_lock(i32* %67)
  %69 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %70 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %69, i32 0, i32 1
  %71 = call i32 @pthread_spin_lock(i32* %70)
  br label %72

72:                                               ; preds = %65, %58
  br label %73

73:                                               ; preds = %72, %46
  br label %74

74:                                               ; preds = %73, %41
  ret void
}

declare dso_local %struct.mlx4_cq* @to_mcq(i32) #1

declare dso_local i32 @pthread_spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

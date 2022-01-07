; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c_mlx4_poll_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c_mlx4_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq = type { i32 }
%struct.ibv_wc = type { i32 }
%struct.mlx4_cq = type { i32 }
%struct.mlx4_qp = type { i32 }

@CQ_OK = common dso_local global i32 0, align 4
@CQ_POLL_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_poll_cq(%struct.ibv_cq* %0, i32 %1, %struct.ibv_wc* %2) #0 {
  %4 = alloca %struct.ibv_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibv_wc*, align 8
  %7 = alloca %struct.mlx4_cq*, align 8
  %8 = alloca %struct.mlx4_qp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ibv_cq* %0, %struct.ibv_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ibv_wc* %2, %struct.ibv_wc** %6, align 8
  %11 = load %struct.ibv_cq*, %struct.ibv_cq** %4, align 8
  %12 = call %struct.mlx4_cq* @to_mcq(%struct.ibv_cq* %11)
  store %struct.mlx4_cq* %12, %struct.mlx4_cq** %7, align 8
  store %struct.mlx4_qp* null, %struct.mlx4_qp** %8, align 8
  %13 = load i32, i32* @CQ_OK, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.mlx4_cq*, %struct.mlx4_cq** %7, align 8
  %15 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %14, i32 0, i32 0
  %16 = call i32 @pthread_spin_lock(i32* %15)
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %33, %3
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load %struct.mlx4_cq*, %struct.mlx4_cq** %7, align 8
  %23 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %23, i64 %25
  %27 = call i32 @mlx4_poll_one(%struct.mlx4_cq* %22, %struct.mlx4_qp** %8, %struct.ibv_wc* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @CQ_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %36

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %17

36:                                               ; preds = %31, %17
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @CQ_POLL_ERR, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %36
  %44 = load %struct.mlx4_cq*, %struct.mlx4_cq** %7, align 8
  %45 = call i32 @mlx4_update_cons_index(%struct.mlx4_cq* %44)
  br label %46

46:                                               ; preds = %43, %39
  %47 = load %struct.mlx4_cq*, %struct.mlx4_cq** %7, align 8
  %48 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %47, i32 0, i32 0
  %49 = call i32 @pthread_spin_unlock(i32* %48)
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @CQ_POLL_ERR, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %10, align 4
  br label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %9, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  ret i32 %58
}

declare dso_local %struct.mlx4_cq* @to_mcq(%struct.ibv_cq*) #1

declare dso_local i32 @pthread_spin_lock(i32*) #1

declare dso_local i32 @mlx4_poll_one(%struct.mlx4_cq*, %struct.mlx4_qp**, %struct.ibv_wc*) #1

declare dso_local i32 @mlx4_update_cons_index(%struct.mlx4_cq*) #1

declare dso_local i32 @pthread_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

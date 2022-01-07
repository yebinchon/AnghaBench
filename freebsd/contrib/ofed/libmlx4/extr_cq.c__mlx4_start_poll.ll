; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c__mlx4_start_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c__mlx4_start_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq_ex = type { i32 }
%struct.ibv_poll_cq_attr = type { i32 }
%struct.mlx4_cq = type { i32, i32* }
%struct.mlx4_cqe = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CQ_EMPTY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_cq_ex*, %struct.ibv_poll_cq_attr*, i32)* @_mlx4_start_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mlx4_start_poll(%struct.ibv_cq_ex* %0, %struct.ibv_poll_cq_attr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibv_cq_ex*, align 8
  %6 = alloca %struct.ibv_poll_cq_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_cq*, align 8
  %9 = alloca %struct.mlx4_cqe*, align 8
  %10 = alloca i32, align 4
  store %struct.ibv_cq_ex* %0, %struct.ibv_cq_ex** %5, align 8
  store %struct.ibv_poll_cq_attr* %1, %struct.ibv_poll_cq_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ibv_cq_ex*, %struct.ibv_cq_ex** %5, align 8
  %12 = call i32 @ibv_cq_ex_to_cq(%struct.ibv_cq_ex* %11)
  %13 = call %struct.mlx4_cq* @to_mcq(i32 %12)
  store %struct.mlx4_cq* %13, %struct.mlx4_cq** %8, align 8
  %14 = load %struct.ibv_poll_cq_attr*, %struct.ibv_poll_cq_attr** %6, align 8
  %15 = getelementptr inbounds %struct.ibv_poll_cq_attr, %struct.ibv_poll_cq_attr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %60

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %26 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %25, i32 0, i32 0
  %27 = call i32 @pthread_spin_lock(i32* %26)
  br label %28

28:                                               ; preds = %24, %21
  %29 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %30 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %32 = call i32 @mlx4_get_next_cqe(%struct.mlx4_cq* %31, %struct.mlx4_cqe** %9)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @CQ_EMPTY, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %41 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %40, i32 0, i32 0
  %42 = call i32 @pthread_spin_unlock(i32* %41)
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* @ENOENT, align 4
  store i32 %44, i32* %4, align 4
  br label %60

45:                                               ; preds = %28
  %46 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %47 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %9, align 8
  %48 = call i32 @mlx4_parse_lazy_cqe(%struct.mlx4_cq* %46, %struct.mlx4_cqe* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %56 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %55, i32 0, i32 0
  %57 = call i32 @pthread_spin_unlock(i32* %56)
  br label %58

58:                                               ; preds = %54, %51, %45
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %43, %19
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.mlx4_cq* @to_mcq(i32) #1

declare dso_local i32 @ibv_cq_ex_to_cq(%struct.ibv_cq_ex*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pthread_spin_lock(i32*) #1

declare dso_local i32 @mlx4_get_next_cqe(%struct.mlx4_cq*, %struct.mlx4_cqe**) #1

declare dso_local i32 @pthread_spin_unlock(i32*) #1

declare dso_local i32 @mlx4_parse_lazy_cqe(%struct.mlx4_cq*, %struct.mlx4_cqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

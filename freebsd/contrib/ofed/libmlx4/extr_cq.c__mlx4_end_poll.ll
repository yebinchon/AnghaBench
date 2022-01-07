; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c__mlx4_end_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c__mlx4_end_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq_ex = type { i32 }
%struct.mlx4_cq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibv_cq_ex*, i32)* @_mlx4_end_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mlx4_end_poll(%struct.ibv_cq_ex* %0, i32 %1) #0 {
  %3 = alloca %struct.ibv_cq_ex*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_cq*, align 8
  store %struct.ibv_cq_ex* %0, %struct.ibv_cq_ex** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ibv_cq_ex*, %struct.ibv_cq_ex** %3, align 8
  %7 = call i32 @ibv_cq_ex_to_cq(%struct.ibv_cq_ex* %6)
  %8 = call %struct.mlx4_cq* @to_mcq(i32 %7)
  store %struct.mlx4_cq* %8, %struct.mlx4_cq** %5, align 8
  %9 = load %struct.mlx4_cq*, %struct.mlx4_cq** %5, align 8
  %10 = call i32 @mlx4_update_cons_index(%struct.mlx4_cq* %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.mlx4_cq*, %struct.mlx4_cq** %5, align 8
  %15 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %14, i32 0, i32 0
  %16 = call i32 @pthread_spin_unlock(i32* %15)
  br label %17

17:                                               ; preds = %13, %2
  ret void
}

declare dso_local %struct.mlx4_cq* @to_mcq(i32) #1

declare dso_local i32 @ibv_cq_ex_to_cq(%struct.ibv_cq_ex*) #1

declare dso_local i32 @mlx4_update_cons_index(%struct.mlx4_cq*) #1

declare dso_local i32 @pthread_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_verbs.c_c4iw_attach_mcast.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_verbs.c_c4iw_attach_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i32 }
%union.ibv_gid = type { i32 }
%struct.c4iw_qp = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c4iw_attach_mcast(%struct.ibv_qp* %0, %union.ibv_gid* %1, i32 %2) #0 {
  %4 = alloca %struct.ibv_qp*, align 8
  %5 = alloca %union.ibv_gid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.c4iw_qp*, align 8
  %8 = alloca i32, align 4
  store %struct.ibv_qp* %0, %struct.ibv_qp** %4, align 8
  store %union.ibv_gid* %1, %union.ibv_gid** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ibv_qp*, %struct.ibv_qp** %4, align 8
  %10 = call %struct.c4iw_qp* @to_c4iw_qp(%struct.ibv_qp* %9)
  store %struct.c4iw_qp* %10, %struct.c4iw_qp** %7, align 8
  %11 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %12 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %11, i32 0, i32 0
  %13 = call i32 @pthread_spin_lock(i32* %12)
  %14 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %15 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %14, i32 0, i32 1
  %16 = call i64 @t4_wq_in_error(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %20 = call i32 @c4iw_flush_qp(%struct.c4iw_qp* %19)
  br label %21

21:                                               ; preds = %18, %3
  %22 = load %struct.ibv_qp*, %struct.ibv_qp** %4, align 8
  %23 = load %union.ibv_gid*, %union.ibv_gid** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @ibv_cmd_attach_mcast(%struct.ibv_qp* %22, %union.ibv_gid* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %27 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %26, i32 0, i32 0
  %28 = call i32 @pthread_spin_unlock(i32* %27)
  %29 = load i32, i32* %8, align 4
  ret i32 %29
}

declare dso_local %struct.c4iw_qp* @to_c4iw_qp(%struct.ibv_qp*) #1

declare dso_local i32 @pthread_spin_lock(i32*) #1

declare dso_local i64 @t4_wq_in_error(i32*) #1

declare dso_local i32 @c4iw_flush_qp(%struct.c4iw_qp*) #1

declare dso_local i32 @ibv_cmd_attach_mcast(%struct.ibv_qp*, %union.ibv_gid*, i32) #1

declare dso_local i32 @pthread_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

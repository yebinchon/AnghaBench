; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_verbs.c_c4iw_query_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_verbs.c_c4iw_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i32 }
%struct.ibv_qp_attr = type { i32 }
%struct.ibv_qp_init_attr = type { i32 }
%struct.ibv_query_qp = type { i32 }
%struct.c4iw_qp = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c4iw_query_qp(%struct.ibv_qp* %0, %struct.ibv_qp_attr* %1, i32 %2, %struct.ibv_qp_init_attr* %3) #0 {
  %5 = alloca %struct.ibv_qp*, align 8
  %6 = alloca %struct.ibv_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ibv_qp_init_attr*, align 8
  %9 = alloca %struct.ibv_query_qp, align 4
  %10 = alloca %struct.c4iw_qp*, align 8
  %11 = alloca i32, align 4
  store %struct.ibv_qp* %0, %struct.ibv_qp** %5, align 8
  store %struct.ibv_qp_attr* %1, %struct.ibv_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ibv_qp_init_attr* %3, %struct.ibv_qp_init_attr** %8, align 8
  %12 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %13 = call %struct.c4iw_qp* @to_c4iw_qp(%struct.ibv_qp* %12)
  store %struct.c4iw_qp* %13, %struct.c4iw_qp** %10, align 8
  %14 = load %struct.c4iw_qp*, %struct.c4iw_qp** %10, align 8
  %15 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %14, i32 0, i32 0
  %16 = call i32 @pthread_spin_lock(i32* %15)
  %17 = load %struct.c4iw_qp*, %struct.c4iw_qp** %10, align 8
  %18 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %17, i32 0, i32 1
  %19 = call i64 @t4_wq_in_error(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load %struct.c4iw_qp*, %struct.c4iw_qp** %10, align 8
  %23 = call i32 @c4iw_flush_qp(%struct.c4iw_qp* %22)
  br label %24

24:                                               ; preds = %21, %4
  %25 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %26 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %8, align 8
  %29 = call i32 @ibv_cmd_query_qp(%struct.ibv_qp* %25, %struct.ibv_qp_attr* %26, i32 %27, %struct.ibv_qp_init_attr* %28, %struct.ibv_query_qp* %9, i32 4)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.c4iw_qp*, %struct.c4iw_qp** %10, align 8
  %31 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %30, i32 0, i32 0
  %32 = call i32 @pthread_spin_unlock(i32* %31)
  %33 = load i32, i32* %11, align 4
  ret i32 %33
}

declare dso_local %struct.c4iw_qp* @to_c4iw_qp(%struct.ibv_qp*) #1

declare dso_local i32 @pthread_spin_lock(i32*) #1

declare dso_local i64 @t4_wq_in_error(i32*) #1

declare dso_local i32 @c4iw_flush_qp(%struct.c4iw_qp*) #1

declare dso_local i32 @ibv_cmd_query_qp(%struct.ibv_qp*, %struct.ibv_qp_attr*, i32, %struct.ibv_qp_init_attr*, %struct.ibv_query_qp*, i32) #1

declare dso_local i32 @pthread_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

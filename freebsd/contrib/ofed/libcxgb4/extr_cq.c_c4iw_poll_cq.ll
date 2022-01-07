; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_cq.c_c4iw_poll_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_cq.c_c4iw_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq = type { i32 }
%struct.ibv_wc = type { i32 }
%struct.c4iw_cq = type { i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c4iw_poll_cq(%struct.ibv_cq* %0, i32 %1, %struct.ibv_wc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibv_cq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ibv_wc*, align 8
  %8 = alloca %struct.c4iw_cq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ibv_cq* %0, %struct.ibv_cq** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ibv_wc* %2, %struct.ibv_wc** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.ibv_cq*, %struct.ibv_cq** %5, align 8
  %12 = call %struct.c4iw_cq* @to_c4iw_cq(%struct.ibv_cq* %11)
  store %struct.c4iw_cq* %12, %struct.c4iw_cq** %8, align 8
  %13 = load %struct.c4iw_cq*, %struct.c4iw_cq** %8, align 8
  %14 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %13, i32 0, i32 1
  %15 = call i64 @t4_cq_in_error(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.c4iw_cq*, %struct.c4iw_cq** %8, align 8
  %19 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %18, i32 0, i32 1
  %20 = call i32 @t4_reset_cq_in_error(i32* %19)
  %21 = load %struct.c4iw_cq*, %struct.c4iw_cq** %8, align 8
  %22 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @c4iw_flush_qps(i32 %23)
  br label %25

25:                                               ; preds = %17, %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load %struct.c4iw_cq*, %struct.c4iw_cq** %8, align 8
  %30 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %29, i32 0, i32 1
  %31 = call i32 @t4_cq_notempty(i32* %30)
  store i32 %31, i32* %4, align 4
  br label %78

32:                                               ; preds = %25
  %33 = load %struct.c4iw_cq*, %struct.c4iw_cq** %8, align 8
  %34 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %33, i32 0, i32 0
  %35 = call i32 @pthread_spin_lock(i32* %34)
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %58, %32
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %48, %40
  %42 = load %struct.c4iw_cq*, %struct.c4iw_cq** %8, align 8
  %43 = load %struct.ibv_wc*, %struct.ibv_wc** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %43, i64 %45
  %47 = call i32 @c4iw_poll_cq_one(%struct.c4iw_cq* %42, %struct.ibv_wc* %46)
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @EAGAIN, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %41, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %61

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %36

61:                                               ; preds = %56, %36
  %62 = load %struct.c4iw_cq*, %struct.c4iw_cq** %8, align 8
  %63 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %62, i32 0, i32 0
  %64 = call i32 @pthread_spin_unlock(i32* %63)
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @ENODATA, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67, %61
  %73 = load i32, i32* %9, align 4
  br label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %10, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %28
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.c4iw_cq* @to_c4iw_cq(%struct.ibv_cq*) #1

declare dso_local i64 @t4_cq_in_error(i32*) #1

declare dso_local i32 @t4_reset_cq_in_error(i32*) #1

declare dso_local i32 @c4iw_flush_qps(i32) #1

declare dso_local i32 @t4_cq_notempty(i32*) #1

declare dso_local i32 @pthread_spin_lock(i32*) #1

declare dso_local i32 @c4iw_poll_cq_one(%struct.c4iw_cq*, %struct.ibv_wc*) #1

declare dso_local i32 @pthread_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

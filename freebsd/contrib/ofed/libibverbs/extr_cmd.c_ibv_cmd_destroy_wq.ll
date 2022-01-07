; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_destroy_wq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_destroy_wq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_wq = type { i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ibv_destroy_wq = type { i32, i64, i32 }
%struct.ibv_destroy_wq_resp = type { i32, i64, i32 }

@DESTROY_WQ = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_destroy_wq(%struct.ibv_wq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibv_wq*, align 8
  %4 = alloca %struct.ibv_destroy_wq, align 8
  %5 = alloca %struct.ibv_destroy_wq_resp, align 8
  %6 = alloca i32, align 4
  store %struct.ibv_wq* %0, %struct.ibv_wq** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = bitcast %struct.ibv_destroy_wq* %4 to %struct.ibv_destroy_wq_resp*
  %8 = call i32 @memset(%struct.ibv_destroy_wq_resp* %7, i32 0, i32 24)
  %9 = call i32 @memset(%struct.ibv_destroy_wq_resp* %5, i32 0, i32 24)
  %10 = bitcast %struct.ibv_destroy_wq* %4 to %struct.ibv_destroy_wq_resp*
  %11 = load i32, i32* @DESTROY_WQ, align 4
  %12 = call i32 @IBV_INIT_CMD_RESP_EX(%struct.ibv_destroy_wq_resp* %10, i32 24, i32 %11, %struct.ibv_destroy_wq_resp* %5, i32 24)
  %13 = load %struct.ibv_wq*, %struct.ibv_wq** %3, align 8
  %14 = getelementptr inbounds %struct.ibv_wq, %struct.ibv_wq* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.ibv_destroy_wq, %struct.ibv_destroy_wq* %4, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  %17 = load %struct.ibv_wq*, %struct.ibv_wq** %3, align 8
  %18 = getelementptr inbounds %struct.ibv_wq, %struct.ibv_wq* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = bitcast %struct.ibv_destroy_wq* %4 to %struct.ibv_destroy_wq_resp*
  %23 = call i32 @write(i32 %21, %struct.ibv_destroy_wq_resp* %22, i32 24)
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 24
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @errno, align 4
  store i32 %27, i32* %2, align 4
  br label %57

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.ibv_destroy_wq_resp, %struct.ibv_destroy_wq_resp* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %31, 24
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %2, align 4
  br label %57

35:                                               ; preds = %28
  %36 = load %struct.ibv_wq*, %struct.ibv_wq** %3, align 8
  %37 = getelementptr inbounds %struct.ibv_wq, %struct.ibv_wq* %36, i32 0, i32 1
  %38 = call i32 @pthread_mutex_lock(i32* %37)
  br label %39

39:                                               ; preds = %46, %35
  %40 = load %struct.ibv_wq*, %struct.ibv_wq** %3, align 8
  %41 = getelementptr inbounds %struct.ibv_wq, %struct.ibv_wq* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.ibv_destroy_wq_resp, %struct.ibv_destroy_wq_resp* %5, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %42, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load %struct.ibv_wq*, %struct.ibv_wq** %3, align 8
  %48 = getelementptr inbounds %struct.ibv_wq, %struct.ibv_wq* %47, i32 0, i32 2
  %49 = load %struct.ibv_wq*, %struct.ibv_wq** %3, align 8
  %50 = getelementptr inbounds %struct.ibv_wq, %struct.ibv_wq* %49, i32 0, i32 1
  %51 = call i32 @pthread_cond_wait(i32* %48, i32* %50)
  br label %39

52:                                               ; preds = %39
  %53 = load %struct.ibv_wq*, %struct.ibv_wq** %3, align 8
  %54 = getelementptr inbounds %struct.ibv_wq, %struct.ibv_wq* %53, i32 0, i32 1
  %55 = call i32 @pthread_mutex_unlock(i32* %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %52, %33, %26
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @memset(%struct.ibv_destroy_wq_resp*, i32, i32) #1

declare dso_local i32 @IBV_INIT_CMD_RESP_EX(%struct.ibv_destroy_wq_resp*, i32, i32, %struct.ibv_destroy_wq_resp*, i32) #1

declare dso_local i32 @write(i32, %struct.ibv_destroy_wq_resp*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

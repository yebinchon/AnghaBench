; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ibv_destroy_qp = type { i64, i32 }
%struct.ibv_destroy_qp_resp = type { i64 }

@DESTROY_QP = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_destroy_qp(%struct.ibv_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibv_qp*, align 8
  %4 = alloca %struct.ibv_destroy_qp, align 8
  %5 = alloca %struct.ibv_destroy_qp_resp, align 8
  store %struct.ibv_qp* %0, %struct.ibv_qp** %3, align 8
  %6 = load i32, i32* @DESTROY_QP, align 4
  %7 = call i32 @IBV_INIT_CMD_RESP(%struct.ibv_destroy_qp* %4, i32 16, i32 %6, %struct.ibv_destroy_qp_resp* %5, i32 8)
  %8 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %9 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %struct.ibv_destroy_qp, %struct.ibv_destroy_qp* %4, i32 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.ibv_destroy_qp, %struct.ibv_destroy_qp* %4, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %14 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @write(i32 %17, %struct.ibv_destroy_qp* %4, i32 16)
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 16
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @errno, align 4
  store i32 %22, i32* %2, align 4
  br label %45

23:                                               ; preds = %1
  %24 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_destroy_qp_resp* %5, i32 8)
  %25 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %26 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %25, i32 0, i32 1
  %27 = call i32 @pthread_mutex_lock(i32* %26)
  br label %28

28:                                               ; preds = %35, %23
  %29 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %30 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.ibv_destroy_qp_resp, %struct.ibv_destroy_qp_resp* %5, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %31, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %37 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %36, i32 0, i32 2
  %38 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %39 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %38, i32 0, i32 1
  %40 = call i32 @pthread_cond_wait(i32* %37, i32* %39)
  br label %28

41:                                               ; preds = %28
  %42 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %43 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %42, i32 0, i32 1
  %44 = call i32 @pthread_mutex_unlock(i32* %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %21
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @IBV_INIT_CMD_RESP(%struct.ibv_destroy_qp*, i32, i32, %struct.ibv_destroy_qp_resp*, i32) #1

declare dso_local i32 @write(i32, %struct.ibv_destroy_qp*, i32) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_destroy_qp_resp*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

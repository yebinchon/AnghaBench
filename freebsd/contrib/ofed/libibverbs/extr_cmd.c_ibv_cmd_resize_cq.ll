; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_resize_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_resize_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ibv_resize_cq = type { i32, i32 }
%struct.ibv_resize_cq_resp = type { i32 }

@RESIZE_CQ = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_resize_cq(%struct.ibv_cq* %0, i32 %1, %struct.ibv_resize_cq* %2, i64 %3, %struct.ibv_resize_cq_resp* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ibv_cq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ibv_resize_cq*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ibv_resize_cq_resp*, align 8
  %13 = alloca i64, align 8
  store %struct.ibv_cq* %0, %struct.ibv_cq** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.ibv_resize_cq* %2, %struct.ibv_resize_cq** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.ibv_resize_cq_resp* %4, %struct.ibv_resize_cq_resp** %12, align 8
  store i64 %5, i64* %13, align 8
  %14 = load %struct.ibv_resize_cq*, %struct.ibv_resize_cq** %10, align 8
  %15 = load i64, i64* %11, align 8
  %16 = load i32, i32* @RESIZE_CQ, align 4
  %17 = load %struct.ibv_resize_cq_resp*, %struct.ibv_resize_cq_resp** %12, align 8
  %18 = load i64, i64* %13, align 8
  %19 = call i32 @IBV_INIT_CMD_RESP(%struct.ibv_resize_cq* %14, i64 %15, i32 %16, %struct.ibv_resize_cq_resp* %17, i64 %18)
  %20 = load %struct.ibv_cq*, %struct.ibv_cq** %8, align 8
  %21 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ibv_resize_cq*, %struct.ibv_resize_cq** %10, align 8
  %24 = getelementptr inbounds %struct.ibv_resize_cq, %struct.ibv_resize_cq* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.ibv_resize_cq*, %struct.ibv_resize_cq** %10, align 8
  %27 = getelementptr inbounds %struct.ibv_resize_cq, %struct.ibv_resize_cq* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ibv_cq*, %struct.ibv_cq** %8, align 8
  %29 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ibv_resize_cq*, %struct.ibv_resize_cq** %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i64 @write(i32 %32, %struct.ibv_resize_cq* %33, i64 %34)
  %36 = load i64, i64* %11, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %6
  %39 = load i32, i32* @errno, align 4
  store i32 %39, i32* %7, align 4
  br label %49

40:                                               ; preds = %6
  %41 = load %struct.ibv_resize_cq_resp*, %struct.ibv_resize_cq_resp** %12, align 8
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_resize_cq_resp* %41, i64 %42)
  %44 = load %struct.ibv_resize_cq_resp*, %struct.ibv_resize_cq_resp** %12, align 8
  %45 = getelementptr inbounds %struct.ibv_resize_cq_resp, %struct.ibv_resize_cq_resp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ibv_cq*, %struct.ibv_cq** %8, align 8
  %48 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %40, %38
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @IBV_INIT_CMD_RESP(%struct.ibv_resize_cq*, i64, i32, %struct.ibv_resize_cq_resp*, i64) #1

declare dso_local i64 @write(i32, %struct.ibv_resize_cq*, i64) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_resize_cq_resp*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

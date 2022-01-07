; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_alloc_pd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_alloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.ibv_pd = type { %struct.ibv_context*, i32 }
%struct.ibv_alloc_pd = type { i32 }
%struct.ibv_alloc_pd_resp = type { i32 }

@ALLOC_PD = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_alloc_pd(%struct.ibv_context* %0, %struct.ibv_pd* %1, %struct.ibv_alloc_pd* %2, i64 %3, %struct.ibv_alloc_pd_resp* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ibv_context*, align 8
  %9 = alloca %struct.ibv_pd*, align 8
  %10 = alloca %struct.ibv_alloc_pd*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ibv_alloc_pd_resp*, align 8
  %13 = alloca i64, align 8
  store %struct.ibv_context* %0, %struct.ibv_context** %8, align 8
  store %struct.ibv_pd* %1, %struct.ibv_pd** %9, align 8
  store %struct.ibv_alloc_pd* %2, %struct.ibv_alloc_pd** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.ibv_alloc_pd_resp* %4, %struct.ibv_alloc_pd_resp** %12, align 8
  store i64 %5, i64* %13, align 8
  %14 = load %struct.ibv_alloc_pd*, %struct.ibv_alloc_pd** %10, align 8
  %15 = load i64, i64* %11, align 8
  %16 = load i32, i32* @ALLOC_PD, align 4
  %17 = load %struct.ibv_alloc_pd_resp*, %struct.ibv_alloc_pd_resp** %12, align 8
  %18 = load i64, i64* %13, align 8
  %19 = call i32 @IBV_INIT_CMD_RESP(%struct.ibv_alloc_pd* %14, i64 %15, i32 %16, %struct.ibv_alloc_pd_resp* %17, i64 %18)
  %20 = load %struct.ibv_context*, %struct.ibv_context** %8, align 8
  %21 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ibv_alloc_pd*, %struct.ibv_alloc_pd** %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i64 @write(i32 %22, %struct.ibv_alloc_pd* %23, i64 %24)
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* @errno, align 4
  store i32 %29, i32* %7, align 4
  br label %42

30:                                               ; preds = %6
  %31 = load %struct.ibv_alloc_pd_resp*, %struct.ibv_alloc_pd_resp** %12, align 8
  %32 = load i64, i64* %13, align 8
  %33 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_alloc_pd_resp* %31, i64 %32)
  %34 = load %struct.ibv_alloc_pd_resp*, %struct.ibv_alloc_pd_resp** %12, align 8
  %35 = getelementptr inbounds %struct.ibv_alloc_pd_resp, %struct.ibv_alloc_pd_resp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ibv_pd*, %struct.ibv_pd** %9, align 8
  %38 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ibv_context*, %struct.ibv_context** %8, align 8
  %40 = load %struct.ibv_pd*, %struct.ibv_pd** %9, align 8
  %41 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %40, i32 0, i32 0
  store %struct.ibv_context* %39, %struct.ibv_context** %41, align 8
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %30, %28
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @IBV_INIT_CMD_RESP(%struct.ibv_alloc_pd*, i64, i32, %struct.ibv_alloc_pd_resp*, i64) #1

declare dso_local i64 @write(i32, %struct.ibv_alloc_pd*, i64) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_alloc_pd_resp*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

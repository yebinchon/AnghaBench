; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_get_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_get_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32, i32, i32 }
%struct.ibv_get_context = type { i32 }
%struct.ibv_get_context_resp = type { i32, i32 }

@abi_ver = common dso_local global i64 0, align 8
@IB_USER_VERBS_MIN_ABI_VERSION = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@GET_CONTEXT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_get_context(%struct.ibv_context* %0, %struct.ibv_get_context* %1, i64 %2, %struct.ibv_get_context_resp* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ibv_context*, align 8
  %8 = alloca %struct.ibv_get_context*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ibv_get_context_resp*, align 8
  %11 = alloca i64, align 8
  store %struct.ibv_context* %0, %struct.ibv_context** %7, align 8
  store %struct.ibv_get_context* %1, %struct.ibv_get_context** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.ibv_get_context_resp* %3, %struct.ibv_get_context_resp** %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load i64, i64* @abi_ver, align 8
  %13 = load i64, i64* @IB_USER_VERBS_MIN_ABI_VERSION, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load i32, i32* @ENOSYS, align 4
  store i32 %16, i32* %6, align 4
  br label %48

17:                                               ; preds = %5
  %18 = load %struct.ibv_get_context*, %struct.ibv_get_context** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i32, i32* @GET_CONTEXT, align 4
  %21 = load %struct.ibv_get_context_resp*, %struct.ibv_get_context_resp** %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @IBV_INIT_CMD_RESP(%struct.ibv_get_context* %18, i64 %19, i32 %20, %struct.ibv_get_context_resp* %21, i64 %22)
  %24 = load %struct.ibv_context*, %struct.ibv_context** %7, align 8
  %25 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ibv_get_context*, %struct.ibv_get_context** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @write(i32 %26, %struct.ibv_get_context* %27, i64 %28)
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load i32, i32* @errno, align 4
  store i32 %33, i32* %6, align 4
  br label %48

34:                                               ; preds = %17
  %35 = load %struct.ibv_get_context_resp*, %struct.ibv_get_context_resp** %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_get_context_resp* %35, i64 %36)
  %38 = load %struct.ibv_get_context_resp*, %struct.ibv_get_context_resp** %10, align 8
  %39 = getelementptr inbounds %struct.ibv_get_context_resp, %struct.ibv_get_context_resp* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ibv_context*, %struct.ibv_context** %7, align 8
  %42 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ibv_get_context_resp*, %struct.ibv_get_context_resp** %10, align 8
  %44 = getelementptr inbounds %struct.ibv_get_context_resp, %struct.ibv_get_context_resp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ibv_context*, %struct.ibv_context** %7, align 8
  %47 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %34, %32, %15
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @IBV_INIT_CMD_RESP(%struct.ibv_get_context*, i64, i32, %struct.ibv_get_context_resp*, i64) #1

declare dso_local i64 @write(i32, %struct.ibv_get_context*, i64) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_get_context_resp*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

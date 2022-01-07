; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_create_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.ibv_comp_channel = type { i32 }
%struct.ibv_cq = type { %struct.ibv_context*, i32, i32 }
%struct.ibv_create_cq = type { i64, i32, i32, i32, i64 }
%struct.ibv_create_cq_resp = type { i32, i32 }

@CREATE_CQ = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_create_cq(%struct.ibv_context* %0, i32 %1, %struct.ibv_comp_channel* %2, i32 %3, %struct.ibv_cq* %4, %struct.ibv_create_cq* %5, i64 %6, %struct.ibv_create_cq_resp* %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.ibv_context*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ibv_comp_channel*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ibv_cq*, align 8
  %16 = alloca %struct.ibv_create_cq*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.ibv_create_cq_resp*, align 8
  %19 = alloca i64, align 8
  store %struct.ibv_context* %0, %struct.ibv_context** %11, align 8
  store i32 %1, i32* %12, align 4
  store %struct.ibv_comp_channel* %2, %struct.ibv_comp_channel** %13, align 8
  store i32 %3, i32* %14, align 4
  store %struct.ibv_cq* %4, %struct.ibv_cq** %15, align 8
  store %struct.ibv_create_cq* %5, %struct.ibv_create_cq** %16, align 8
  store i64 %6, i64* %17, align 8
  store %struct.ibv_create_cq_resp* %7, %struct.ibv_create_cq_resp** %18, align 8
  store i64 %8, i64* %19, align 8
  %20 = load %struct.ibv_create_cq*, %struct.ibv_create_cq** %16, align 8
  %21 = load i64, i64* %17, align 8
  %22 = load i32, i32* @CREATE_CQ, align 4
  %23 = load %struct.ibv_create_cq_resp*, %struct.ibv_create_cq_resp** %18, align 8
  %24 = load i64, i64* %19, align 8
  %25 = call i32 @IBV_INIT_CMD_RESP(%struct.ibv_create_cq* %20, i64 %21, i32 %22, %struct.ibv_create_cq_resp* %23, i64 %24)
  %26 = load %struct.ibv_cq*, %struct.ibv_cq** %15, align 8
  %27 = ptrtoint %struct.ibv_cq* %26 to i64
  %28 = load %struct.ibv_create_cq*, %struct.ibv_create_cq** %16, align 8
  %29 = getelementptr inbounds %struct.ibv_create_cq, %struct.ibv_create_cq* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.ibv_create_cq*, %struct.ibv_create_cq** %16, align 8
  %32 = getelementptr inbounds %struct.ibv_create_cq, %struct.ibv_create_cq* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.ibv_create_cq*, %struct.ibv_create_cq** %16, align 8
  %35 = getelementptr inbounds %struct.ibv_create_cq, %struct.ibv_create_cq* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ibv_comp_channel*, %struct.ibv_comp_channel** %13, align 8
  %37 = icmp ne %struct.ibv_comp_channel* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %9
  %39 = load %struct.ibv_comp_channel*, %struct.ibv_comp_channel** %13, align 8
  %40 = getelementptr inbounds %struct.ibv_comp_channel, %struct.ibv_comp_channel* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  br label %43

42:                                               ; preds = %9
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i32 [ %41, %38 ], [ -1, %42 ]
  %45 = load %struct.ibv_create_cq*, %struct.ibv_create_cq** %16, align 8
  %46 = getelementptr inbounds %struct.ibv_create_cq, %struct.ibv_create_cq* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ibv_create_cq*, %struct.ibv_create_cq** %16, align 8
  %48 = getelementptr inbounds %struct.ibv_create_cq, %struct.ibv_create_cq* %47, i32 0, i32 4
  store i64 0, i64* %48, align 8
  %49 = load %struct.ibv_context*, %struct.ibv_context** %11, align 8
  %50 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ibv_create_cq*, %struct.ibv_create_cq** %16, align 8
  %53 = load i64, i64* %17, align 8
  %54 = call i64 @write(i32 %51, %struct.ibv_create_cq* %52, i64 %53)
  %55 = load i64, i64* %17, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = load i32, i32* @errno, align 4
  store i32 %58, i32* %10, align 4
  br label %76

59:                                               ; preds = %43
  %60 = load %struct.ibv_create_cq_resp*, %struct.ibv_create_cq_resp** %18, align 8
  %61 = load i64, i64* %19, align 8
  %62 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_create_cq_resp* %60, i64 %61)
  %63 = load %struct.ibv_create_cq_resp*, %struct.ibv_create_cq_resp** %18, align 8
  %64 = getelementptr inbounds %struct.ibv_create_cq_resp, %struct.ibv_create_cq_resp* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ibv_cq*, %struct.ibv_cq** %15, align 8
  %67 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ibv_create_cq_resp*, %struct.ibv_create_cq_resp** %18, align 8
  %69 = getelementptr inbounds %struct.ibv_create_cq_resp, %struct.ibv_create_cq_resp* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ibv_cq*, %struct.ibv_cq** %15, align 8
  %72 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ibv_context*, %struct.ibv_context** %11, align 8
  %74 = load %struct.ibv_cq*, %struct.ibv_cq** %15, align 8
  %75 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %74, i32 0, i32 0
  store %struct.ibv_context* %73, %struct.ibv_context** %75, align 8
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %59, %57
  %77 = load i32, i32* %10, align 4
  ret i32 %77
}

declare dso_local i32 @IBV_INIT_CMD_RESP(%struct.ibv_create_cq*, i64, i32, %struct.ibv_create_cq_resp*, i64) #1

declare dso_local i64 @write(i32, %struct.ibv_create_cq*, i64) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_create_cq_resp*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

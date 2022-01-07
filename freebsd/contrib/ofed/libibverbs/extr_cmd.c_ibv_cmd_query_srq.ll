; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_query_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_query_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_srq = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ibv_srq_attr = type { i32, i32, i32 }
%struct.ibv_query_srq = type { i64, i32 }
%struct.ibv_query_srq_resp = type { i32, i32, i32 }

@QUERY_SRQ = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_query_srq(%struct.ibv_srq* %0, %struct.ibv_srq_attr* %1, %struct.ibv_query_srq* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibv_srq*, align 8
  %7 = alloca %struct.ibv_srq_attr*, align 8
  %8 = alloca %struct.ibv_query_srq*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ibv_query_srq_resp, align 4
  store %struct.ibv_srq* %0, %struct.ibv_srq** %6, align 8
  store %struct.ibv_srq_attr* %1, %struct.ibv_srq_attr** %7, align 8
  store %struct.ibv_query_srq* %2, %struct.ibv_query_srq** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.ibv_query_srq*, %struct.ibv_query_srq** %8, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load i32, i32* @QUERY_SRQ, align 4
  %14 = call i32 @IBV_INIT_CMD_RESP(%struct.ibv_query_srq* %11, i64 %12, i32 %13, %struct.ibv_query_srq_resp* %10, i32 12)
  %15 = load %struct.ibv_srq*, %struct.ibv_srq** %6, align 8
  %16 = getelementptr inbounds %struct.ibv_srq, %struct.ibv_srq* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ibv_query_srq*, %struct.ibv_query_srq** %8, align 8
  %19 = getelementptr inbounds %struct.ibv_query_srq, %struct.ibv_query_srq* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ibv_query_srq*, %struct.ibv_query_srq** %8, align 8
  %21 = getelementptr inbounds %struct.ibv_query_srq, %struct.ibv_query_srq* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.ibv_srq*, %struct.ibv_srq** %6, align 8
  %23 = getelementptr inbounds %struct.ibv_srq, %struct.ibv_srq* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ibv_query_srq*, %struct.ibv_query_srq** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @write(i32 %26, %struct.ibv_query_srq* %27, i64 %28)
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* @errno, align 4
  store i32 %33, i32* %5, align 4
  br label %48

34:                                               ; preds = %4
  %35 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_query_srq_resp* %10, i32 12)
  %36 = getelementptr inbounds %struct.ibv_query_srq_resp, %struct.ibv_query_srq_resp* %10, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ibv_srq_attr*, %struct.ibv_srq_attr** %7, align 8
  %39 = getelementptr inbounds %struct.ibv_srq_attr, %struct.ibv_srq_attr* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = getelementptr inbounds %struct.ibv_query_srq_resp, %struct.ibv_query_srq_resp* %10, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ibv_srq_attr*, %struct.ibv_srq_attr** %7, align 8
  %43 = getelementptr inbounds %struct.ibv_srq_attr, %struct.ibv_srq_attr* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.ibv_query_srq_resp, %struct.ibv_query_srq_resp* %10, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ibv_srq_attr*, %struct.ibv_srq_attr** %7, align 8
  %47 = getelementptr inbounds %struct.ibv_srq_attr, %struct.ibv_srq_attr* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %34, %32
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @IBV_INIT_CMD_RESP(%struct.ibv_query_srq*, i64, i32, %struct.ibv_query_srq_resp*, i32) #1

declare dso_local i64 @write(i32, %struct.ibv_query_srq*, i64) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_query_srq_resp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

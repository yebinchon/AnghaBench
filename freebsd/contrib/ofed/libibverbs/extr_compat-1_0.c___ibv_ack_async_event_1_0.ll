; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_compat-1_0.c___ibv_ack_async_event_1_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_compat-1_0.c___ibv_ack_async_event_1_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_async_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.ibv_cq_1_0 = type { i64 }
%struct.ibv_qp_1_0 = type { i64 }
%struct.ibv_srq_1_0 = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ibv_ack_async_event_1_0(%struct.ibv_async_event* %0) #0 {
  %2 = alloca %struct.ibv_async_event*, align 8
  %3 = alloca %struct.ibv_async_event, align 8
  store %struct.ibv_async_event* %0, %struct.ibv_async_event** %2, align 8
  %4 = load %struct.ibv_async_event*, %struct.ibv_async_event** %2, align 8
  %5 = bitcast %struct.ibv_async_event* %3 to i8*
  %6 = bitcast %struct.ibv_async_event* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 32, i1 false)
  %7 = load %struct.ibv_async_event*, %struct.ibv_async_event** %2, align 8
  %8 = getelementptr inbounds %struct.ibv_async_event, %struct.ibv_async_event* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %40 [
    i32 137, label %10
    i32 133, label %20
    i32 131, label %20
    i32 134, label %20
    i32 138, label %20
    i32 130, label %20
    i32 136, label %20
    i32 135, label %20
    i32 132, label %20
    i32 129, label %30
    i32 128, label %30
  ]

10:                                               ; preds = %1
  %11 = load %struct.ibv_async_event*, %struct.ibv_async_event** %2, align 8
  %12 = getelementptr inbounds %struct.ibv_async_event, %struct.ibv_async_event* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ibv_cq_1_0*
  %16 = getelementptr inbounds %struct.ibv_cq_1_0, %struct.ibv_cq_1_0* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.ibv_async_event, %struct.ibv_async_event* %3, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  br label %41

20:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %21 = load %struct.ibv_async_event*, %struct.ibv_async_event** %2, align 8
  %22 = getelementptr inbounds %struct.ibv_async_event, %struct.ibv_async_event* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ibv_qp_1_0*
  %26 = getelementptr inbounds %struct.ibv_qp_1_0, %struct.ibv_qp_1_0* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.ibv_async_event, %struct.ibv_async_event* %3, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  br label %41

30:                                               ; preds = %1, %1
  %31 = load %struct.ibv_async_event*, %struct.ibv_async_event** %2, align 8
  %32 = getelementptr inbounds %struct.ibv_async_event, %struct.ibv_async_event* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.ibv_srq_1_0*
  %36 = getelementptr inbounds %struct.ibv_srq_1_0, %struct.ibv_srq_1_0* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.ibv_async_event, %struct.ibv_async_event* %3, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %41

40:                                               ; preds = %1
  br label %41

41:                                               ; preds = %40, %30, %20, %10
  %42 = call i32 @ibv_ack_async_event(%struct.ibv_async_event* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ibv_ack_async_event(%struct.ibv_async_event*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

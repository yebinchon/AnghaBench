; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_qp.c_build_rdma_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_qp.c_build_rdma_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_qp = type { i32 }
%union.t4_recv_wr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ibv_recv_wr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_qp*, %union.t4_recv_wr*, %struct.ibv_recv_wr*, i32*)* @build_rdma_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_rdma_recv(%struct.c4iw_qp* %0, %union.t4_recv_wr* %1, %struct.ibv_recv_wr* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.c4iw_qp*, align 8
  %7 = alloca %union.t4_recv_wr*, align 8
  %8 = alloca %struct.ibv_recv_wr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.c4iw_qp* %0, %struct.c4iw_qp** %6, align 8
  store %union.t4_recv_wr* %1, %union.t4_recv_wr** %7, align 8
  store %struct.ibv_recv_wr* %2, %struct.ibv_recv_wr** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %union.t4_recv_wr*, %union.t4_recv_wr** %7, align 8
  %12 = bitcast %union.t4_recv_wr* %11 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %8, align 8
  %15 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %8, align 8
  %18 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @build_isgl(i32* %13, i32 %16, i32 %19, i32* null)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %35

25:                                               ; preds = %4
  %26 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %8, align 8
  %27 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = add i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @DIV_ROUND_UP(i32 %32, i32 16)
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %25, %23
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @build_isgl(i32*, i32, i32, i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

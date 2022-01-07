; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_post_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i64 }
%struct.ds_qp = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ibv_recv_wr = type { i32, %struct.ibv_sge*, i32*, i32 }
%struct.ibv_sge = type { i32, i32, i64 }

@RS_SNDLOWAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*, %struct.ds_qp*, i64)* @ds_post_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_post_recv(%struct.rsocket* %0, %struct.ds_qp* %1, i64 %2) #0 {
  %4 = alloca %struct.rsocket*, align 8
  %5 = alloca %struct.ds_qp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ibv_recv_wr, align 8
  %8 = alloca %struct.ibv_recv_wr*, align 8
  %9 = alloca [2 x %struct.ibv_sge], align 16
  store %struct.rsocket* %0, %struct.rsocket** %4, align 8
  store %struct.ds_qp* %1, %struct.ds_qp** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  %11 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %14 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %12, %15
  %17 = getelementptr inbounds [2 x %struct.ibv_sge], [2 x %struct.ibv_sge]* %9, i64 0, i64 0
  %18 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %17, i32 0, i32 2
  store i64 %16, i64* %18, align 8
  %19 = getelementptr inbounds [2 x %struct.ibv_sge], [2 x %struct.ibv_sge]* %9, i64 0, i64 0
  %20 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %19, i32 0, i32 0
  store i32 4, i32* %20, align 16
  %21 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  %22 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [2 x %struct.ibv_sge], [2 x %struct.ibv_sge]* %9, i64 0, i64 0
  %27 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  %29 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %30, %31
  %33 = getelementptr inbounds [2 x %struct.ibv_sge], [2 x %struct.ibv_sge]* %9, i64 0, i64 1
  %34 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* @RS_SNDLOWAT, align 4
  %36 = getelementptr inbounds [2 x %struct.ibv_sge], [2 x %struct.ibv_sge]* %9, i64 0, i64 1
  %37 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 16
  %38 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  %39 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [2 x %struct.ibv_sge], [2 x %struct.ibv_sge]* %9, i64 0, i64 1
  %44 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @rs_recv_wr_id(i64 %45)
  %47 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %7, i32 0, i32 3
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %7, i32 0, i32 2
  store i32* null, i32** %48, align 8
  %49 = getelementptr inbounds [2 x %struct.ibv_sge], [2 x %struct.ibv_sge]* %9, i64 0, i64 0
  %50 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %7, i32 0, i32 1
  store %struct.ibv_sge* %49, %struct.ibv_sge** %50, align 8
  %51 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %7, i32 0, i32 0
  store i32 2, i32* %51, align 8
  %52 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  %53 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ibv_post_recv(i32 %56, %struct.ibv_recv_wr* %7, %struct.ibv_recv_wr** %8)
  %58 = call i32 @rdma_seterrno(i32 %57)
  ret i32 %58
}

declare dso_local i32 @rs_recv_wr_id(i64) #1

declare dso_local i32 @rdma_seterrno(i32) #1

declare dso_local i32 @ibv_post_recv(i32, %struct.ibv_recv_wr*, %struct.ibv_recv_wr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

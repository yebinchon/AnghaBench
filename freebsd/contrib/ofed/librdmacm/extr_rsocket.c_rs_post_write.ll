; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_post_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_post_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ibv_sge = type { i32 }
%struct.ibv_send_wr = type { i32, i32, %struct.TYPE_5__, i32, %struct.ibv_sge*, i32*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@IBV_WR_RDMA_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*, %struct.ibv_sge*, i32, i32, i32, i32, i32)* @rs_post_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_post_write(%struct.rsocket* %0, %struct.ibv_sge* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.rsocket*, align 8
  %9 = alloca %struct.ibv_sge*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ibv_send_wr, align 8
  %16 = alloca %struct.ibv_send_wr*, align 8
  store %struct.rsocket* %0, %struct.rsocket** %8, align 8
  store %struct.ibv_sge* %1, %struct.ibv_sge** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @rs_send_wr_id(i32 %17)
  %19 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %15, i32 0, i32 6
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %15, i32 0, i32 5
  store i32* null, i32** %20, align 8
  %21 = load %struct.ibv_sge*, %struct.ibv_sge** %9, align 8
  %22 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %15, i32 0, i32 4
  store %struct.ibv_sge* %21, %struct.ibv_sge** %22, align 8
  %23 = load i32, i32* %10, align 4
  %24 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %15, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* @IBV_WR_RDMA_WRITE, align 4
  %26 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %15, i32 0, i32 3
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* %12, align 4
  %28 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %15, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %13, align 4
  %30 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %15, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* %14, align 4
  %34 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %15, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %38 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ibv_post_send(i32 %41, %struct.ibv_send_wr* %15, %struct.ibv_send_wr** %16)
  %43 = call i32 @rdma_seterrno(i32 %42)
  ret i32 %43
}

declare dso_local i32 @rs_send_wr_id(i32) #1

declare dso_local i32 @rdma_seterrno(i32) #1

declare dso_local i32 @ibv_post_send(i32, %struct.ibv_send_wr*, %struct.ibv_send_wr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

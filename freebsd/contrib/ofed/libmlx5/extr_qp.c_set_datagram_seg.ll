; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_set_datagram_seg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_set_datagram_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_wqe_datagram_seg = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_8__, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.ibv_send_wr = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@MLX5_EXTENDED_UD_AV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_wqe_datagram_seg*, %struct.ibv_send_wr*)* @set_datagram_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_datagram_seg(%struct.mlx5_wqe_datagram_seg* %0, %struct.ibv_send_wr* %1) #0 {
  %3 = alloca %struct.mlx5_wqe_datagram_seg*, align 8
  %4 = alloca %struct.ibv_send_wr*, align 8
  store %struct.mlx5_wqe_datagram_seg* %0, %struct.mlx5_wqe_datagram_seg** %3, align 8
  store %struct.ibv_send_wr* %1, %struct.ibv_send_wr** %4, align 8
  %5 = load %struct.mlx5_wqe_datagram_seg*, %struct.mlx5_wqe_datagram_seg** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5_wqe_datagram_seg, %struct.mlx5_wqe_datagram_seg* %5, i32 0, i32 0
  %7 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %4, align 8
  %8 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_11__* @to_mah(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = call i32 @memcpy(%struct.TYPE_12__* %6, i32* %13, i32 16)
  %15 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %4, align 8
  %16 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MLX5_EXTENDED_UD_AV, align 4
  %21 = or i32 %19, %20
  %22 = call i8* @htobe32(i32 %21)
  %23 = load %struct.mlx5_wqe_datagram_seg*, %struct.mlx5_wqe_datagram_seg** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5_wqe_datagram_seg, %struct.mlx5_wqe_datagram_seg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  store i8* %22, i8** %25, align 8
  %26 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %4, align 8
  %27 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @htobe32(i32 %30)
  %32 = load %struct.mlx5_wqe_datagram_seg*, %struct.mlx5_wqe_datagram_seg** %3, align 8
  %33 = getelementptr inbounds %struct.mlx5_wqe_datagram_seg, %struct.mlx5_wqe_datagram_seg* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i8* %31, i8** %36, align 8
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local %struct.TYPE_11__* @to_mah(i32) #1

declare dso_local i8* @htobe32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

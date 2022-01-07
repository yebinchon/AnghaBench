; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_qp.c_set_datagram_seg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_qp.c_set_datagram_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_wqe_datagram_seg = type { i32, i32, i8*, i8*, i32 }
%struct.ibv_send_wr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_wqe_datagram_seg*, %struct.ibv_send_wr*)* @set_datagram_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_datagram_seg(%struct.mlx4_wqe_datagram_seg* %0, %struct.ibv_send_wr* %1) #0 {
  %3 = alloca %struct.mlx4_wqe_datagram_seg*, align 8
  %4 = alloca %struct.ibv_send_wr*, align 8
  store %struct.mlx4_wqe_datagram_seg* %0, %struct.mlx4_wqe_datagram_seg** %3, align 8
  store %struct.ibv_send_wr* %1, %struct.ibv_send_wr** %4, align 8
  %5 = load %struct.mlx4_wqe_datagram_seg*, %struct.mlx4_wqe_datagram_seg** %3, align 8
  %6 = getelementptr inbounds %struct.mlx4_wqe_datagram_seg, %struct.mlx4_wqe_datagram_seg* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %4, align 8
  %9 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_6__* @to_mah(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = call i32 @memcpy(i32 %7, i32* %14, i32 4)
  %16 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %4, align 8
  %17 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @htobe32(i32 %20)
  %22 = load %struct.mlx4_wqe_datagram_seg*, %struct.mlx4_wqe_datagram_seg** %3, align 8
  %23 = getelementptr inbounds %struct.mlx4_wqe_datagram_seg, %struct.mlx4_wqe_datagram_seg* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %4, align 8
  %25 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @htobe32(i32 %28)
  %30 = load %struct.mlx4_wqe_datagram_seg*, %struct.mlx4_wqe_datagram_seg** %3, align 8
  %31 = getelementptr inbounds %struct.mlx4_wqe_datagram_seg, %struct.mlx4_wqe_datagram_seg* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %4, align 8
  %33 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_6__* @to_mah(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @htobe16(i32 %39)
  %41 = load %struct.mlx4_wqe_datagram_seg*, %struct.mlx4_wqe_datagram_seg** %3, align 8
  %42 = getelementptr inbounds %struct.mlx4_wqe_datagram_seg, %struct.mlx4_wqe_datagram_seg* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.mlx4_wqe_datagram_seg*, %struct.mlx4_wqe_datagram_seg** %3, align 8
  %44 = getelementptr inbounds %struct.mlx4_wqe_datagram_seg, %struct.mlx4_wqe_datagram_seg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %4, align 8
  %47 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.TYPE_6__* @to_mah(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @memcpy(i32 %45, i32* %53, i32 6)
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local %struct.TYPE_6__* @to_mah(i32) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @htobe16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_set_sig_seg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_set_sig_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_qp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlx5_rwqe_sig }
%struct.mlx5_rwqe_sig = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_qp*, %struct.mlx5_rwqe_sig*, i32, i32)* @set_sig_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_sig_seg(%struct.mlx5_qp* %0, %struct.mlx5_rwqe_sig* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx5_rwqe_sig, align 4
  %6 = alloca %struct.mlx5_qp*, align 8
  %7 = alloca %struct.mlx5_rwqe_sig*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_rwqe_sig, align 4
  %11 = getelementptr inbounds %struct.mlx5_rwqe_sig, %struct.mlx5_rwqe_sig* %5, i32 0, i32 0
  store i32 %3, i32* %11, align 4
  store %struct.mlx5_qp* %0, %struct.mlx5_qp** %6, align 8
  store %struct.mlx5_rwqe_sig* %1, %struct.mlx5_rwqe_sig** %7, align 8
  store i32 %2, i32* %8, align 4
  %12 = load %struct.mlx5_qp*, %struct.mlx5_qp** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast %struct.mlx5_rwqe_sig* %10 to i8*
  %17 = bitcast %struct.mlx5_rwqe_sig* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load %struct.mlx5_rwqe_sig*, %struct.mlx5_rwqe_sig** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @calc_sig(%struct.mlx5_rwqe_sig* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = call i32 @calc_sig(%struct.mlx5_rwqe_sig* %10, i32 4)
  %22 = load i32, i32* %9, align 4
  %23 = xor i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = call i32 @calc_sig(%struct.mlx5_rwqe_sig* %5, i32 2)
  %25 = load i32, i32* %9, align 4
  %26 = xor i32 %25, %24
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.mlx5_rwqe_sig*, %struct.mlx5_rwqe_sig** %7, align 8
  %29 = getelementptr inbounds %struct.mlx5_rwqe_sig, %struct.mlx5_rwqe_sig* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @calc_sig(%struct.mlx5_rwqe_sig*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

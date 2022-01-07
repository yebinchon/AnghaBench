; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_bind_mw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_bind_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i32 }
%struct.ibv_mw = type { i32 }
%struct.ibv_mw_bind = type { i32, i32, i32 }
%struct.ibv_send_wr = type { %struct.TYPE_2__, i32, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.ibv_mw* }

@IBV_WR_BIND_MW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_bind_mw(%struct.ibv_qp* %0, %struct.ibv_mw* %1, %struct.ibv_mw_bind* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibv_qp*, align 8
  %6 = alloca %struct.ibv_mw*, align 8
  %7 = alloca %struct.ibv_mw_bind*, align 8
  %8 = alloca %struct.ibv_send_wr*, align 8
  %9 = alloca %struct.ibv_send_wr, align 8
  %10 = alloca i32, align 4
  store %struct.ibv_qp* %0, %struct.ibv_qp** %5, align 8
  store %struct.ibv_mw* %1, %struct.ibv_mw** %6, align 8
  store %struct.ibv_mw_bind* %2, %struct.ibv_mw_bind** %7, align 8
  store %struct.ibv_send_wr* null, %struct.ibv_send_wr** %8, align 8
  %11 = bitcast %struct.ibv_send_wr* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 40, i1 false)
  %12 = load i32, i32* @IBV_WR_BIND_MW, align 4
  %13 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %9, i32 0, i32 4
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %9, i32 0, i32 3
  store i32* null, i32** %14, align 8
  %15 = load %struct.ibv_mw_bind*, %struct.ibv_mw_bind** %7, align 8
  %16 = getelementptr inbounds %struct.ibv_mw_bind, %struct.ibv_mw_bind* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %9, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load %struct.ibv_mw_bind*, %struct.ibv_mw_bind** %7, align 8
  %20 = getelementptr inbounds %struct.ibv_mw_bind, %struct.ibv_mw_bind* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %9, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = load %struct.ibv_mw*, %struct.ibv_mw** %6, align 8
  %24 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %9, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store %struct.ibv_mw* %23, %struct.ibv_mw** %25, align 8
  %26 = load %struct.ibv_mw*, %struct.ibv_mw** %6, align 8
  %27 = getelementptr inbounds %struct.ibv_mw, %struct.ibv_mw* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ibv_inc_rkey(i32 %28)
  %30 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %9, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ibv_mw_bind*, %struct.ibv_mw_bind** %7, align 8
  %33 = getelementptr inbounds %struct.ibv_mw_bind, %struct.ibv_mw_bind* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %9, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %38 = call i32 @mlx4_post_send(%struct.ibv_qp* %37, %struct.ibv_send_wr* %9, %struct.ibv_send_wr** %8)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %49

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %9, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ibv_mw*, %struct.ibv_mw** %6, align 8
  %48 = getelementptr inbounds %struct.ibv_mw, %struct.ibv_mw* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %43, %41
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ibv_inc_rkey(i32) #2

declare dso_local i32 @mlx4_post_send(%struct.ibv_qp*, %struct.ibv_send_wr*, %struct.ibv_send_wr**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

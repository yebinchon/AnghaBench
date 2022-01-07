; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_mlx5_bind_mw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_mlx5_bind_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i32 }
%struct.ibv_mw = type { i64, i32 }
%struct.ibv_mw_bind = type { %struct.ibv_mw_bind_info, i32, i32 }
%struct.ibv_mw_bind_info = type { i32, %struct.TYPE_6__*, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.ibv_send_wr = type { %struct.TYPE_4__, i32, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32, %struct.ibv_mw*, %struct.ibv_mw_bind_info }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@IBV_ACCESS_ZERO_BASED = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@IBV_WR_BIND_MW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_bind_mw(%struct.ibv_qp* %0, %struct.ibv_mw* %1, %struct.ibv_mw_bind* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibv_qp*, align 8
  %6 = alloca %struct.ibv_mw*, align 8
  %7 = alloca %struct.ibv_mw_bind*, align 8
  %8 = alloca %struct.ibv_mw_bind_info*, align 8
  %9 = alloca %struct.ibv_send_wr, align 8
  %10 = alloca %struct.ibv_send_wr*, align 8
  %11 = alloca i32, align 4
  store %struct.ibv_qp* %0, %struct.ibv_qp** %5, align 8
  store %struct.ibv_mw* %1, %struct.ibv_mw** %6, align 8
  store %struct.ibv_mw_bind* %2, %struct.ibv_mw_bind** %7, align 8
  %12 = load %struct.ibv_mw_bind*, %struct.ibv_mw_bind** %7, align 8
  %13 = getelementptr inbounds %struct.ibv_mw_bind, %struct.ibv_mw_bind* %12, i32 0, i32 0
  store %struct.ibv_mw_bind_info* %13, %struct.ibv_mw_bind_info** %8, align 8
  %14 = bitcast %struct.ibv_send_wr* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 72, i1 false)
  store %struct.ibv_send_wr* null, %struct.ibv_send_wr** %10, align 8
  %15 = load %struct.ibv_mw_bind_info*, %struct.ibv_mw_bind_info** %8, align 8
  %16 = getelementptr inbounds %struct.ibv_mw_bind_info, %struct.ibv_mw_bind_info* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %3
  %20 = load %struct.ibv_mw_bind_info*, %struct.ibv_mw_bind_info** %8, align 8
  %21 = getelementptr inbounds %struct.ibv_mw_bind_info, %struct.ibv_mw_bind_info* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.ibv_mw_bind_info*, %struct.ibv_mw_bind_info** %8, align 8
  %26 = getelementptr inbounds %struct.ibv_mw_bind_info, %struct.ibv_mw_bind_info* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %19
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* @errno, align 4
  %31 = load i32, i32* @errno, align 4
  store i32 %31, i32* %4, align 4
  br label %113

32:                                               ; preds = %24, %3
  %33 = load %struct.ibv_mw_bind_info*, %struct.ibv_mw_bind_info** %8, align 8
  %34 = getelementptr inbounds %struct.ibv_mw_bind_info, %struct.ibv_mw_bind_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IBV_ACCESS_ZERO_BASED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* @errno, align 4
  %41 = load i32, i32* @errno, align 4
  store i32 %41, i32* %4, align 4
  br label %113

42:                                               ; preds = %32
  %43 = load %struct.ibv_mw_bind_info*, %struct.ibv_mw_bind_info** %8, align 8
  %44 = getelementptr inbounds %struct.ibv_mw_bind_info, %struct.ibv_mw_bind_info* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = icmp ne %struct.TYPE_6__* %45, null
  br i1 %46, label %47, label %74

47:                                               ; preds = %42
  %48 = load %struct.ibv_mw_bind_info*, %struct.ibv_mw_bind_info** %8, align 8
  %49 = getelementptr inbounds %struct.ibv_mw_bind_info, %struct.ibv_mw_bind_info* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = call %struct.TYPE_5__* @to_mmr(%struct.TYPE_6__* %50)
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IBV_ACCESS_ZERO_BASED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* @errno, align 4
  %59 = load i32, i32* @errno, align 4
  store i32 %59, i32* %4, align 4
  br label %113

60:                                               ; preds = %47
  %61 = load %struct.ibv_mw*, %struct.ibv_mw** %6, align 8
  %62 = getelementptr inbounds %struct.ibv_mw, %struct.ibv_mw* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ibv_mw_bind_info*, %struct.ibv_mw_bind_info** %8, align 8
  %65 = getelementptr inbounds %struct.ibv_mw_bind_info, %struct.ibv_mw_bind_info* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %63, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load i32, i32* @EPERM, align 4
  store i32 %71, i32* @errno, align 4
  %72 = load i32, i32* @errno, align 4
  store i32 %72, i32* %4, align 4
  br label %113

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73, %42
  %75 = load i32, i32* @IBV_WR_BIND_MW, align 4
  %76 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %9, i32 0, i32 4
  store i32 %75, i32* %76, align 8
  %77 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %9, i32 0, i32 3
  store i32* null, i32** %77, align 8
  %78 = load %struct.ibv_mw_bind*, %struct.ibv_mw_bind** %7, align 8
  %79 = getelementptr inbounds %struct.ibv_mw_bind, %struct.ibv_mw_bind* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %9, i32 0, i32 2
  store i32 %80, i32* %81, align 4
  %82 = load %struct.ibv_mw_bind*, %struct.ibv_mw_bind** %7, align 8
  %83 = getelementptr inbounds %struct.ibv_mw_bind, %struct.ibv_mw_bind* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %9, i32 0, i32 1
  store i32 %84, i32* %85, align 8
  %86 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %9, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load %struct.ibv_mw_bind*, %struct.ibv_mw_bind** %7, align 8
  %89 = getelementptr inbounds %struct.ibv_mw_bind, %struct.ibv_mw_bind* %88, i32 0, i32 0
  %90 = bitcast %struct.ibv_mw_bind_info* %87 to i8*
  %91 = bitcast %struct.ibv_mw_bind_info* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 32, i1 false)
  %92 = load %struct.ibv_mw*, %struct.ibv_mw** %6, align 8
  %93 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %9, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store %struct.ibv_mw* %92, %struct.ibv_mw** %94, align 8
  %95 = load %struct.ibv_mw*, %struct.ibv_mw** %6, align 8
  %96 = getelementptr inbounds %struct.ibv_mw, %struct.ibv_mw* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ibv_inc_rkey(i32 %97)
  %99 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %9, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %102 = call i32 @_mlx5_post_send(%struct.ibv_qp* %101, %struct.ibv_send_wr* %9, %struct.ibv_send_wr** %10)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %74
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %4, align 4
  br label %113

107:                                              ; preds = %74
  %108 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %9, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.ibv_mw*, %struct.ibv_mw** %6, align 8
  %112 = getelementptr inbounds %struct.ibv_mw, %struct.ibv_mw* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %107, %105, %70, %57, %39, %29
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_5__* @to_mmr(%struct.TYPE_6__*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ibv_inc_rkey(i32) #2

declare dso_local i32 @_mlx5_post_send(%struct.ibv_qp*, %struct.ibv_send_wr*, %struct.ibv_send_wr**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

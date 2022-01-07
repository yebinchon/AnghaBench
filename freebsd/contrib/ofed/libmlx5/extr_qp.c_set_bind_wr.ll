; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_set_bind_wr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_set_bind_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_qp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.ibv_mw_bind_info = type { i32, i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i8*, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IBV_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IBV_ACCESS_MW_BIND = common dso_local global i32 0, align 4
@IBV_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@IBV_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@IBV_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_qp*, i32, i32, %struct.ibv_mw_bind_info*, i32, i8**, i32*)* @set_bind_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_bind_wr(%struct.mlx5_qp* %0, i32 %1, i32 %2, %struct.ibv_mw_bind_info* %3, i32 %4, i8** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_qp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ibv_mw_bind_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  store %struct.mlx5_qp* %0, %struct.mlx5_qp** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.ibv_mw_bind_info* %3, %struct.ibv_mw_bind_info** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8** %5, i8*** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %18 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %16, align 8
  %21 = load %struct.ibv_mw_bind_info*, %struct.ibv_mw_bind_info** %12, align 8
  %22 = getelementptr inbounds %struct.ibv_mw_bind_info, %struct.ibv_mw_bind_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ugt i64 %23, 2147483648
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %26, i32* %8, align 4
  br label %82

27:                                               ; preds = %7
  %28 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.ibv_mw_bind_info*, %struct.ibv_mw_bind_info** %12, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load i8**, i8*** %14, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = call i32 @set_umr_control_seg(%struct.mlx5_qp* %28, i32 %29, i32 %30, %struct.ibv_mw_bind_info* %31, i32 %32, i8** %33, i32* %34)
  %36 = load i8**, i8*** %14, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = icmp eq i8* %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %27
  %44 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %45 = call i8* @mlx5_get_send_wqe(%struct.mlx5_qp* %44, i32 0)
  %46 = load i8**, i8*** %14, align 8
  store i8* %45, i8** %46, align 8
  br label %47

47:                                               ; preds = %43, %27
  %48 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.ibv_mw_bind_info*, %struct.ibv_mw_bind_info** %12, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i8**, i8*** %14, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = call i32 @set_umr_mkey_seg(%struct.mlx5_qp* %48, i32 %49, i32 %50, %struct.ibv_mw_bind_info* %51, i32 %52, i8** %53, i32* %54)
  %56 = load %struct.ibv_mw_bind_info*, %struct.ibv_mw_bind_info** %12, align 8
  %57 = getelementptr inbounds %struct.ibv_mw_bind_info, %struct.ibv_mw_bind_info* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %82

61:                                               ; preds = %47
  %62 = load i8**, i8*** %14, align 8
  %63 = load i8*, i8** %16, align 8
  %64 = bitcast i8* %63 to i8**
  %65 = icmp eq i8** %62, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %71 = call i8* @mlx5_get_send_wqe(%struct.mlx5_qp* %70, i32 0)
  %72 = load i8**, i8*** %14, align 8
  store i8* %71, i8** %72, align 8
  br label %73

73:                                               ; preds = %69, %61
  %74 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.ibv_mw_bind_info*, %struct.ibv_mw_bind_info** %12, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i8**, i8*** %14, align 8
  %80 = load i32*, i32** %15, align 8
  %81 = call i32 @set_umr_data_seg(%struct.mlx5_qp* %74, i32 %75, i32 %76, %struct.ibv_mw_bind_info* %77, i32 %78, i8** %79, i32* %80)
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %73, %60, %25
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local i32 @set_umr_control_seg(%struct.mlx5_qp*, i32, i32, %struct.ibv_mw_bind_info*, i32, i8**, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @mlx5_get_send_wqe(%struct.mlx5_qp*, i32) #1

declare dso_local i32 @set_umr_mkey_seg(%struct.mlx5_qp*, i32, i32, %struct.ibv_mw_bind_info*, i32, i8**, i32*) #1

declare dso_local i32 @set_umr_data_seg(%struct.mlx5_qp*, i32, i32, %struct.ibv_mw_bind_info*, i32, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

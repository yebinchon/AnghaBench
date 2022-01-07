; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_query_device_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_query_device_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.ibv_query_device_ex_input = type { i32 }
%struct.ibv_device_attr_ex = type { %struct.ibv_device_attr, i32, %struct.TYPE_4__, i32 }
%struct.ibv_device_attr = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mlx5_context = type { i32, i32, i32 }
%struct.mlx5_query_device_ex_resp = type { i32, i64, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mlx5_query_device_ex = type { i32, i64, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32 }

@MLX5_USER_CMDS_SUPP_UHW_QUERY_DEVICE = common dso_local global i32 0, align 4
@MLX5_VENDOR_CAP_FLAGS_MPW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%d.%d.%04d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_query_device_ex(%struct.ibv_context* %0, %struct.ibv_query_device_ex_input* %1, %struct.ibv_device_attr_ex* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibv_context*, align 8
  %7 = alloca %struct.ibv_query_device_ex_input*, align 8
  %8 = alloca %struct.ibv_device_attr_ex*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mlx5_context*, align 8
  %11 = alloca %struct.mlx5_query_device_ex_resp, align 8
  %12 = alloca %struct.mlx5_query_device_ex, align 8
  %13 = alloca %struct.ibv_device_attr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %6, align 8
  store %struct.ibv_query_device_ex_input* %1, %struct.ibv_query_device_ex_input** %7, align 8
  store %struct.ibv_device_attr_ex* %2, %struct.ibv_device_attr_ex** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %21 = call %struct.mlx5_context* @to_mctx(%struct.ibv_context* %20)
  store %struct.mlx5_context* %21, %struct.mlx5_context** %10, align 8
  %22 = load %struct.mlx5_context*, %struct.mlx5_context** %10, align 8
  %23 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MLX5_USER_CMDS_SUPP_UHW_QUERY_DEVICE, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %19, align 4
  %27 = bitcast %struct.mlx5_query_device_ex* %12 to %struct.mlx5_query_device_ex_resp*
  %28 = call i32 @memset(%struct.mlx5_query_device_ex_resp* %27, i32 0, i32 40)
  %29 = call i32 @memset(%struct.mlx5_query_device_ex_resp* %11, i32 0, i32 40)
  %30 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %31 = load %struct.ibv_query_device_ex_input*, %struct.ibv_query_device_ex_input** %7, align 8
  %32 = load %struct.ibv_device_attr_ex*, %struct.ibv_device_attr_ex** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.mlx5_query_device_ex, %struct.mlx5_query_device_ex* %12, i32 0, i32 6
  %35 = getelementptr inbounds %struct.mlx5_query_device_ex_resp, %struct.mlx5_query_device_ex_resp* %11, i32 0, i32 5
  %36 = load i32, i32* %19, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i64 40, i64 4
  %40 = trunc i64 %39 to i32
  %41 = call i32 @ibv_cmd_query_device_ex(%struct.ibv_context* %30, %struct.ibv_query_device_ex_input* %31, %struct.ibv_device_attr_ex* %32, i64 %33, i32* %14, i32* %34, i32 4, i32 40, i32* %35, i32 4, i32 %40)
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %4
  %45 = load i32, i32* %18, align 4
  store i32 %45, i32* %5, align 4
  br label %99

46:                                               ; preds = %4
  %47 = getelementptr inbounds %struct.mlx5_query_device_ex_resp, %struct.mlx5_query_device_ex_resp* %11, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ibv_device_attr_ex*, %struct.ibv_device_attr_ex** %8, align 8
  %50 = getelementptr inbounds %struct.ibv_device_attr_ex, %struct.ibv_device_attr_ex* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.mlx5_query_device_ex_resp, %struct.mlx5_query_device_ex_resp* %11, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ibv_device_attr_ex*, %struct.ibv_device_attr_ex** %8, align 8
  %55 = getelementptr inbounds %struct.ibv_device_attr_ex, %struct.ibv_device_attr_ex* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = getelementptr inbounds %struct.mlx5_query_device_ex_resp, %struct.mlx5_query_device_ex_resp* %11, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ibv_device_attr_ex*, %struct.ibv_device_attr_ex** %8, align 8
  %61 = getelementptr inbounds %struct.ibv_device_attr_ex, %struct.ibv_device_attr_ex* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = getelementptr inbounds %struct.mlx5_query_device_ex_resp, %struct.mlx5_query_device_ex_resp* %11, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ibv_device_attr_ex*, %struct.ibv_device_attr_ex** %8, align 8
  %67 = getelementptr inbounds %struct.ibv_device_attr_ex, %struct.ibv_device_attr_ex* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = getelementptr inbounds %struct.mlx5_query_device_ex_resp, %struct.mlx5_query_device_ex_resp* %11, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %46
  %72 = load i32, i32* @MLX5_VENDOR_CAP_FLAGS_MPW, align 4
  %73 = load %struct.mlx5_context*, %struct.mlx5_context** %10, align 8
  %74 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %46
  %78 = getelementptr inbounds %struct.mlx5_query_device_ex_resp, %struct.mlx5_query_device_ex_resp* %11, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.mlx5_context*, %struct.mlx5_context** %10, align 8
  %81 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %14, align 4
  %83 = ashr i32 %82, 32
  %84 = and i32 %83, 65535
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %14, align 4
  %86 = ashr i32 %85, 16
  %87 = and i32 %86, 65535
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %14, align 4
  %89 = and i32 %88, 65535
  store i32 %89, i32* %15, align 4
  %90 = load %struct.ibv_device_attr_ex*, %struct.ibv_device_attr_ex** %8, align 8
  %91 = getelementptr inbounds %struct.ibv_device_attr_ex, %struct.ibv_device_attr_ex* %90, i32 0, i32 0
  store %struct.ibv_device_attr* %91, %struct.ibv_device_attr** %13, align 8
  %92 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %13, align 8
  %93 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @snprintf(i32 %94, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %96, i32 %97)
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %77, %44
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local %struct.mlx5_context* @to_mctx(%struct.ibv_context*) #1

declare dso_local i32 @memset(%struct.mlx5_query_device_ex_resp*, i32, i32) #1

declare dso_local i32 @ibv_cmd_query_device_ex(%struct.ibv_context*, %struct.ibv_query_device_ex_input*, %struct.ibv_device_attr_ex*, i64, i32*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

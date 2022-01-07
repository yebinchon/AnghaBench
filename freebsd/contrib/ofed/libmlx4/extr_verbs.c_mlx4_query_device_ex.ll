; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_query_device_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_query_device_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.ibv_query_device_ex_input = type { i32 }
%struct.ibv_device_attr_ex = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_context = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mlx4_query_device_ex_resp = type { i32, i32, i32 }
%struct.mlx4_query_device_ex = type { i32 }

@MLX4_QUERY_DEV_RESP_MASK_CORE_CLOCK_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%d.%d.%03d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_query_device_ex(%struct.ibv_context* %0, %struct.ibv_query_device_ex_input* %1, %struct.ibv_device_attr_ex* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibv_context*, align 8
  %7 = alloca %struct.ibv_query_device_ex_input*, align 8
  %8 = alloca %struct.ibv_device_attr_ex*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mlx4_context*, align 8
  %11 = alloca %struct.mlx4_query_device_ex_resp, align 4
  %12 = alloca %struct.mlx4_query_device_ex, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %6, align 8
  store %struct.ibv_query_device_ex_input* %1, %struct.ibv_query_device_ex_input** %7, align 8
  store %struct.ibv_device_attr_ex* %2, %struct.ibv_device_attr_ex** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %19 = call %struct.mlx4_context* @to_mctx(%struct.ibv_context* %18)
  store %struct.mlx4_context* %19, %struct.mlx4_context** %10, align 8
  %20 = bitcast %struct.mlx4_query_device_ex_resp* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 12, i1 false)
  %21 = bitcast %struct.mlx4_query_device_ex* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 4, i1 false)
  %22 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %23 = load %struct.ibv_query_device_ex_input*, %struct.ibv_query_device_ex_input** %7, align 8
  %24 = load %struct.ibv_device_attr_ex*, %struct.ibv_device_attr_ex** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.mlx4_query_device_ex, %struct.mlx4_query_device_ex* %12, i32 0, i32 0
  %27 = getelementptr inbounds %struct.mlx4_query_device_ex_resp, %struct.mlx4_query_device_ex_resp* %11, i32 0, i32 2
  %28 = call i32 @ibv_cmd_query_device_ex(%struct.ibv_context* %22, %struct.ibv_query_device_ex_input* %23, %struct.ibv_device_attr_ex* %24, i64 %25, i32* %13, i32* %26, i32 4, i32 4, i32* %27, i32 4, i32 12)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %17, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %17, align 4
  store i32 %32, i32* %5, align 4
  br label %65

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.mlx4_query_device_ex_resp, %struct.mlx4_query_device_ex_resp* %11, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MLX4_QUERY_DEV_RESP_MASK_CORE_CLOCK_OFFSET, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.mlx4_query_device_ex_resp, %struct.mlx4_query_device_ex_resp* %11, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mlx4_context*, %struct.mlx4_context** %10, align 8
  %43 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.mlx4_context*, %struct.mlx4_context** %10, align 8
  %46 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %39, %33
  %49 = load i32, i32* %13, align 4
  %50 = ashr i32 %49, 32
  %51 = and i32 %50, 65535
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %13, align 4
  %53 = ashr i32 %52, 16
  %54 = and i32 %53, 65535
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %13, align 4
  %56 = and i32 %55, 65535
  store i32 %56, i32* %14, align 4
  %57 = load %struct.ibv_device_attr_ex*, %struct.ibv_device_attr_ex** %8, align 8
  %58 = getelementptr inbounds %struct.ibv_device_attr_ex, %struct.ibv_device_attr_ex* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @snprintf(i32 %60, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62, i32 %63)
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %48, %31
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.mlx4_context* @to_mctx(%struct.ibv_context*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ibv_cmd_query_device_ex(%struct.ibv_context*, %struct.ibv_query_device_ex_input*, %struct.ibv_device_attr_ex*, i64, i32*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

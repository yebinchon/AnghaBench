; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.c_mlx5_read_env.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.c_mlx5_read_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_device = type { i32 }
%struct.mlx5_context = type { i32, i32, i8* }

@.str = private unnamed_addr constant [19 x i8] c"MLX5_STALL_CQ_POLL\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"MLX5_STALL_NUM_LOOP\00", align 1
@mlx5_stall_num_loop = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"MLX5_STALL_CQ_POLL_MIN\00", align 1
@mlx5_stall_cq_poll_min = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"MLX5_STALL_CQ_POLL_MAX\00", align 1
@mlx5_stall_cq_poll_max = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"MLX5_STALL_CQ_INC_STEP\00", align 1
@mlx5_stall_cq_inc_step = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"MLX5_STALL_CQ_DEC_STEP\00", align 1
@mlx5_stall_cq_dec_step = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibv_device*, %struct.mlx5_context*)* @mlx5_read_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_read_env(%struct.ibv_device* %0, %struct.mlx5_context* %1) #0 {
  %3 = alloca %struct.ibv_device*, align 8
  %4 = alloca %struct.mlx5_context*, align 8
  %5 = alloca i8*, align 8
  store %struct.ibv_device* %0, %struct.ibv_device** %3, align 8
  store %struct.mlx5_context* %1, %struct.mlx5_context** %4, align 8
  %6 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 0
  %15 = load %struct.mlx5_context*, %struct.mlx5_context** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.ibv_device*, %struct.ibv_device** %3, align 8
  %19 = call i32 @mlx5_enable_sandy_bridge_fix(%struct.ibv_device* %18)
  %20 = load %struct.mlx5_context*, %struct.mlx5_context** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %17, %9
  %23 = call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* @atoi(i8* %27)
  %29 = ptrtoint i8* %28 to i64
  store i64 %29, i64* @mlx5_stall_num_loop, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = call i8* @getenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = call i8* @atoi(i8* %35)
  store i8* %36, i8** @mlx5_stall_cq_poll_min, align 8
  br label %37

37:                                               ; preds = %34, %30
  %38 = call i8* @getenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  store i8* %38, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i8*, i8** %5, align 8
  %43 = call i8* @atoi(i8* %42)
  store i8* %43, i8** @mlx5_stall_cq_poll_max, align 8
  br label %44

44:                                               ; preds = %41, %37
  %45 = call i8* @getenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i8* %45, i8** %5, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i8*, i8** %5, align 8
  %50 = call i8* @atoi(i8* %49)
  store i8* %50, i8** @mlx5_stall_cq_inc_step, align 8
  br label %51

51:                                               ; preds = %48, %44
  %52 = call i8* @getenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  store i8* %52, i8** %5, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i8*, i8** %5, align 8
  %57 = call i8* @atoi(i8* %56)
  store i8* %57, i8** @mlx5_stall_cq_dec_step, align 8
  br label %58

58:                                               ; preds = %55, %51
  %59 = load %struct.mlx5_context*, %struct.mlx5_context** %4, align 8
  %60 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = load %struct.mlx5_context*, %struct.mlx5_context** %4, align 8
  %62 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %61, i32 0, i32 2
  store i8* null, i8** %62, align 8
  %63 = load i64, i64* @mlx5_stall_num_loop, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.mlx5_context*, %struct.mlx5_context** %4, align 8
  %67 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load i8*, i8** @mlx5_stall_cq_poll_min, align 8
  %69 = load %struct.mlx5_context*, %struct.mlx5_context** %4, align 8
  %70 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %65, %58
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @mlx5_enable_sandy_bridge_fix(%struct.ibv_device*) #1

declare dso_local i8* @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

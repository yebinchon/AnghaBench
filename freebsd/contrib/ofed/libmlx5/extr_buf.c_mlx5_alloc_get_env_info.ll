; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_mlx5_alloc_get_env_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_mlx5_alloc_get_env_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MLX5_MAX_LOG2_CONTIG_BLOCK_SIZE = common dso_local global i32 0, align 4
@MLX5_MIN_LOG2_CONTIG_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s_MAX_LOG2_CONTIG_BSIZE\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid value %d for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s_MIN_LOG2_CONTIG_BSIZE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*)* @mlx5_alloc_get_env_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_alloc_get_env_info(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @MLX5_MAX_LOG2_CONTIG_BLOCK_SIZE, align 4
  %11 = load i32*, i32** %4, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @MLX5_MIN_LOG2_CONTIG_BLOCK_SIZE, align 4
  %13 = load i32*, i32** %5, align 8
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @snprintf(i8* %14, i32 128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %18 = call i8* @getenv(i8* %17)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @atoi(i8* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @MLX5_MAX_LOG2_CONTIG_BLOCK_SIZE, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @MLX5_MIN_LOG2_CONTIG_BLOCK_SIZE, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %4, align 8
  store i32 %32, i32* %33, align 4
  br label %39

34:                                               ; preds = %27, %21
  %35 = load i32, i32* @stderr, align 4
  %36 = load i32, i32* %8, align 4
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %38 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %36, i8* %37)
  br label %39

39:                                               ; preds = %34, %31
  br label %40

40:                                               ; preds = %39, %3
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %45 = call i8* @getenv(i8* %44)
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %68

48:                                               ; preds = %40
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @atoi(i8* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @MLX5_MIN_LOG2_CONTIG_BLOCK_SIZE, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp sle i32 %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  br label %67

62:                                               ; preds = %54, %48
  %63 = load i32, i32* @stderr, align 4
  %64 = load i32, i32* %8, align 4
  %65 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %66 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %64, i8* %65)
  br label %67

67:                                               ; preds = %62, %59
  br label %68

68:                                               ; preds = %67, %40
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_mlx5_get_alloc_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_mlx5_get_alloc_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"%s_ALLOC_TYPE\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ANON\00", align 1
@MLX5_ALLOC_TYPE_ANON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"HUGE\00", align 1
@MLX5_ALLOC_TYPE_HUGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"CONTIG\00", align 1
@MLX5_ALLOC_TYPE_CONTIG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"PREFER_CONTIG\00", align 1
@MLX5_ALLOC_TYPE_PREFER_CONTIG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"PREFER_HUGE\00", align 1
@MLX5_ALLOC_TYPE_PREFER_HUGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@MLX5_ALLOC_TYPE_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_get_alloc_type(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [128 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @snprintf(i8* %9, i32 128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** %5, align 8
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %15 = call i8* @getenv(i8* %14)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %66

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @strcasecmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @MLX5_ALLOC_TYPE_ANON, align 4
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  br label %65

25:                                               ; preds = %18
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @MLX5_ALLOC_TYPE_HUGE, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  br label %64

32:                                               ; preds = %25
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @strcasecmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @MLX5_ALLOC_TYPE_CONTIG, align 4
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  br label %63

39:                                               ; preds = %32
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @strcasecmp(i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @MLX5_ALLOC_TYPE_PREFER_CONTIG, align 4
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  br label %62

46:                                               ; preds = %39
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @strcasecmp(i8* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @MLX5_ALLOC_TYPE_PREFER_HUGE, align 4
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  br label %61

53:                                               ; preds = %46
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @strcasecmp(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @MLX5_ALLOC_TYPE_ALL, align 4
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %53
  br label %61

61:                                               ; preds = %60, %50
  br label %62

62:                                               ; preds = %61, %43
  br label %63

63:                                               ; preds = %62, %36
  br label %64

64:                                               ; preds = %63, %29
  br label %65

65:                                               ; preds = %64, %22
  br label %66

66:                                               ; preds = %65, %3
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

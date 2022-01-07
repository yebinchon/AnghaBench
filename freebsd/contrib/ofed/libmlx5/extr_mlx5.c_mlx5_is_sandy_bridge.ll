; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.c_mlx5_is_sandy_bridge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.c_mlx5_is_sandy_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"processor\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"cpu family\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mlx5_is_sandy_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_is_sandy_bridge(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [128 x i8], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %10 = call i32* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %69, %14
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @fgets(i8* %17, i32 128, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %70

21:                                               ; preds = %16
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %23 = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  br label %59

29:                                               ; preds = %21
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %31 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %38 = call i32 @read_number_from_line(i8* %37, i32* %9)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %36, %33
  br label %58

43:                                               ; preds = %29
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %45 = call i32 @strncmp(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %52 = call i32 @read_number_from_line(i8* %51, i32* %9)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %54, %50, %47
  br label %57

57:                                               ; preds = %56, %43
  br label %58

58:                                               ; preds = %57, %42
  br label %59

59:                                               ; preds = %58, %25
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 6
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 42
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 45
  br i1 %67, label %68, label %69

68:                                               ; preds = %65, %62
  store i32 1, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %65, %59
  br label %16

70:                                               ; preds = %16
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @fclose(i32* %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %70, %13
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @read_number_from_line(i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

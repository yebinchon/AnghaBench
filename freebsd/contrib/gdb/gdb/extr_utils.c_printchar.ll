; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_printchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_printchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@sevenbit_strings = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\e\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\a\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"\\%.3o\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, void (i8*, %struct.ui_file*)*, void (%struct.ui_file*, i8*, ...)*, %struct.ui_file*, i32)* @printchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printchar(i32 %0, void (i8*, %struct.ui_file*)* %1, void (%struct.ui_file*, i8*, ...)* %2, %struct.ui_file* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca void (i8*, %struct.ui_file*)*, align 8
  %8 = alloca void (%struct.ui_file*, i8*, ...)*, align 8
  %9 = alloca %struct.ui_file*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store void (i8*, %struct.ui_file*)* %1, void (i8*, %struct.ui_file*)** %7, align 8
  store void (%struct.ui_file*, i8*, ...)* %2, void (%struct.ui_file*, i8*, ...)** %8, align 8
  store %struct.ui_file* %3, %struct.ui_file** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %11, 255
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 32
  br i1 %14, label %27, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %6, align 4
  %17 = icmp sge i32 %16, 127
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 160
  br i1 %20, label %27, label %21

21:                                               ; preds = %18, %15
  %22 = load i64, i64* @sevenbit_strings, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = icmp sge i32 %25, 128
  br i1 %26, label %27, label %55

27:                                               ; preds = %24, %18, %5
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %50 [
    i32 10, label %29
    i32 8, label %32
    i32 9, label %35
    i32 12, label %38
    i32 13, label %41
    i32 27, label %44
    i32 7, label %47
  ]

29:                                               ; preds = %27
  %30 = load void (i8*, %struct.ui_file*)*, void (i8*, %struct.ui_file*)** %7, align 8
  %31 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  call void %30(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.ui_file* %31)
  br label %54

32:                                               ; preds = %27
  %33 = load void (i8*, %struct.ui_file*)*, void (i8*, %struct.ui_file*)** %7, align 8
  %34 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  call void %33(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %34)
  br label %54

35:                                               ; preds = %27
  %36 = load void (i8*, %struct.ui_file*)*, void (i8*, %struct.ui_file*)** %7, align 8
  %37 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  call void %36(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.ui_file* %37)
  br label %54

38:                                               ; preds = %27
  %39 = load void (i8*, %struct.ui_file*)*, void (i8*, %struct.ui_file*)** %7, align 8
  %40 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  call void %39(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.ui_file* %40)
  br label %54

41:                                               ; preds = %27
  %42 = load void (i8*, %struct.ui_file*)*, void (i8*, %struct.ui_file*)** %7, align 8
  %43 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  call void %42(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.ui_file* %43)
  br label %54

44:                                               ; preds = %27
  %45 = load void (i8*, %struct.ui_file*)*, void (i8*, %struct.ui_file*)** %7, align 8
  %46 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  call void %45(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.ui_file* %46)
  br label %54

47:                                               ; preds = %27
  %48 = load void (i8*, %struct.ui_file*)*, void (i8*, %struct.ui_file*)** %7, align 8
  %49 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  call void %48(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %struct.ui_file* %49)
  br label %54

50:                                               ; preds = %27
  %51 = load void (%struct.ui_file*, i8*, ...)*, void (%struct.ui_file*, i8*, ...)** %8, align 8
  %52 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  %53 = load i32, i32* %6, align 4
  call void (%struct.ui_file*, i8*, ...) %51(%struct.ui_file* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %53)
  br label %54

54:                                               ; preds = %50, %47, %44, %41, %38, %35, %32, %29
  br label %69

55:                                               ; preds = %24, %21
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 92
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58, %55
  %63 = load void (i8*, %struct.ui_file*)*, void (i8*, %struct.ui_file*)** %7, align 8
  %64 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  call void %63(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), %struct.ui_file* %64)
  br label %65

65:                                               ; preds = %62, %58
  %66 = load void (%struct.ui_file*, i8*, ...)*, void (%struct.ui_file*, i8*, ...)** %8, align 8
  %67 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  %68 = load i32, i32* %6, align 4
  call void (%struct.ui_file*, i8*, ...) %66(%struct.ui_file* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %68)
  br label %69

69:                                               ; preds = %65, %54
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

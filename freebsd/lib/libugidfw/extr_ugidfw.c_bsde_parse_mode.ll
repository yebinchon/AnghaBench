; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libugidfw/extr_ugidfw.c_bsde_parse_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libugidfw/extr_ugidfw.c_bsde_parse_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"mode expects mode value\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"'%s' unexpected\00", align 1
@MBI_ADMIN = common dso_local global i64 0, align 8
@MBI_READ = common dso_local global i64 0, align 8
@MBI_STAT = common dso_local global i64 0, align 8
@MBI_WRITE = common dso_local global i64 0, align 8
@MBI_EXEC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Unknown mode letter: %c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bsde_parse_mode(i32 %0, i8** %1, i64* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load i8*, i8** %11, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %16, i64 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %90

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i8*, i8** %11, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i8**, i8*** %8, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %23, i64 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  store i32 -1, i32* %6, align 4
  br label %90

29:                                               ; preds = %19
  %30 = load i64*, i64** %9, align 8
  store i64 0, i64* %30, align 8
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %86, %29
  %32 = load i32, i32* %12, align 4
  %33 = load i8**, i8*** %8, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %89

38:                                               ; preds = %31
  %39 = load i8**, i8*** %8, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  switch i32 %46, label %73 [
    i32 97, label %47
    i32 114, label %52
    i32 115, label %57
    i32 119, label %62
    i32 120, label %67
    i32 110, label %72
  ]

47:                                               ; preds = %38
  %48 = load i64, i64* @MBI_ADMIN, align 8
  %49 = load i64*, i64** %9, align 8
  %50 = load i64, i64* %49, align 8
  %51 = or i64 %50, %48
  store i64 %51, i64* %49, align 8
  br label %85

52:                                               ; preds = %38
  %53 = load i64, i64* @MBI_READ, align 8
  %54 = load i64*, i64** %9, align 8
  %55 = load i64, i64* %54, align 8
  %56 = or i64 %55, %53
  store i64 %56, i64* %54, align 8
  br label %85

57:                                               ; preds = %38
  %58 = load i64, i64* @MBI_STAT, align 8
  %59 = load i64*, i64** %9, align 8
  %60 = load i64, i64* %59, align 8
  %61 = or i64 %60, %58
  store i64 %61, i64* %59, align 8
  br label %85

62:                                               ; preds = %38
  %63 = load i64, i64* @MBI_WRITE, align 8
  %64 = load i64*, i64** %9, align 8
  %65 = load i64, i64* %64, align 8
  %66 = or i64 %65, %63
  store i64 %66, i64* %64, align 8
  br label %85

67:                                               ; preds = %38
  %68 = load i64, i64* @MBI_EXEC, align 8
  %69 = load i64*, i64** %9, align 8
  %70 = load i64, i64* %69, align 8
  %71 = or i64 %70, %68
  store i64 %71, i64* %69, align 8
  br label %85

72:                                               ; preds = %38
  br label %85

73:                                               ; preds = %38
  %74 = load i8*, i8** %11, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i8**, i8*** %8, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %74, i64 %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  store i32 -1, i32* %6, align 4
  br label %90

85:                                               ; preds = %72, %67, %62, %57, %52, %47
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %31

89:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %73, %22, %15
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_deduceDatabaseType.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_deduceDatabaseType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SHELL_OPEN_UNSPEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%.zip\00", align 1
@SHELL_OPEN_ZIPFILE = common dso_local global i32 0, align 4
@SHELL_OPEN_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"SQLite format 3\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Start-Of-SQLite3-\00", align 1
@SHELL_OPEN_APPENDVFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @deduceDatabaseType(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [100 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %6, align 8
  %12 = load i32, i32* @SHELL_OPEN_UNSPEC, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @sqlite3_strlike(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %19, i32 0)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @SHELL_OPEN_ZIPFILE, align 4
  store i32 %23, i32* %3, align 4
  br label %104

24:                                               ; preds = %18, %15
  %25 = load i32, i32* @SHELL_OPEN_NORMAL, align 4
  store i32 %25, i32* %3, align 4
  br label %104

26:                                               ; preds = %2
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %28 = load i32*, i32** %6, align 8
  %29 = call i64 @fread(i8* %27, i32 16, i32 1, i32* %28)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp eq i64 %30, 1
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %34 = call i64 @memcmp(i8* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 16)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @fclose(i32* %37)
  %39 = load i32, i32* @SHELL_OPEN_NORMAL, align 4
  store i32 %39, i32* %3, align 4
  br label %104

40:                                               ; preds = %32, %26
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @SEEK_END, align 4
  %43 = call i32 @fseek(i32* %41, i32 -25, i32 %42)
  %44 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %45 = load i32*, i32** %6, align 8
  %46 = call i64 @fread(i8* %44, i32 25, i32 1, i32* %45)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp eq i64 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %51 = call i64 @memcmp(i8* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 17)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @SHELL_OPEN_APPENDVFS, align 4
  store i32 %54, i32* %8, align 4
  br label %100

55:                                               ; preds = %49, %40
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* @SEEK_END, align 4
  %58 = call i32 @fseek(i32* %56, i32 -22, i32 %57)
  %59 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %60 = load i32*, i32** %6, align 8
  %61 = call i64 @fread(i8* %59, i32 22, i32 1, i32* %60)
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp eq i64 %62, 1
  br i1 %63, label %64, label %86

64:                                               ; preds = %55
  %65 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %66 = load i8, i8* %65, align 16
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 80
  br i1 %68, label %69, label %86

69:                                               ; preds = %64
  %70 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 75
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 2
  %76 = load i8, i8* %75, align 2
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 5
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 3
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 6
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @SHELL_OPEN_ZIPFILE, align 4
  store i32 %85, i32* %8, align 4
  br label %99

86:                                               ; preds = %79, %74, %69, %64, %55
  %87 = load i64, i64* %7, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i8*, i8** %4, align 8
  %94 = call i64 @sqlite3_strlike(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %93, i32 0)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @SHELL_OPEN_ZIPFILE, align 4
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %96, %92, %89, %86
  br label %99

99:                                               ; preds = %98, %84
  br label %100

100:                                              ; preds = %99, %53
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @fclose(i32* %101)
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %100, %36, %24, %22
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @sqlite3_strlike(i8*, i8*, i32) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

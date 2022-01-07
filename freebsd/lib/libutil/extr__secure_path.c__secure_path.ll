; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr__secure_path.c__secure_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr__secure_path.c__secure_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64, i64 }

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"%s: cannot stat %s: %m\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: %s is not a regular file\00", align 1
@S_IWOTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: %s is world writable\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%s: %s is not owned by root\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%s: %s is not owned by uid %d\00", align 1
@S_IWGRP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"%s: %s is group writeable by non-authorised groups\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"_secure_path\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_secure_path(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 -1, i32* %7, align 4
  store i8* null, i8** %9, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @lstat(i8* %10, %struct.stat* %8)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i64, i64* @errno, align 8
  %15 = load i64, i64* @ENOENT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 -2, i32* %7, align 4
  br label %19

18:                                               ; preds = %13
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %19

19:                                               ; preds = %18, %17
  br label %73

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @S_ISREG(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %72

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @S_IWOTH, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %71

33:                                               ; preds = %26
  %34 = load i64, i64* %5, align 8
  %35 = trunc i64 %34 to i32
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i64, i64* %5, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %51

50:                                               ; preds = %46
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %51

51:                                               ; preds = %50, %49
  br label %70

52:                                               ; preds = %42, %37, %33
  %53 = load i64, i64* %6, align 8
  %54 = trunc i64 %53 to i32
  %55 = icmp ne i32 %54, -1
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @S_IWGRP, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %69

68:                                               ; preds = %61, %56, %52
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %68, %67
  br label %70

70:                                               ; preds = %69, %51
  br label %71

71:                                               ; preds = %70, %32
  br label %72

72:                                               ; preds = %71, %25
  br label %73

73:                                               ; preds = %72, %19
  %74 = load i8*, i8** %9, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i32, i32* @LOG_ERR, align 4
  %78 = load i8*, i8** %9, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @syslog(i32 %77, i8* %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %79, i64 %80)
  br label %82

82:                                               ; preds = %76, %73
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @syslog(i32, i8*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

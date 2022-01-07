; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/stdio/extr_fopen_test.c_runtest.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/stdio/extr_fopen_test.c_runtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"fopen(\22%s\22, \22%s\22) failed\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"fileno() failed for fopen\00", align 1
@FD_CLOEXEC = common dso_local global i32 0, align 4
@F_GETFD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"fcntl(.., F_GETFD) didn't FD_CLOEXEC as expected %d != %d\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"unrecognized mode: %s\00", align 1
@CORRECT_O_ACCMODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"incorrect access mode: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @runtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @runtest(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32* @fopen(i8* %11, i8* %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = load i8*, i8** %3, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @fileno(i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sge i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i8*, i8** %4, align 8
  %27 = call i32* @strchr(i8* %26, i8 signext 101)
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @FD_CLOEXEC, align 4
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @F_GETFD, align 4
  %36 = call i32 @fcntl(i32 %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %39, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @F_GETFL, align 4
  %45 = call i32 @fcntl(i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = call i32* @strchr(i8* %46, i8 signext 43)
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %32
  %50 = load i32, i32* @O_RDWR, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 97
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @O_APPEND, align 4
  br label %58

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %60 = or i32 %50, %59
  store i32 %60, i32* %10, align 4
  br label %88

61:                                               ; preds = %32
  %62 = load i8*, i8** %4, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 114
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @O_RDONLY, align 4
  store i32 %67, i32* %10, align 4
  br label %87

68:                                               ; preds = %61
  %69 = load i8*, i8** %4, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 119
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @O_WRONLY, align 4
  store i32 %74, i32* %10, align 4
  br label %86

75:                                               ; preds = %68
  %76 = load i8*, i8** %4, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 97
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* @O_WRONLY, align 4
  %82 = load i32, i32* @O_APPEND, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %10, align 4
  br label %85

84:                                               ; preds = %75
  store i32 -1, i32* %10, align 4
  br label %85

85:                                               ; preds = %84, %80
  br label %86

86:                                               ; preds = %85, %73
  br label %87

87:                                               ; preds = %86, %66
  br label %88

88:                                               ; preds = %87, %58
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @fclose(i32* %89)
  %91 = load i32, i32* %10, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i8*, i8** %4, align 8
  %95 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %94)
  br label %108

96:                                               ; preds = %88
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @CORRECT_O_ACCMODE, align 4
  %99 = load i32, i32* @O_APPEND, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %97, %100
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load i8*, i8** %4, align 8
  %106 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %104, %96
  br label %108

108:                                              ; preds = %107, %93
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, ...) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fcntl(i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @atf_tc_fail(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

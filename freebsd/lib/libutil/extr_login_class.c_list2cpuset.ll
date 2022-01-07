; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_class.c_list2cpuset.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_class.c_list2cpuset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_SETSIZE = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Only %d cpus supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @list2cpuset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list2cpuset(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %9, align 8
  br label %11

11:                                               ; preds = %79, %59, %2
  %12 = load i8*, i8** %9, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %82

16:                                               ; preds = %11
  %17 = load i8*, i8** %9, align 8
  %18 = load i8, i8* %17, align 1
  %19 = call i64 @isdigit(i8 signext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %16
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @atoi(i8* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @CPU_SETSIZE, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  %29 = load i32, i32* @CPU_SETSIZE, align 4
  %30 = call i32 @errx(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %21
  br label %32

32:                                               ; preds = %37, %31
  %33 = load i8*, i8** %9, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @isdigit(i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %9, align 8
  br label %32

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  switch i32 %41, label %58 [
    i32 0, label %42
    i32 2, label %44
    i32 1, label %57
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %59

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %53, %44
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @CPU_SET(i32 %50, i32* %51)
  br label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %45

56:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %59

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %40, %57
  store i32 0, i32* %3, align 4
  br label %91

59:                                               ; preds = %56, %42
  br label %11

60:                                               ; preds = %16
  %61 = load i8*, i8** %9, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  switch i32 %63, label %78 [
    i32 44, label %64
    i32 45, label %73
  ]

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  switch i32 %65, label %72 [
    i32 0, label %66
    i32 1, label %67
    i32 2, label %71
  ]

66:                                               ; preds = %64
  br label %72

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @CPU_SET(i32 %68, i32* %69)
  store i32 0, i32* %6, align 4
  br label %72

71:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %91

72:                                               ; preds = %64, %67, %66
  br label %79

73:                                               ; preds = %60
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %91

77:                                               ; preds = %73
  store i32 2, i32* %6, align 4
  br label %79

78:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %91

79:                                               ; preds = %77, %72
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %9, align 8
  br label %11

82:                                               ; preds = %11
  %83 = load i32, i32* %6, align 4
  switch i32 %83, label %90 [
    i32 0, label %84
    i32 1, label %85
    i32 2, label %89
  ]

84:                                               ; preds = %82
  br label %90

85:                                               ; preds = %82
  %86 = load i32, i32* %8, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @CPU_SET(i32 %86, i32* %87)
  br label %90

89:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %91

90:                                               ; preds = %82, %85, %84
  store i32 1, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %89, %78, %76, %71, %58
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

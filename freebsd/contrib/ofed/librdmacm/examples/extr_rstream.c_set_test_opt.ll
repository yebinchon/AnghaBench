; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rstream.c_set_test_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rstream.c_set_test_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_rs = common dso_local global i64 0, align 8
@use_async = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_WAITALL = common dso_local global i32 0, align 4
@use_fork = common dso_local global i32 0, align 4
@use_rgai = common dso_local global i32 0, align 4
@verify = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"nonblock\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"resolve\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @set_test_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_test_opt(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @strlen(i8* %4)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %30

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  switch i32 %11, label %28 [
    i32 115, label %12
    i32 97, label %13
    i32 98, label %14
    i32 102, label %21
    i32 110, label %22
    i32 114, label %26
    i32 118, label %27
  ]

12:                                               ; preds = %7
  store i64 0, i64* @use_rs, align 8
  br label %29

13:                                               ; preds = %7
  store i32 1, i32* @use_async, align 4
  br label %29

14:                                               ; preds = %7
  %15 = load i32, i32* @flags, align 4
  %16 = load i32, i32* @MSG_DONTWAIT, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = load i32, i32* @MSG_WAITALL, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* @flags, align 4
  br label %29

21:                                               ; preds = %7
  store i32 1, i32* @use_fork, align 4
  store i64 0, i64* @use_rs, align 8
  br label %29

22:                                               ; preds = %7
  %23 = load i32, i32* @MSG_DONTWAIT, align 4
  %24 = load i32, i32* @flags, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* @flags, align 4
  br label %29

26:                                               ; preds = %7
  store i32 1, i32* @use_rgai, align 4
  br label %29

27:                                               ; preds = %7
  store i32 1, i32* @verify, align 4
  br label %29

28:                                               ; preds = %7
  store i32 -1, i32* %2, align 4
  br label %83

29:                                               ; preds = %27, %26, %22, %21, %14, %13, %12
  br label %82

30:                                               ; preds = %1
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @strncasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %31, i32 6)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i64 0, i64* @use_rs, align 8
  br label %81

35:                                               ; preds = %30
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @strncasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %36, i32 5)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i32 1, i32* @use_async, align 4
  br label %80

40:                                               ; preds = %35
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @strncasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %41, i32 5)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @flags, align 4
  %46 = load i32, i32* @MSG_DONTWAIT, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = load i32, i32* @MSG_WAITALL, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* @flags, align 4
  br label %79

51:                                               ; preds = %40
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @strncasecmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %52, i32 8)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @MSG_DONTWAIT, align 4
  %57 = load i32, i32* @flags, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* @flags, align 4
  br label %78

59:                                               ; preds = %51
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 @strncasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %60, i32 7)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  store i32 1, i32* @use_rgai, align 4
  br label %77

64:                                               ; preds = %59
  %65 = load i8*, i8** %3, align 8
  %66 = call i32 @strncasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %65, i32 6)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  store i32 1, i32* @verify, align 4
  br label %76

69:                                               ; preds = %64
  %70 = load i8*, i8** %3, align 8
  %71 = call i32 @strncasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %70, i32 4)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  store i32 1, i32* @use_fork, align 4
  store i64 0, i64* @use_rs, align 8
  br label %75

74:                                               ; preds = %69
  store i32 -1, i32* %2, align 4
  br label %83

75:                                               ; preds = %73
  br label %76

76:                                               ; preds = %75, %68
  br label %77

77:                                               ; preds = %76, %63
  br label %78

78:                                               ; preds = %77, %55
  br label %79

79:                                               ; preds = %78, %44
  br label %80

80:                                               ; preds = %79, %39
  br label %81

81:                                               ; preds = %80, %34
  br label %82

82:                                               ; preds = %81, %29
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %74, %28
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

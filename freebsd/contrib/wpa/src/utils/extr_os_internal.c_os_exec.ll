; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_os_internal.c_os_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_os_internal.c_os_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"fork: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"execv: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @os_exec(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [31 x i8*], align 16
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = call i64 (...) @fork()
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32, i32* @MSG_ERROR, align 4
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 @strerror(i32 %21)
  %23 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 -1, i32* %4, align 4
  br label %100

24:                                               ; preds = %3
  %25 = load i64, i64* %8, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %93

27:                                               ; preds = %24
  store i32 30, i32* %10, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @os_strdup(i8* %28)
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @os_strdup(i8* %30)
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = getelementptr inbounds [31 x i8*], [31 x i8*]* %14, i64 0, i64 0
  store i8* %32, i8** %33, align 16
  store i32 1, i32* %15, align 4
  %34 = load i8*, i8** %12, align 8
  store i8* %34, i8** %13, align 8
  br label %35

35:                                               ; preds = %76, %27
  %36 = load i32, i32* %15, align 4
  %37 = icmp slt i32 %36, 30
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i8*, i8** %13, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i8*, i8** %13, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %41, %38, %35
  %47 = phi i1 [ false, %38 ], [ false, %35 ], [ %45, %41 ]
  br i1 %47, label %48, label %77

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %54, %48
  %50 = load i8*, i8** %13, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 32
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %13, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %13, align 8
  br label %49

57:                                               ; preds = %49
  %58 = load i8*, i8** %13, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %77

63:                                               ; preds = %57
  %64 = load i8*, i8** %13, align 8
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %15, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds [31 x i8*], [31 x i8*]* %14, i64 0, i64 %67
  store i8* %64, i8** %68, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = call i8* @os_strchr(i8* %69, i8 signext 32)
  store i8* %70, i8** %13, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load i8*, i8** %13, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %13, align 8
  store i8 0, i8* %74, align 1
  br label %76

76:                                               ; preds = %73, %63
  br label %35

77:                                               ; preds = %62, %46
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [31 x i8*], [31 x i8*]* %14, i64 0, i64 %79
  store i8* null, i8** %80, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds [31 x i8*], [31 x i8*]* %14, i64 0, i64 0
  %83 = call i32 @execv(i8* %81, i8** %82)
  %84 = load i32, i32* @MSG_ERROR, align 4
  %85 = load i32, i32* @errno, align 4
  %86 = call i32 @strerror(i32 %85)
  %87 = call i32 @wpa_printf(i32 %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i8*, i8** %11, align 8
  %89 = call i32 @os_free(i8* %88)
  %90 = load i8*, i8** %12, align 8
  %91 = call i32 @os_free(i8* %90)
  %92 = call i32 @exit(i32 0) #3
  unreachable

93:                                               ; preds = %24
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @waitpid(i64 %97, i32* %9, i32 0)
  br label %99

99:                                               ; preds = %96, %93
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %19
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i64 @fork(...) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i32 @execv(i8*, i8**) #1

declare dso_local i32 @os_free(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @waitpid(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

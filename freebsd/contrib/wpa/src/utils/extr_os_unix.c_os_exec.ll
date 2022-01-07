; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_os_unix.c_os_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_os_unix.c_os_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"execv\00", align 1

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
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %94

21:                                               ; preds = %3
  %22 = load i64, i64* %8, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %87

24:                                               ; preds = %21
  store i32 30, i32* %10, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i8* @os_strdup(i8* %25)
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* @os_strdup(i8* %27)
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = getelementptr inbounds [31 x i8*], [31 x i8*]* %14, i64 0, i64 0
  store i8* %29, i8** %30, align 16
  store i32 1, i32* %15, align 4
  %31 = load i8*, i8** %12, align 8
  store i8* %31, i8** %13, align 8
  br label %32

32:                                               ; preds = %73, %24
  %33 = load i32, i32* %15, align 4
  %34 = icmp slt i32 %33, 30
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i8*, i8** %13, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i8*, i8** %13, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %38, %35, %32
  %44 = phi i1 [ false, %35 ], [ false, %32 ], [ %42, %38 ]
  br i1 %44, label %45, label %74

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %51, %45
  %47 = load i8*, i8** %13, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 32
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i8*, i8** %13, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %13, align 8
  br label %46

54:                                               ; preds = %46
  %55 = load i8*, i8** %13, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %74

60:                                               ; preds = %54
  %61 = load i8*, i8** %13, align 8
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %15, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds [31 x i8*], [31 x i8*]* %14, i64 0, i64 %64
  store i8* %61, i8** %65, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = call i8* @os_strchr(i8* %66, i8 signext 32)
  store i8* %67, i8** %13, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load i8*, i8** %13, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %13, align 8
  store i8 0, i8* %71, align 1
  br label %73

73:                                               ; preds = %70, %60
  br label %32

74:                                               ; preds = %59, %43
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [31 x i8*], [31 x i8*]* %14, i64 0, i64 %76
  store i8* null, i8** %77, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds [31 x i8*], [31 x i8*]* %14, i64 0, i64 0
  %80 = call i32 @execv(i8* %78, i8** %79)
  %81 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 @os_free(i8* %82)
  %84 = load i8*, i8** %12, align 8
  %85 = call i32 @os_free(i8* %84)
  %86 = call i32 @exit(i32 0) #3
  unreachable

87:                                               ; preds = %21
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @waitpid(i64 %91, i32* %9, i32 0)
  br label %93

93:                                               ; preds = %90, %87
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %19
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @fork(...) #1

declare dso_local i32 @perror(i8*) #1

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

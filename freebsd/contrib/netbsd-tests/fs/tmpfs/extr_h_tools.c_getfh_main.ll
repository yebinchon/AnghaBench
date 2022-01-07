; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/tmpfs/extr_h_tools.c_getfh_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/tmpfs/extr_h_tools.c_getfh_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_FAILURE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@errno = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"getfh\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getfh_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %12, i32* %3, align 4
  br label %64

13:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  store i8* null, i8** %7, align 8
  br label %14

14:                                               ; preds = %50, %13
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i64, i64* %8, align 8
  %19 = call i8* @malloc(i64 %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %25, i32* %3, align 4
  br label %64

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %14
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 (i8*, i8*, ...) @getfh(i8* %30, i8* %31, i64* %8)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %51

36:                                               ; preds = %27
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @free(i8* %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i64, i64* @errno, align 8
  %44 = load i64, i64* @E2BIG, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = call i32 @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %48, i32* %3, align 4
  br label %64

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49
  br label %14

51:                                               ; preds = %35
  %52 = load i32, i32* @STDOUT_FILENO, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @write(i32 %52, i8* %53, i64 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = call i32 @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %60, i32* %3, align 4
  br label %64

61:                                               ; preds = %51
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @free(i8* %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %58, %46, %22, %11
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @getfh(i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/gen/posix_spawn/extr_h_spawnattr.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/gen/posix_spawn/extr_h_spawnattr.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i8* }

@EXIT_SUCCESS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: sigprocmask error\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: SIGUSR not in procmask\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s: sigaction error\0A\00", align 1
@SIG_DFL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: SIGUSR1 action != SIG_DFL\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"%s: waiting for command from parent on pipe %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%s: got command %c from parent\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"%s: %d is no pipe, errno %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sigaction, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %12, i32* %7, align 4
  %13 = call i32 @sigemptyset(i32* %8)
  %14 = call i64 @sigprocmask(i32 0, i32* null, i32* %8)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = call i8* (...) @getprogname()
  %19 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @SIGUSR1, align 4
  %23 = call i32 @sigismember(i32* %8, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @stderr, align 4
  %27 = call i8* (...) @getprogname()
  %28 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i32, i32* @SIGUSR1, align 4
  %32 = call i64 @sigaction(i32 %31, i32* null, %struct.sigaction* %9)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* @stderr, align 4
  %36 = call i8* (...) @getprogname()
  %37 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %34, %30
  %40 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i64, i64* @SIG_DFL, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = icmp ne i8* %41, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32, i32* @stderr, align 4
  %47 = call i8* (...) @getprogname()
  %48 = call i32 @fprintf(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %45, %39
  %51 = load i32, i32* %4, align 4
  %52 = icmp sge i32 %51, 2
  br i1 %52, label %53, label %85

53:                                               ; preds = %50
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @atoi(i8* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp sgt i32 %58, 2
  br i1 %59, label %60, label %84

60:                                               ; preds = %53
  %61 = call i8* (...) @getprogname()
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* %61, i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @read(i32 %64, i8* %11, i32 1)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = call i8* (...) @getprogname()
  %70 = load i8, i8* %11, align 1
  %71 = sext i8 %70 to i32
  %72 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %69, i32 %71)
  br label %83

73:                                               ; preds = %60
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = call i8* (...) @getprogname()
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @errno, align 4
  %80 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %77, i32 %78, i32 %79)
  %81 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %76, %73
  br label %83

83:                                               ; preds = %82, %68
  br label %84

84:                                               ; preds = %83, %53
  br label %85

85:                                               ; preds = %84, %50
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i64 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @getprogname(...) #1

declare dso_local i32 @sigismember(i32*, i32) #1

declare dso_local i64 @sigaction(i32, i32*, %struct.sigaction*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i32, ...) #1

declare dso_local i32 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

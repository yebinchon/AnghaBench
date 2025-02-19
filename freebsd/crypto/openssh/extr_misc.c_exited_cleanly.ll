; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_exited_cleanly.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_exited_cleanly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"%s: waitpid: %s\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%s %s exited on signal %d\00", align 1
@SYSLOG_LEVEL_DEBUG1 = common dso_local global i32 0, align 4
@SYSLOG_LEVEL_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"%s %s failed, status %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exited_cleanly(i32 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %11

11:                                               ; preds = %24, %4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @waitpid(i32 %12, i32* %10, i32 0)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i64, i64* @errno, align 8
  %17 = load i64, i64* @EINTR, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* @errno, align 8
  %22 = call i8* @strerror(i64 %21)
  %23 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %22)
  store i32 -1, i32* %5, align 4
  br label %55

24:                                               ; preds = %15
  br label %11

25:                                               ; preds = %11
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @WIFSIGNALED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @WTERMSIG(i32 %32)
  %34 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %30, i8* %31, i32 %33)
  store i32 -1, i32* %5, align 4
  br label %55

35:                                               ; preds = %25
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @WEXITSTATUS(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @SYSLOG_LEVEL_DEBUG1, align 4
  br label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @SYSLOG_LEVEL_INFO, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @WEXITSTATUS(i32 %50)
  %52 = call i32 @do_log2(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %48, i8* %49, i64 %51)
  store i32 -1, i32* %5, align 4
  br label %55

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %46, %29, %19
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @error(i8*, i8*, i8*, ...) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i32 @do_log2(i32, i8*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

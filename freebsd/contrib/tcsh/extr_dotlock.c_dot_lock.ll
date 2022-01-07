; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_dotlock.c_dot_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_dotlock.c_dot_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGTTIN = common dso_local global i32 0, align 4
@SIGTTOU = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s.lock\00", align 1
@SIG_BLOCK = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dot_lock(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @MAXPATHLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = call i32 @sigemptyset(i32* %7)
  %15 = load i32, i32* @SIGHUP, align 4
  %16 = call i32 @sigaddset(i32* %7, i32 %15)
  %17 = load i32, i32* @SIGINT, align 4
  %18 = call i32 @sigaddset(i32* %7, i32 %17)
  %19 = load i32, i32* @SIGQUIT, align 4
  %20 = call i32 @sigaddset(i32* %7, i32 %19)
  %21 = load i32, i32* @SIGTERM, align 4
  %22 = call i32 @sigaddset(i32* %7, i32 %21)
  %23 = load i32, i32* @SIGTTIN, align 4
  %24 = call i32 @sigaddset(i32* %7, i32 %23)
  %25 = load i32, i32* @SIGTTOU, align 4
  %26 = call i32 @sigaddset(i32* %7, i32 %25)
  %27 = load i32, i32* @SIGTSTP, align 4
  %28 = call i32 @sigaddset(i32* %7, i32 %27)
  %29 = load i32, i32* @SIGCHLD, align 4
  %30 = call i32 @sigaddset(i32* %7, i32 %29)
  %31 = trunc i64 %11 to i32
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @snprintf(i8* %13, i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %32)
  store i32 -1, i32* %9, align 4
  br label %34

34:                                               ; preds = %63, %2
  %35 = call i32 (...) @handle_pending_signals()
  %36 = load i32, i32* @SIG_BLOCK, align 4
  %37 = call i32 @sigprocmask(i32 %36, i32* %7, i32* %8)
  %38 = call i32 @create_exclusive(i8* %13)
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @SIG_SETMASK, align 4
  %42 = call i32 @sigprocmask(i32 %41, i32* %8, i32* null)
  store i32 0, i32* %9, align 4
  br label %64

43:                                               ; preds = %34
  %44 = load i32, i32* @SIG_SETMASK, align 4
  %45 = call i32 @sigprocmask(i32 %44, i32* %8, i32* null)
  br label %46

46:                                               ; preds = %43
  %47 = load i64, i64* @errno, align 8
  %48 = load i64, i64* @EEXIST, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %64

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i64, i64* @EEXIST, align 8
  store i64 %58, i64* @errno, align 8
  br label %64

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = mul i32 %60, 1000
  %62 = call i32 @usleep(i32 %61)
  br label %63

63:                                               ; preds = %59, %51
  br label %34

64:                                               ; preds = %57, %50, %40
  %65 = call i32 (...) @handle_pending_signals()
  %66 = load i32, i32* %9, align 4
  %67 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %67)
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sigemptyset(i32*) #2

declare dso_local i32 @sigaddset(i32*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @handle_pending_signals(...) #2

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #2

declare dso_local i32 @create_exclusive(i8*) #2

declare dso_local i32 @usleep(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_popen.c_ftpd_pclose.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_popen.c_ftpd_pclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pids = common dso_local global i64* null, align 8
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@SIG_SETMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ftpd_pclose(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i64*, i64** @pids, align 8
  %10 = icmp eq i64* %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load i64*, i64** @pids, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @fileno(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %12, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11, %1
  store i32 -1, i32* %2, align 4
  br label %67

20:                                               ; preds = %11
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @fclose(i32* %21)
  %23 = call i32 @sigemptyset(i32* %7)
  %24 = load i32, i32* @SIGINT, align 4
  %25 = call i32 @sigaddset(i32* %7, i32 %24)
  %26 = load i32, i32* @SIGQUIT, align 4
  %27 = call i32 @sigaddset(i32* %7, i32 %26)
  %28 = load i32, i32* @SIGHUP, align 4
  %29 = call i32 @sigaddset(i32* %7, i32 %28)
  %30 = load i32, i32* @SIG_BLOCK, align 4
  %31 = call i32 @sigprocmask(i32 %30, i32* %7, i32* %8)
  br label %32

32:                                               ; preds = %46, %20
  %33 = load i64*, i64** @pids, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @waitpid(i64 %37, i32* %5, i32 0)
  store i64 %38, i64* %6, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i64, i64* @errno, align 8
  %42 = load i64, i64* @EINTR, align 8
  %43 = icmp eq i64 %41, %42
  br label %44

44:                                               ; preds = %40, %32
  %45 = phi i1 [ false, %32 ], [ %43, %40 ]
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  br label %32

47:                                               ; preds = %44
  %48 = load i32, i32* @SIG_SETMASK, align 4
  %49 = call i32 @sigprocmask(i32 %48, i32* %8, i32* null)
  %50 = load i64*, i64** @pids, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  store i64 0, i64* %53, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i64, i64* %6, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %2, align 4
  br label %67

59:                                               ; preds = %47
  %60 = load i32, i32* %5, align 4
  %61 = call i64 @WIFEXITED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @WEXITSTATUS(i32 %64)
  store i32 %65, i32* %2, align 4
  br label %67

66:                                               ; preds = %59
  store i32 1, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %63, %56, %19
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

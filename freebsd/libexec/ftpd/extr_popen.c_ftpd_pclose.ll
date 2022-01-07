; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_popen.c_ftpd_pclose.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_popen.c_ftpd_pclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pids = common dso_local global i64* null, align 8
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ftpd_pclose(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i64*, i64** @pids, align 8
  %9 = icmp eq i64* %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load i64*, i64** @pids, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @fileno(i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %11, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10, %1
  store i32 -1, i32* %2, align 4
  br label %66

19:                                               ; preds = %10
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @fclose(i32* %20)
  %22 = load i32, i32* @SIGINT, align 4
  %23 = call i32 @sigmask(i32 %22)
  %24 = load i32, i32* @SIGQUIT, align 4
  %25 = call i32 @sigmask(i32 %24)
  %26 = or i32 %23, %25
  %27 = load i32, i32* @SIGHUP, align 4
  %28 = call i32 @sigmask(i32 %27)
  %29 = or i32 %26, %28
  %30 = call i32 @sigblock(i32 %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %45, %19
  %32 = load i64*, i64** @pids, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @waitpid(i64 %36, i32* %6, i32 0)
  store i64 %37, i64* %7, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @EINTR, align 8
  %42 = icmp eq i64 %40, %41
  br label %43

43:                                               ; preds = %39, %31
  %44 = phi i1 [ false, %31 ], [ %42, %39 ]
  br i1 %44, label %45, label %46

45:                                               ; preds = %43
  br label %31

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @sigsetmask(i32 %47)
  %49 = load i64*, i64** @pids, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 0, i64* %52, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i64, i64* %7, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %2, align 4
  br label %66

58:                                               ; preds = %46
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @WIFEXITED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @WEXITSTATUS(i32 %63)
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %58
  store i32 1, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %62, %55, %18
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @sigblock(i32) #1

declare dso_local i32 @sigmask(i32) #1

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @sigsetmask(i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

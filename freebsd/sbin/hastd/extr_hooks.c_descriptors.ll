; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hooks.c_descriptors.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hooks.c_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PJDLOG_MODE_STD = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@_PATH_DEVNULL = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to open %s for reading\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Unable to duplicate descriptor for stdin\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Unable to open %s for writing\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Unable to duplicate descriptor for stdout\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Unable to duplicate descriptor for stderr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @descriptors() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @pjdlog_mode_get()
  %3 = load i64, i64* @PJDLOG_MODE_STD, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %13

5:                                                ; preds = %0
  %6 = load i32, i32* @STDIN_FILENO, align 4
  %7 = load i32, i32* @STDOUT_FILENO, align 4
  %8 = call i32 @MAX(i32 %6, i32 %7)
  %9 = load i32, i32* @STDERR_FILENO, align 4
  %10 = call i32 @MAX(i32 %8, i32 %9)
  %11 = add nsw i32 %10, 1
  %12 = call i32 @closefrom(i32 %11)
  br label %86

13:                                               ; preds = %0
  %14 = call i32 @closefrom(i32 0)
  %15 = load i32, i32* @_PATH_DEVNULL, align 4
  %16 = load i32, i32* @O_RDONLY, align 4
  %17 = call i32 @open(i32 %15, i32 %16)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32, i32* @LOG_WARNING, align 4
  %22 = load i32, i32* @_PATH_DEVNULL, align 4
  %23 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %40

24:                                               ; preds = %13
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @STDIN_FILENO, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* @STDIN_FILENO, align 4
  %31 = call i32 @dup2(i32 %29, i32 %30)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @LOG_WARNING, align 4
  %35 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @close(i32 %37)
  br label %39

39:                                               ; preds = %36, %24
  br label %40

40:                                               ; preds = %39, %20
  %41 = load i32, i32* @_PATH_DEVNULL, align 4
  %42 = load i32, i32* @O_WRONLY, align 4
  %43 = call i32 @open(i32 %41, i32 %42)
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* %1, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* @LOG_WARNING, align 4
  %48 = load i32, i32* @_PATH_DEVNULL, align 4
  %49 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %86

50:                                               ; preds = %40
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* @STDOUT_FILENO, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* @STDOUT_FILENO, align 4
  %57 = call i32 @dup2(i32 %55, i32 %56)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @LOG_WARNING, align 4
  %61 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %54, %50
  %63 = load i32, i32* %1, align 4
  %64 = load i32, i32* @STDERR_FILENO, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i32, i32* %1, align 4
  %68 = load i32, i32* @STDERR_FILENO, align 4
  %69 = call i32 @dup2(i32 %67, i32 %68)
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @LOG_WARNING, align 4
  %73 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %72, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %66, %62
  %75 = load i32, i32* %1, align 4
  %76 = load i32, i32* @STDOUT_FILENO, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i32, i32* %1, align 4
  %80 = load i32, i32* @STDERR_FILENO, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* %1, align 4
  %84 = call i32 @close(i32 %83)
  br label %85

85:                                               ; preds = %82, %78, %74
  br label %86

86:                                               ; preds = %5, %85, %46
  ret void
}

declare dso_local i64 @pjdlog_mode_get(...) #1

declare dso_local i32 @closefrom(i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @pjdlog_errno(i32, i8*, ...) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
